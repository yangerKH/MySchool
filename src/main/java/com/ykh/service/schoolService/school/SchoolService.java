package com.ykh.service.schoolService.school;
import com.ykh.mapper.school.SchoolMapper;
import com.ykh.util.HttpCilentUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

@Service
//查找学校
public class SchoolService {
    @Autowired
    HttpCilentUtil httpCilentUtil;
    @Autowired
    SchoolMapper schoolMapper;
    //学校列表，用来存放爬取到的数据，避免重复爬取
    private static HashMap<String,List<School>> schoolList=new HashMap<>();
    //学校类型和爬虫的url地址映射
    private static HashMap<String ,String> schoolurl;
    //非985,211的一流学科
    private static List<School> sylSchool = new ArrayList<>();
     {
        sylSchool.add(new School("北京协和医院","生物学、生物医学工程、临床医学、药学","北京"));
        sylSchool.add(new School("首都师范大学","数学","北京"));
        sylSchool.add(new School("外交学院","政治(自定)","北京"));
        sylSchool.add(new School("中国人民公安大学","公安学","北京"));
        sylSchool.add(new School("中央美术学院","美术学、设计学","北京"));
        sylSchool.add(new School("中央戏剧学院","戏剧与影视学","北京"));
        sylSchool.add(new School("中国科学院大学","化学、材料科学与工程","北京"));
        sylSchool.add(new School("中国音学院","音乐与舞蹈学(自定)","北京"));
        sylSchool.add(new School("南京中医药大学","中药学","南京"));
        sylSchool.add(new School("南京林业大学","林业工程","南京"));
        sylSchool.add(new School("南京信息工程大学","大气科学","南京"));
        sylSchool.add(new School("南京邮电大学","电子科学与技术","南京"));
        sylSchool.add(new School("上海海洋大学","水产","上海"));
        sylSchool.add(new School("上海中医药大学","中医学、中药学","上海"));
        sylSchool.add(new School("上海体育学院","体育学","上海"));
        sylSchool.add(new School("上海音乐学院","音乐与舞蹈学","上海"));
        sylSchool.add(new School("成都中医药大学","中药学","四川"));
        sylSchool.add(new School("成都理工大学","地址学","四川"));
        sylSchool.add(new School("西南石油大学","石油与天然气工程","四川"));
        sylSchool.add(new School("天津中医药大学","中药学","天津"));
        sylSchool.add(new School("天津工业大学","纺织科学与工程","天津"));
        sylSchool.add(new School("宁波大学","力学","浙江"));
        sylSchool.add(new School("中国美术学院","美术学","浙江"));
        sylSchool.add(new School("广州中医哟大学","中医学","广州"));
        sylSchool.add(new School("河南大学","生物学","河南"));
    }

    public SchoolService() {
         schoolurl= new HashMap<>();
         schoolurl.put("syl","syl");
         schoolurl.put("yishu","c11");
         schoolurl.put("zhengfa","c12");
         schoolurl.put("caijing","c9");
         schoolurl.put("yixue","c7");
         schoolurl.put("minzu","c5");
         schoolurl.put("tiyu","c10");
    }

    public class School{
        //学校名
        public String uniName;
        //学校专业
        public String subject;
        //所在地区
        public String region;
        //所属部门
        public String belongto;
        //院校特色
        public String feature;
        //院校类型
        public String type;
        //高校性质
        public String attribute;
        //学校官网
        public String url;
        //学校代码
        public Integer code;
        //学校图标
        public String icon;

        public String getIcon() {
            return icon;
        }

        public void setIcon(String icon) {
            this.icon = icon;
        }



        public String getUrl() {
            return url;
        }

        public void setUrl(String url) {
            this.url = url;
        }
        public School(){}
        public School(String uniName, String subject, String region, String belongto, String feature, String type, String attribute,Integer code) {
            this.uniName = uniName;
            this.subject = subject;
            this.region = region;
            this.belongto = belongto;
            this.feature = feature;
            this.type = type;
            this.attribute = attribute;
            this.code=code;
        }

        public Integer getCode() {
            return code;
        }

        public void setCode(Integer code) {
            this.code = code;
        }

        @Override
        public String toString() {
            return "School{" +
                    "uniName='" + uniName + '\'' +
                    ", subject='" + subject + '\'' +
                    ", region='" + region + '\'' +
                    ", belongto='" + belongto + '\'' +
                    ", feature='" + feature + '\'' +
                    ", type='" + type + '\'' +
                    ", attribute='" + attribute + '\'' +
                    '}';
        }

        public String getBelongto() {
            return belongto;
        }

        public void setBelongto(String belongto) {
            this.belongto = belongto;
        }

        public String getFeature() {
            return feature;
        }

        public void setFeature(String feature) {
            this.feature = feature;
        }

        public String getType() {
            return type;
        }

        public void setType(String type) {
            this.type = type;
        }

        public String getAttribute() {
            return attribute;
        }

        public void setAttribute(String attribute) {
            this.attribute = attribute;
        }

