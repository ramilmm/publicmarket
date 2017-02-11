package ru.veusdas.Repository;


import org.springframework.data.jpa.repository.JpaRepository;
import ru.veusdas.Model.Public;
import ru.veusdas.Model.User;

import java.util.ArrayList;

public interface PublicRepository extends JpaRepository<Public, Long> {

    Public findById(Long id);

    ArrayList<Public> findByTheme(Integer theme);

    ArrayList<Public> findBySocNetwork(Integer socNetwork);

    ArrayList<Public> findByName(String name);

    Public findByNameAndSubscribers(String name, Long subscribers);

    ArrayList<Public> findBySubscribersBetween(Long min_sub, Long max_sub);

    ArrayList<Public> findByCostBetween(Long min_cost, Long max_cost);

    ArrayList<Public> findByLink(String link);

    ArrayList<Public> findByCreator(String creator);

    ArrayList<Public> findByAdmin(Integer admin);

}
