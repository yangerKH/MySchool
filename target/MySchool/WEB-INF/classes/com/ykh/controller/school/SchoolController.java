package com.ykh.controller.school;


import com.ykh.service.schoolService.school.SchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@Controller
public class SchoolController {
    @Autowired
    SchoolService schoolService;
    @RequestMapping(value = "/school/{type}")
    public String findSchoolList(@PathVariable("type") String type,
                                 Model model) throws Exception {
        model.addAttribute("type",type);
        if(type.equals("985")||type.equals("211")){
            List<SchoolService.School> schoolsByType = schoolService.findSchoolByType(type);
            model.addAttribute("schools",schoolsByType);
            if(type.equals("985")) model.addAttribute("jianjie","985工程是指为创建世界一流大学和高水平大学而实施的工程，截至2013年年末，“985工程”共有39所高校，教育部表示“985工程”的规模已经稳定，将不会再新增高校，引入动态竞争机制，在一流的行业特色型大学中遴选实施“985工程优势学科创新平台”项目以重点打造世界一流学科群。985高校共有");
            else  model.addAttribute("jianjie","211工程，是为了面向21世纪，迎接世界新技术革命的挑战，中国政府集中中央、地方各方面的力量，重点建设100所左右的高等学校和一批重点学科、专业使其达到世界一流大学的水平的建设工程。全国入选“211工程”高校一共有");
        }else if(type.equals("syl")){
            List<SchoolService.School> sylA= schoolService.findSchoolByType("sylA");
            List<SchoolService.School> sylB= schoolService.findSchoolByType("sylB");
            List<SchoolService.School> sylSub= schoolService.findSchoolByType("sylSub");
            System.out.println("双一流A"+sylA.toString());
            model.addAttribute("sylA",sylA);
            model.addAttribute("sylB",sylB);
            model.addAttribute("sylSub",sylSub);
            model.addAttribute("type","双一流");
        }else{//其他类型的院校
            List<SchoolService.School> school = schoolService.findSchoolByType(type);
            model.addAttribute("schools",school);
             type = school.get(0).type.split("：")[1];
            model.addAttribute("type",type);
        }
        return "school/schoolType";
    }
    @RequestMapping("schoolDetail/{schoolName}")
    public String findSchoolDetail(@PathVariable("schoolName") String schoolName,Model model) throws IOException {
        HashMap<String,Object> schoolDetail = schoolService.getSchoolInfor(schoolName);
        model.addAttribute("produce", schoolDetail.get("produce"));
        System.out.println(schoolDetail.get("basicLeft"));
        model.addAttribute("basicLeft",schoolDetail.get("basicLeft"));
        System.out.println(schoolDetail.get("basicRight"));
        model.addAttribute("basicRight",schoolDetail.get("basicRight"));
        model.addAttribute("url",schoolDetail.get("url"));
        model.addAttribute("icon",schoolDetail.get("icon"));
        //得到学校开设专业的html
        model.addAttribute("speciality",schoolService.getSpeBySchool(schoolName));
        return "school/schoolDetail";
    }
    @RequestMapping("/findschool")
    public String findSchool(HttpServletRequest request){
        String schoolname = request.getParameter("search");
        String url = "/schoolDetail/"+schoolname;
        return "forward:"+url;
    }
    @RequestMapping("/schoool/region/{code}")
    public String schoolListbyRegion(@PathVariable("code") String code,Model model) throws IOException {
        List<SchoolService.School> schoolListByRegion = schoolService.getSchoolListByRegion(code);
        System.out.println(schoolListByRegion);
        model.addAttribute("schools",schoolListByRegion);
        String type=schoolListByRegion.get(0).getRegion().split("：")[1];
        model.addAttribute("type",type);
        return "school/schoolRegion";
    }
}