        public String getUniName() {
            return uniName;
        }

        public void setUniName(String uniName) {
            this.uniName = uniName;
        }

        public String getSubject() {
            return subject;
        }

        public void setSubject(String subject) {
            this.subject = subject;
        }

        public String getRegion() {
            return region;
        }

        public void setRegion(String region) {
            this.region = region;
        }

        public School(String uniName, String subject, String region){
            this.uniName=uniName;
            this.region=region;
            this.subject=subject;
        }
    }
    //根据类型来获取学校类型，这里主要是获取985,211，双一流。
    public List<School> findSchoolByType(String type) throws IOException {
         String url="";
         String html="";
        List<School> result=null;
        //如果缓存中的值为空，则需要爬虫爬取
        if((result=schoolList.get(type))!=null) return result;
        //如果缓存中没有，则需要这一步来爬取
        if(type.equals("985")||type.equals("211")){
             url="https://daxue.eol.cn/"+type+".shtml";
             html = httpCilentUtil.doGet(url);
           result = detailNineOrTwo(html);
            schoolList.put(type,result);
            return result;
        }else if(type.contains("syl")){//获取双一流建设院校
            //先判断缓存，没有的话就需要去取一次
            if(schoolList.get("985")==null||schoolList.get("211")==null){
                schoolList.put("985",findSchoolByType("985"));
                schoolList.put("211",findSchoolByType("211"));
            }
             url="https://daxue.eol.cn/"+schoolurl.get(type)+".shtml";
             html = httpCilentUtil.doGet(url);
            //处理双一流大学和学科
            detailSyl();
            result=schoolList.get(type);
        }else{
            url="http://college.gaokao.com/schlist/"+schoolurl.get(type);
            //System.out.println("请求的url为："+url);
            html = httpCilentUtil.doGet(url);
            result = detailschool(html);
        }
        return result;

    }
    //处理985,211类的大学的数据
    private List<School> detailNineOrTwo(String html){
        Document document = Jsoup.parse(html);
        Elements elements = document.select("tbody > tr");
        List<School> schools=new ArrayList<>();
        for (Element element : elements) {
            String[] s = element.text().split(" ");
            String region="";
            if(s.length>4){
                schools.add(new School(s[2],s[4],s[0]));
                region=s[0];
            }else if(s.length>3){
                schools.add(new School(s[1],s[3],s[0]));
                region=s[0];
            }else{
                schools.add(new School(s[0],s[2],region));
            }
        }
        return schools;
    }
    //将双一流学校进行分类，处理原集合中的985,211，通过操作集合的方式重新得到学校集合
    //forexample 985中除了三所学校都是双一流A，三所985加三所211得到双一流B，985+211+几所双非得到一流学科
    //将原来的集合处理后就能得到新的学校分类
    private void detailSyl(){
        List<School> schools985 = schoolList.get("985");
        List<School> schools211 = schoolList.get("211");
        //双一流A
        List<School> schoolsSylA = new ArrayList<>();
        //双一流B
        List<School> schoolsSylB = new ArrayList<>();
        //985中的非双一流A
        String[] special= new String[]{"东北大学", "西北农林科技大学", "湖南大学"};
            for (School school : schools985) {
                String uniName=school.getUniName();
                if(!Arrays.asList(special).contains(uniName)){
                    schoolsSylA.add(school);
                }else{
                    schoolsSylB.add(school);
                }
            }
            schoolList.put("sylA",schoolsSylA);
        //一流学科
        for (School school : schools211) {
            //将几所特殊的211放到双一流B
            String name= school.getUniName();
            if("云南大学".equals(name)||"郑州大学".equals(name)||"新疆大学".equals(name)){
                schoolsSylB.add(school);
            }
            sylSchool.add(school);
        }
        schoolList.put("sylB",schoolsSylB);
        schoolList.put("sylSub",sylSchool);

     }

     //处理其他类型的高校数据
    private List<School> detailschool(String html){
         List<School> result = new ArrayList<>();
        Document document = Jsoup.parse(html);
        Elements elements = document.select("div.scores_List > dl");
        int index=0;
        List<String> icon = getSchoolIcon(html);
        for (Element element : elements) {
            School school = new School();
            Elements strong = element.select("strong");
            school.setUniName(strong.first().attr("title"));
            String text = element.text();
            String[] s = text.split(" ");
            //中国政法大学 +高校对比 进入主页 高校所在地：北京 院校特色：211 高校类型：政法 高校隶属：教育部 高校性质：本科 学校网址：www.cupl.edu.cn
            school.setRegion(s[3]);
            school.setFeature(s[4]);
            school.setType(s[5]);
            school.setAttribute(s[7]);
            school.setBelongto(s[6]);
            school.setUrl(s[8]);
            school.setIcon(icon.get(index++));
            result.add(school);
        }
        return result;
    }

    //处理学校列表中的图标问题
    private List<String>getSchoolIcon(String html){
        List<String> result = new ArrayList<>();
        Document document = Jsoup.parse(html);
        Elements elements = document.select("dt>a>img");
        for (Element element : elements) {
            result.add(element.attr("src"));
        }
        return result;
    }

