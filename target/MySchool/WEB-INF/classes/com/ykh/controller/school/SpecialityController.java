package com.ykh.controller.school;

import com.ykh.pojo.speciality.ZhuanYe;
import com.ykh.service.schoolService.speciality.SpecialityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
public class SpecialityController {
    @Autowired
    private SpecialityService specialityService;

    @ResponseBody
    @RequestMapping(value = "/speciality/xuelei",method = RequestMethod.POST)
    public String getXueLei(){
        return specialityService.findAllXueLei();
    }

    @ResponseBody
    @RequestMapping(value = "/speciality/xilei",method = RequestMethod.POST)
    public String getXiLei(HttpServletRequest request){
        //点击学类时，会传学类id作为参数
        int xlid = Integer.parseInt(request.getParameter("key"));
        return specialityService.findAllXiById(xlid);
    }

    @ResponseBody
    @RequestMapping(value = "speciality/zhuanye", method=RequestMethod.POST)
    public String getZhuanYe(HttpServletRequest request){
        int xlid = Integer.parseInt(request.getParameter("key"));
        return specialityService.findAllZhuanYeById(xlid);
    }
    @RequestMapping(value = "speciality/detail")
    public String zhuanYeDetail(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
        String name = request.getParameter("specialityName");
        System.out.println(name);
        ZhuanYe zhuanYe = specialityService.findZhuanYeByName(name);
        System.out.println(zhuanYe);
        model.addAttribute("zhuanye",zhuanYe);
        return "school/specialityDetail";
    }
    @RequestMapping(value = "/speciality/school")
    public String findSchoolBySpeId(HttpServletRequest request,Model model) throws IOException {
        Integer id =Integer.parseInt(request.getParameter("specialityId"));
        List<String> schools = specialityService.findSchoolBySpeId(id);
        System.out.println(schools);
        model.addAttribute("action","schoolList");
        model.addAttribute("schools",schools);
        return "school/specialityList";
    }
    //专业列表
    @RequestMapping(value = "/speciality/list")
    public String findSpeList(Model model){
        model.addAttribute("action","speList");
        return "school/specialityList";
    }
}
