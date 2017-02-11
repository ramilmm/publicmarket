package ru.veusdas.controller;

import org.springframework.web.bind.annotation.GetMapping;
import ru.veusdas.Model.User;
import ru.veusdas.Service.SecurityService;
import ru.veusdas.Service.ServiceImp.UserServiceImpl;
import ru.veusdas.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @Autowired
    private UserServiceImpl userServiceImpl;

    @Autowired
    private SecurityService securityService;


    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(String username,
                               String name,
                               String vk,
                               String password,
                               Model model) {

        if (username.isEmpty() || password.isEmpty() || name.isEmpty() || vk.isEmpty()) {
            return "login/index";
        }

        if (userService.findByUsername(username) != null) {
            model.addAttribute("error","Пользователь с таким логином уже существует");
            return "login/index";
        }

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);
        user.setName(name);
        user.setEmail(username);
        user.setVk(vk);
        user.setPhoto("https://cdn1.iconfinder.com/data/icons/round-black-icons-2/78/user-512.png");
        userService.save(user);

        securityService.autologin(user.getUsername(), user.getPassword());

        return "redirect:/";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null)
            model.addAttribute("error", "Your username and password is invalid.");

        if (logout != null)
            model.addAttribute("message", "You have been logged out successfully.");

        return "login/index";
    }

}
