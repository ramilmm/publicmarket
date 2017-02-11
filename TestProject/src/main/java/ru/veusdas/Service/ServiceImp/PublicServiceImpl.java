package ru.veusdas.Service.ServiceImp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.veusdas.Model.Public;
import ru.veusdas.Model.User;
import ru.veusdas.Repository.PublicRepository;
import ru.veusdas.Service.PublicService;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

@Service
public class PublicServiceImpl implements PublicService{

    @Autowired
    private PublicRepository publicRepository;


    @Override
    public void save(Public pub) {
        publicRepository.save(pub);
    }

    @Override
    public ArrayList<Public> findAll() {
        return (ArrayList<Public>) publicRepository.findAll();
    }

    @Override
    public Public findById(Long id) {
        return publicRepository.findById(id);
    }

    @Override
    public Public findByNameAndSubscribers(String name, Long subscribers) {
        return publicRepository.findByNameAndSubscribers(name,subscribers);
    }

    public Public findByLink(String link) {
        return publicRepository.findByLink(link).subList(0,1).get(0);
    }

    public void delete(Public pub) {
        publicRepository.delete(pub);
    }

    public void update(Public pub) {
        publicRepository.save(pub);
    }

    public ArrayList<Public> getSimilar(Public pub) {
        ArrayList<Public> result = new ArrayList<>();

        result.addAll(publicRepository.findByTheme(pub.getTheme()));
        for (Public p : result) {
            if (p.getId() == pub.getId()){
                result.remove(p);
                break;
            }
        }
        if (result.size() < 4) {
            result.addAll(publicRepository.findBySubscribersBetween(
                    pub.getSubscribers() - (25*pub.getSubscribers())/100,
                    pub.getSubscribers() + (25*pub.getSubscribers())/100));
        }

        for (Public p : result) {
            if (p.getId() == pub.getId()){
                result.remove(p);
                break;
            }
        }

        if (result.size() < 4) {
            result.addAll(publicRepository.findByCostBetween(
                    pub.getCost() - (25*pub.getCost())/100,
                    pub.getCost() + (25*pub.getCost())/100));
        }

        for (Public p : result) {
            if (p.getId() == pub.getId()){
                result.remove(p);
                break;
            }
        }
        Set<String> buf = new HashSet<String>();
        ArrayList<Public> new_result = new ArrayList<>();
        for (Public p : result) {
            if (buf.add(p.getLink())) {
                new_result.add(p);
            }
        }

        return new_result;
    }

    public ArrayList<Public> findBySocNetwork(Integer soc){
        return publicRepository.findBySocNetwork(soc);
    }

    public ArrayList<Public> findByAdmin(Integer admin) {
        return publicRepository.findByAdmin(admin);
    }
}
