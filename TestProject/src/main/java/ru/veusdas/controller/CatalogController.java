package ru.veusdas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.veusdas.Model.Public;
import ru.veusdas.Service.ServiceImp.CatalogServiceImpl;
import ru.veusdas.Service.ServiceImp.PublicServiceImpl;
import ru.veusdas.Utils.PublicValidator;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

@Controller
public class CatalogController {

    @Autowired
    private PublicServiceImpl publicService;
    @Autowired
    private CatalogServiceImpl catalogService;


    @GetMapping("/filter")
    public String useFilters(String name,Integer socNetwork, Integer theme, String verify, String members_from, String members_to, String cost_from, String cost_to, Model model){
        List<Public> publics = catalogService.filter(name, socNetwork, theme, verify, members_from, members_to, cost_from, cost_to);
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
        model.addAttribute("soc",0);
        return "catalog/catalog";
    }

    @GetMapping("/vk")
    public String renderVkCatalog(Model model){
        List<Public> publics = publicService.findBySocNetwork(0);
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
        model.addAttribute("soc",0);
        return "catalog/catalog";
    }

    @GetMapping("/ok")
    public String renderOkCatalog(Model model){
        List<Public> publics = publicService.findBySocNetwork(1);
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
        model.addAttribute("soc",1);
        return "catalog/catalog";
    }

    @GetMapping("/fb")
    public String renderFBCatalog(Model model){
        List<Public> publics = publicService.findBySocNetwork(2);
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
        model.addAttribute("soc",2);
        return "catalog/catalog";
    }

    @GetMapping("/inst")
    public String renderInstCatalog(Model model){
        List<Public> publics = publicService.findBySocNetwork(3);
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
        model.addAttribute("soc",3);
        return "catalog/catalog";
    }

}
