package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.veusdas.Model.Public;
import ru.veusdas.Service.ServiceImp.PublicServiceImpl;
import ru.veusdas.Service.ServiceImp.UserServiceImpl;
import ru.veusdas.Utils.HTMLParser;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class PublicController {

    @Autowired
    private PublicServiceImpl publicService;

    @Autowired
    private UserServiceImpl userServiceImpl;

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @PostMapping("/addPublic")
    public String addPublic(Authentication authentication,
                            String name,
                            String avatar,
                            String subscribers,
                            Integer sub,
                            String stat,
                            String link,
                            Integer theme,
                            Integer socNetwork,
                            Integer cost,
                            Integer income,
                            Integer contentType,
                            Integer creator,
                            Integer send,
                            String description,
                            String code) throws IOException {
        String s = name;
        if (s.contains("<") && s.contains(">")){
            s = s.replace("<", "&lt");
            s = s.replace(">", "&gt");
            name = s;
        }
        s = avatar;
        if (s.contains("<") && s.contains(">")){
            s = s.replace("<", "&lt");
            s = s.replace(">", "&gt");
            avatar = s;
        }
        s = stat;
        if (s.contains("<") && s.contains(">")){
            s = s.replace("<", "&lt");
            s = s.replace(">", "&gt");
            stat = s;
        }
        s = link;
        if (s.contains("<") && s.contains(">")){
            s = s.replace("<", "&lt");
            s = s.replace(">", "&gt");
            link = s;
        }
        s = description;
        if (s.contains("<") && s.contains(">")){
            s = s.replace("<", "&lt");
            s = s.replace(">", "&gt");
            description = s;
        }
        s = code;
        if (s.contains("<") && s.contains(">")){
            s = s.replace("<", "&lt");
            s = s.replace(">", "&gt");
            code = s;
        }


        Public pub = new Public();
        if (avatar == null || avatar.isEmpty()) {
            switch (socNetwork){
                case 0: {
                    pub.setAvatar("https://avatanplus.com/files/resources/mid/57d993e5eb5e515729e9ba4c.png");
                    break;
                }
                case 1: {
                    pub.setAvatar("http://st.mycdn.me/res/i/ok_logo.png");
                    break;
                }
                case 2: {
                    pub.setAvatar("http://centerlyne.com/wp-content/uploads/2016/07/logo-facebook.png");
                    break;
                }
                case 3: {
                    pub.setAvatar("https://lh3.googleusercontent.com/aYbdIM1abwyVSUZLDKoE0CDZGRhlkpsaPOg9tNnBktUQYsXflwknnOn2Ge1Yr7rImGk=w300");
                    break;
                }
            }
        }else pub.setAvatar(avatar);
        pub.setName(name.trim());
        pub.setStat_link(stat);
        pub.setLink(link);
        pub.setTheme(theme);
        pub.setSocNetwork(socNetwork);
        if (socNetwork >= 2) {
            if (sub >= 0) {
                pub.setSubscribers(Long.valueOf(sub));
            }
        }else {
            pub.setSubscribers(Long.valueOf(subscribers));
        }
        pub.setCost(Long.valueOf(cost));
        pub.setIncome(income);
        pub.setContent(contentType);
        pub.setCreationDate(new Date());
        pub.setCreatorIsLive(creator);
        pub.setTransfer(send);
        pub.setDescription(description);
        HTMLParser.writeFile(link);
        pub.setVerified(HTMLParser.verify(code));
        pub.setViews(0);

        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        pub.setAdmin(userServiceImpl.findByUsername(currentUser.getUsername()).getId().intValue());

        publicService.save(pub);

        Public _pub = publicService.findByLink(link);

        String href = "";
        switch (_pub.getSocNetwork()){
            case 0: {
                href = "localhost:8091/vk/" + pub.getId();
                break;
            }
            case 1: {
                href = "redirect:/ok/" + pub.getId();
                break;
            }
            case 2: {
                href = "redirect:/fb/" + pub.getId();
                break;
            }
            case 3: {
                href = "redirect:/inst/" + pub.getId();
                break;
            }
        }

        return href;
    }


    @RequestMapping(value = "/vk/{id}", method = RequestMethod.GET)
    public String renderPublic(@PathVariable("id") Long id,Model model){

        Public pub = publicService.findById(id);
        if (pub != null) {
            pub.setViews(pub.getViews() + 1);
            publicService.update(pub);
            model.addAttribute("pub",pub);
        }else return "redirect:/";
        List render = publicService.getSimilar(pub);
        if (render.size() >= 4) {
            render = render.subList(0,4);
        }
        model.addAttribute("similar",render);
        return "public/publicPage";
    }

    @PostMapping("/getInfo")
    @ResponseBody
    public ArrayList getPublicData(String link) throws IOException {
        HTMLParser.writeFile(link);
        ArrayList pub = HTMLParser.getRandomData(link);
        return pub;
    }

}
