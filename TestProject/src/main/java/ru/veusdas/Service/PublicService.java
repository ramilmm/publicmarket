package ru.veusdas.Service;


import ru.veusdas.Model.Public;

import java.util.ArrayList;

public interface PublicService {

    void save(Public pub);

    ArrayList<Public> findAll();

    Public findById(Long id);

    Public findByNameAndSubscribers(String name, Long subscribers);

}
