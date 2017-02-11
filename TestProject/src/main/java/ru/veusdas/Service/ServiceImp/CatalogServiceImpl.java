package ru.veusdas.Service.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.veusdas.Model.Public;
import ru.veusdas.Repository.PublicRepository;
import ru.veusdas.Service.CatalogService;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class CatalogServiceImpl implements CatalogService{

    @Autowired
    private PublicRepository publicRepository;


    @Override
    public ArrayList<Public> filter(String name, Integer socNetwork, Integer theme, String verify, String members_from, String members_to, String cost_from, String cost_to) {
        ArrayList<Public> result = new ArrayList<>();
        List<Public> buf = theme != null ? publicRepository.findByTheme(theme):publicRepository.findAll();


        for (Public pub : buf) {
            if ((!name.isEmpty() && pub.getName().toLowerCase().contains(name.trim().toLowerCase())) || name.isEmpty()) {
                if ((socNetwork == null) || (pub.getSocNetwork() == socNetwork)) {
                    if ((verify == null && pub.getVerified() == 0) ||
                            (verify != null && verify.equals("on") && pub.getVerified() == 1)) {
                        if ((!members_from.isEmpty() && pub.getSubscribers() > Integer.parseInt(members_from)) ||
                                (members_from.isEmpty())) {
                            if ((!members_to.isEmpty() && pub.getSubscribers() < Integer.parseInt(members_to)) ||
                                    (members_from.isEmpty())) {
                                if ((!cost_from.isEmpty() && pub.getCost() > Integer.parseInt(cost_from)) ||
                                        (cost_from.isEmpty())) {
                                    if ((!cost_to.isEmpty() && pub.getCost() < Integer.parseInt(cost_to)) ||
                                            (cost_to.isEmpty())) {
                                        result.add(pub);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        return result;
    }
}
