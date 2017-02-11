package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.veusdas.Model.Public;
import ru.veusdas.Model.User;
import ru.veusdas.Service.ServiceImp.PublicServiceImpl;
import ru.veusdas.Service.ServiceImp.UserServiceImpl;
import ru.veusdas.Utils.HTMLParser;

import java.util.Date;

@Controller
public class ProfileController {

    @Autowired
    private PublicServiceImpl publicService;

    @Autowired
    private UserServiceImpl userServiceImpl;

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/profile")
    public String renderProfile(Authentication authentication, Model model) {
        UserDetails currentUser = null;
        if (authentication != null && (currentUser = (UserDetails) authentication.getPrincipal()) != null) {
            User user = userServiceImpl.findByUsername(currentUser.getUsername());
            model.addAttribute("user", user);
            System.out.println(user);
        }
        return "profile/profile";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @PostMapping("/editProfile")
    public String edit(Authentication authentication,
                       Model model,
                     String name,
                     String email,
                     String skype,
                     String vk,
                     String fb,
                     String inst){

        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        User user = userServiceImpl.findByUsername(currentUser.getUsername());
        user.setName(name);
        user.setEmail(email);
        user.setSkype(skype);
        user.setVk(vk);
        user.setFb(fb);
        user.setInst(inst);

        userServiceImpl.save(user);
        model.addAttribute("user", user);
        return "profile/profile";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @PostMapping("/changePasswd")
    public String change(Authentication authentication, Model model, String new_passwd) {
        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        User user = userServiceImpl.findByUsername(currentUser.getUsername());

        user.setPassword(new_passwd);
        userServiceImpl.save(user);
        model.addAttribute("user", user);
        return "profile/profile";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/adverts")
    public String myAdverts(Authentication authentication, Model model){
        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        User user = userServiceImpl.findByUsername(currentUser.getUsername());
        model.addAttribute("user", user);

        model.addAttribute("publics",publicService.findByAdmin(user.getId().intValue()));

        return "profile/myAdverts";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @PostMapping("/deletePublic")
    public String delete(Authentication authentication, Model model, Integer id){
        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        User user = userServiceImpl.findByUsername(currentUser.getUsername());
        model.addAttribute("user", user);

        publicService.delete(publicService.findById(id.longValue()));

        return "profile/myAdverts";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/editPublic")
    public String edit(Authentication authentication, Model model,@RequestParam Integer id){
        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        User user = userServiceImpl.findByUsername(currentUser.getUsername());
        model.addAttribute("user", user);

        Public pub = publicService.findById(id.longValue());
        if (pub == null || pub.getAdmin() != user.getId().intValue()){
            return "redirect:/";
        }

        model.addAttribute("pub",pub);

        return "addPublic/editPublic";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @PostMapping("/editPublic")
    public String saveEdit(Authentication authentication,
                           Model model,
                           Integer id,
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
                           String description){
        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        User user = userServiceImpl.findByUsername(currentUser.getUsername());
        model.addAttribute("user", user);

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

        Public pub = publicService.findById(id.longValue());

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
            StringBuilder subscr = new StringBuilder();
            for (char c : subscribers.toCharArray()) {
                subscr.append(c);
            }
            System.out.println(subscr);
            pub.setSubscribers(Long.valueOf(String.valueOf(subscr)));
        }
        pub.setCost(Long.valueOf(cost));
        pub.setIncome(income);
        pub.setContent(contentType);
        pub.setCreationDate(new Date());
        pub.setCreatorIsLive(creator);
        pub.setTransfer(send);
        pub.setDescription(description);

        publicService.save(pub);

        return "redirect:/adverts";
    }

}
