package ru.veusdas.controller;

import com.vk.api.sdk.client.TransportClient;
import com.vk.api.sdk.client.VkApiClient;
import com.vk.api.sdk.client.actors.UserActor;
import com.vk.api.sdk.exceptions.ApiException;
import com.vk.api.sdk.exceptions.ClientException;
import com.vk.api.sdk.httpclient.HttpTransportClient;
import com.vk.api.sdk.objects.UserAuthResponse;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.config.CookieSpecs;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.veusdas.Model.User;
import ru.veusdas.Service.SecurityService;
import ru.veusdas.Service.UserService;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

@Controller
public class SocialController {

    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    private String url = "http://oauth.vk.com/authorize?" +
            "client_id=5802349" +
            "&response_type=code" +
            "&redirect_uri=https://publicmarket.herokuapp.com/callback" +
            "&scope=friends,photos,offline,groups,email" +
            "&expires=0";

    @RequestMapping("/")
    public String renderMain() {
        return "main/index";
    }

    @RequestMapping("/connectVk")
    public String connect() {
        return "redirect:" + url;
    }

    @RequestMapping("/callback")
    public String callback(@RequestParam("code") String code) throws ClientException, ApiException, IOException {
        System.out.println(code);
        TransportClient transportClient = HttpTransportClient.getInstance();
        VkApiClient vk = new VkApiClient(transportClient);
        UserAuthResponse authResponse = vk.oauth()
                .userAuthorizationCodeFlow(5802349, "nslKcULMS0jcOY0ncPke", "https://publicmarket.herokuapp.com/callback", code)
                .execute();

        UserActor actor = new UserActor(authResponse.getUserId(), authResponse.getAccessToken());
        System.out.println(actor);
        String url = "https://api.vk.com/method/users.get.json?user_ids=" + actor.getId() + "&fields=photo_max_orig&v=5.62";

        HttpClient client = HttpClients.custom()
                .setDefaultRequestConfig(RequestConfig.custom()
                        .setCookieSpec(CookieSpecs.STANDARD).build())
                .build();
        HttpGet request = new HttpGet(url);

        HttpResponse response = client.execute(request);
        BufferedReader rd = new BufferedReader(
                new InputStreamReader(response.getEntity().getContent()));

        StringBuffer result = new StringBuffer();
        String line = "";
        while ((line = rd.readLine()) != null) {
            result.append(line);
        }
        String first_name = result.substring(result.indexOf("first_name\"") + 13,result.indexOf(",\"last_name") - 1);
        String last_name = result.substring(result.indexOf("last_name\"") + 12,result.indexOf(",\"photo") - 1);
        String photo = result.substring(result.indexOf("photo_max_orig\"") + 17,result.indexOf("}") - 1).replace("\\","");

        User already_have_account = userService.findByUsername(actor.getId().toString());
        if (already_have_account != null) {
            securityService.autologin(already_have_account.getUsername(),already_have_account.getUsername());
            return "redirect:/";
        }

        User user = new User();
        user.setPhoto(photo);
        user.setVk("vk.com/id" + actor.getId());
        user.setName(first_name + " " + last_name);
        user.setUsername(actor.getId().toString());
        user.setPassword(actor.getId().toString());

        userService.save(user);

        securityService.autologin(user.getUsername(), user.getPassword());

        return "redirect:/";
    }

}
