package com.ykh.service.schoolService.speciality;

import com.ykh.mapper.speciality.SpecialityMapper;
import com.ykh.pojo.speciality.XiLei;
import com.ykh.pojo.speciality.XueLei;
import com.ykh.pojo.speciality.ZhuanYe;
import com.ykh.util.HttpCilentUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Service
public class SpecialityService {
    @Autowired
    SpecialityMapper specialityMapper;
    @Autowired
    HttpCilentUtil httpCilentUtil;
    public SpecialityMapper getSpecialityMapper() {
        return specialityMapper;
    }

    public void setSpecialityMapper(SpecialityMapper specialityMapper) {
        this.specialityMapper = specialityMapper;
    }

    public String findAllXueLei(){
        List<XueLei> xueleis=specialityMapper.findAllXueLei();
        //将得到的学科封装成html片段。
        //每个学科都被li标签包围，例：<li id='105001'  >哲学<i class="iconfont">&#xe6a2;</i></li>
        StringBuffer result=new StringBuffer();
        for (XueLei xuelei : xueleis) {
            result.append("<li id='"+xuelei.getId()+"'>"+xuelei.getName()+"<i class=\"iconfont\">&#xe6a2;</i></li>\n");
        }
        return new String(result);
    }
    public String findAllXiById(Integer id){
        List<XiLei> xileis= specialityMapper.findAllXiLeiById(id);
        StringBuffer result = new StringBuffer();
        for (XiLei xilei : xileis) {
            result.append("<li id='"+xilei.getId()+"'>"+xilei.getName()+"<i class=\"iconfont\">&#xe6a2;</i></li>\n");
        }
        return new String(result);
    }
    public String findAllZhuanYeById(Integer id){
        List<ZhuanYe>zhuanYes= specialityMapper.findAllZhuanYeById(id);
        StringBuffer result = new StringBuffer();
        result.append("<table class=\"ch-table\">\n" +
                "    <tr>\n" +
                "        <th>专业名称</th>\n" +
                "        <th width=\"120\">专业代码</th>\n" +
                "        <th width=\"120\">开设院校</th>\n" +
                "        <th width=\"120\">专业主页</th>\n" +
                "    </tr>");
        for (ZhuanYe zhuanYe : zhuanYes) {
            result.append("<tr>\n" +
                    "            <td><a href=\"/speciality/detail?specialityName="+zhuanYe.getName()+"\" target=\"_blank\">"+zhuanYe.getName()+"</a></td>\n" +
                    "            <td>"+zhuanYe.getCode()+"</td>\n" +
                    "            <td><a href=\"/speciality/school?specialityId="+zhuanYe.getId()+"\" target=\"_blank\">查看</a></td>\n" +
                    "            <td><a href=\"/speciality/detail?specialityName="+zhuanYe.getName()+"\" target=\"_blank\">查看</a></td>\n" +
                    "        </tr>");
        }
        result.append("</table>");
        return new String(result);
    }

    //根据专业名找到专业
    public ZhuanYe findZhuanYeByName(String name){
        //对专业名处理
        int end=0;
        if((end=name.indexOf("（"))!=-1){
            name=name.substring(0,end);
        }
        return specialityMapper.findZhuanYeByName(name);
    }

    //根据专业id找到开设专业的院校,利用爬虫
    public List<String> findSchoolBySpeId(Integer id) throws IOException {
        List<String> result = new ArrayList<>();
        String url = "https://gaokao.chsi.com.cn/zyk/zybk/schools.action?specialityId="+id;
        String html = httpCilentUtil.doGet(url);
        //对数据处理
        Document document = Jsoup.parse(html);
        Elements trs = document.select("tr");
        for (Element tr : trs) {
            if(tr.child(0).is("td")){
                result.add(tr.child(0).text());
                result.add(tr.child(3).text());
            }
        }
        return result;
    }

}
