package ru.veusdas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import ru.veusdas.MailSender.Sender;

@Controller
public class MessageController {


    @PostMapping("/sendmessage")
    public String sendMessage(String name, String email, String subject, String message){

        Sender sender = new Sender("veusdas-supp@mail.ru","123321a");
        sender.send(subject,
                "Доброе время суток!" + "\n" +
                        "Name: " +
                        name + "\n" +
                        "email : " +
                        email + "\n" +
                        "Вопрос: " +
                        message + "\n",
                "veusdas-supp@mail.ru","ramilmmk@gmail.com");

        return "redirect:/contacts";
    }

}
