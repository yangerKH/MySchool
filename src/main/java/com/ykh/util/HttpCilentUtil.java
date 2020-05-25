package com.ykh.util;

import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Component;

import java.io.IOException;
@Component
public class HttpCilentUtil {
    //
    private PoolingHttpClientConnectionManager pcm;
    public  HttpCilentUtil(){
        this.pcm=new PoolingHttpClientConnectionManager();
        this.pcm.setMaxTotal(100);
    }
    //
    public String doGet(String url) throws IOException {
        //create httpClient instance
        CloseableHttpClient httpClient = HttpClients.custom().setConnectionManager(this.pcm).build();
        //create request instance
        HttpGet httpGet = new HttpGet(url);
        httpGet.setConfig(this.getConfig());
        CloseableHttpResponse response =null;
        String html="";
        //get request
        response= httpClient.execute(httpGet);
        if(response.getStatusLine().getStatusCode()==200) {
            if (response.getEntity() != null) {
                html = EntityUtils.toString(response.getEntity(), "utf-8");
            }
        }
        if(response!=null) response.close();
        return html;
    }
    private RequestConfig getConfig(){
       return RequestConfig.custom()
                .setConnectTimeout(1000)
                .setConnectionRequestTimeout(500)
                .setSocketTimeout(10000)
                .build();
    }
}
