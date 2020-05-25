
import com.ykh.DTO.ArticleList;
import com.ykh.service.communityService.ArticleService;
import com.ykh.service.schoolService.luque.LuQueSJService;
import com.ykh.service.schoolService.speciality.SpecialityService;
import junit.framework.TestCase;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class MvnTest extends TestCase {
    public void testMaven(){
        List list1 = new ArrayList();
        List list2= new ArrayList();
    }
    public void testMavenError(){
        int a=0;
        System.out.println(a++);
    }
    @Test
    public void testHttpClient() throws IOException {
        ApplicationContext ioc = new ClassPathXmlApplicationContext("spring.xml");
        LuQueSJService bean = ioc.getBean(LuQueSJService.class);
        System.out.println(bean);

    }
    @Test
    public void testMyBtis(){
        ApplicationContext ioc = new ClassPathXmlApplicationContext("spring-shiro.xml");
        Object shiroFilter = ioc.getBean("shiroFilter");
        System.out.println(shiroFilter);

    }
    @Test
    public void testArt(){
        ApplicationContext ioc = new ClassPathXmlApplicationContext("spring.xml");
        ArticleService bean = ioc.getBean(ArticleService.class);
        String type=null;
        List<ArticleList> lists = bean.getArtList(type, "西南石油大学");
        System.out.println(lists);
    }

}