    //按照要求，需要统计各个省中相应大学的数量
    public List<Integer> schoolNumByRegion(){
        return null;
    }

    //获取学校的信息
    public HashMap<String,Object> getSchoolInfor(String schoolName) throws IOException {
         HashMap<String,Object> result = new HashMap<>();
         Document document = schoolDetailDocument(schoolName);
         //学校简介
        result.put("produce",schoolDetailProduce(document));
        List<String> schoolBasicInfor = schoolBasicInfor(schoolName);
        //基本信息的左侧
        result.put("basicLeft",getBasicInfoLeft(schoolBasicInfor));
        //基本信息右侧
        result.put("basicRight",getBasicInfoRight(schoolBasicInfor));
        //url
        result.put("url",getUrl(document,schoolName));
        //icon
        result.put("icon",getIcon(document));
        return result;
    }

    //获取学校某个的简介
    private String schoolDetailProduce(Document document) throws IOException {
         Elements elements = document.select("div.lemma-summary");
         StringBuffer sb = new StringBuffer();
        for (Element element : elements) {
            sb.append(element.text());
        }
        return new String(sb);
    }
    //获取学校信息

    //学校详情所需要爬取的Document
    private Document schoolDetailDocument(String schoolName) throws IOException {
        String url = "https://baike.baidu.com/item/"+schoolName;
        String html = httpCilentUtil.doGet(url);
        return Jsoup.parse(html);
    }
    //获取学校的详细信息,以“属性，值”的方式展现
    private List<String> schoolBasicInfor(String schoolName) throws IOException {
        Document document =schoolDetailDocument(schoolName);
        String resultHtml = document.select("div.basic-info>dl").html();
        Document resultDocument = Jsoup.parse(resultHtml);
        Elements dts = resultDocument.select("dt");
        Elements dds = resultDocument.select("dd");
        List<String> result = new ArrayList<>();
        int len = dts.size();
        String title;
        String content;
        for(int i=0;i<len;i++){
            title = dts.get(i).text();
            content = dds.get(i).text();
            if(content.contains("展开")){
                int end = content.indexOf("展开");
                content=content.substring(0,end);
                i++;
            }
            result.add(title+">"+content);
        }
        return result;

     }
     //对数据处理,分别得到基础数据的左侧
    private List<String> getBasicInfoLeft(List<String> schoolDetailInfor){
         int end = schoolDetailInfor.size()/2;
         List<String> result = new ArrayList<>();
         for(int i=0;i<=end;i++){
             result.add(schoolDetailInfor.get(i));
         }
         return result;

    }
    //对数据处理,分别得到基础数据的右侧
    private List<String> getBasicInfoRight(List<String> schoolDetailInfor){
        int start = schoolDetailInfor.size()/2+1;
        List<String> result = new ArrayList<>();
        for(int i=start;i<schoolDetailInfor.size();i++){
            result.add(schoolDetailInfor.get(i));
        }
        return result;
    }
    //对数据处理,分别得到基础数据的url
    private String getUrl(Document document,String schoolName){
        Elements elements = document.select("div.dl-baseinfo");
        if(elements==null||elements.size()==0)
           return "https://www.baidu.com/s?wd="+schoolName;
        Element dl = elements.get(1).select("dl").last();
        Elements a = dl.select("dd>a");
        return a.attr("href");
    }
    //对数据处理,分别得到基础数据的icon
    private String getIcon(Document document){
        Elements elements = document.select("div.summary-pic>a>img");
        return  elements.first().attr("src");
    }
    //根据学校名得到关于学校专业的html
    public String getSpeBySchool(String name) throws IOException {
        int schoolId = schoolMapper.findIdByName(name);
        String url ="https://www.51ruxue.cn/kszy-"+schoolId+".html";
        String content = httpCilentUtil.doGet(url);
        Document document = Jsoup.parse(content);
        String html = document.select("div.yuanxiaoneirong").html();
        Document resultDocument = Jsoup.parse(html);
        Elements div = resultDocument.select("div");
        int len = div.size();
        //去除专业评价
        div.remove(len-1);
        div.remove(len-2);
        //去除a标签
        div.select("a").remove();
        //处理li标签中的内容
        Elements lis = div.select("li");
        for (Element li : lis) {
            String liText = li.text();
            if(liText.contains("（、、）")){
                liText=liText.substring(0,liText.length()-4);
            }
            li.text("");
            li.append("<a href="+"/speciality/detail?specialityName="+liText+">"+liText+"</a>");
        }
        StringBuffer sb = new StringBuffer();
        for (Element element : div) {
            sb.append(element.toString());
        }
        return new String(sb);
    }
    //按照地区得到学校列表的html
    public List<School> getSchoolListByRegion(String regionCode) throws IOException {
         String url = "http://college.gaokao.com/schlist/"+regionCode;
        String html = httpCilentUtil.doGet(url);
        List<School> schools = detailschool(html);
        return schools;
    }
}

