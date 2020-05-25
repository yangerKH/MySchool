package com.ykh.service.schoolService.luque;

import com.ykh.util.HttpCilentUtil;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Map;

@Service
public class LuQueSJService {
    @Autowired
    HttpCilentUtil httpCilentUtil;
    public Map<String,String> gethtml(String url) throws IOException {
        url = "https://gaokao.eol.cn/"+url;
        String html = httpCilentUtil.doGet(url);
        Document document = Jsoup.parse(html);
        Map<String,String> result = new Hashtable<>();
        String title = document.select("div.title").first().toString();
        result.put("title",title);
        String content = document.select("div.article").first().toString();
        result.put("content",content);
        return result;
    }
}
