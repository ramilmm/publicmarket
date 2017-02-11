package ru.veusdas.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.veusdas.Model.Public;
import ru.veusdas.Model.User;
import ru.veusdas.Service.ServiceImp.PublicServiceImpl;
import ru.veusdas.Service.ServiceImp.UserServiceImpl;
import ru.veusdas.Utils.PublicValidator;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private PublicServiceImpl publicService;

    @Autowired
    private UserServiceImpl userServiceImpl;

    @GetMapping("/")
    public String renderMainPage(Authentication authentication, Model model){
        UserDetails currentUser = null;
        if (authentication != null && (currentUser = (UserDetails) authentication.getPrincipal()) != null) {
            User user = userServiceImpl.findByUsername(currentUser.getUsername());
            model.addAttribute("user", user);
        }
        List<Public> publics = publicService.findAll();
        if (publics.size() > 20) {
            publics = publics.subList(0, 20);
            model.addAttribute("hasNext",true);
        }else {
            publics = publics.subList(0, publics.size());
            model.addAttribute("hasNext",false);
        }

        publics.sort(new Comparator<Public>() {
            public int compare(Public one, Public other) {
                return one.getCreationDate().compareTo(other.getCreationDate());
            }
        });

        model.addAttribute("publics",publics);
        return "main/market";
    }

    @PostMapping("/showmore")
    public String showMore(Integer limiter, Model model) {
        ArrayList<Public> allPublics = publicService.findAll();
        allPublics.sort(new Comparator<Public>() {
            public int compare(Public one, Public other) {
                return one.getCreationDate().compareTo(other.getCreationDate());
            }
        });

        List<Public> publics = new ArrayList<>();
        if (allPublics.size() > 20) {
            publics = allPublics.subList(limiter, allPublics.size());
        }else publics = allPublics;

        if (publics.size() > 20) {
            model.addAttribute("hasNext",true);
            model.addAttribute("publics",publics.subList(0,20));
        }else {
            model.addAttribute("hasNext",false);
            model.addAttribute("publics",publics.subList(0,publics.size()));
        }

        return "main/pubAjax";
    }

    @GetMapping("/contacts")
    public String renderContacts(){
        return "contacts/getInTouch";
    }

    @PreAuthorize("hasAnyAuthority('ADMIN','USER')")
    @GetMapping("/addPublic")
    public String renderAddPublic(Authentication authentication, Model model) {
        UserDetails currentUser = (UserDetails) authentication.getPrincipal();
        User user = userServiceImpl.findByUsername(currentUser.getUsername());
        model.addAttribute("user", user);
        model.addAttribute("code", PublicValidator.generateCode());
        return "addPublic/addPublic";
    }


}
