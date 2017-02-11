package ru.veusdas.Service;

import ru.veusdas.Model.Public;

import java.util.ArrayList;

public interface CatalogService {

    ArrayList<Public> filter(String name,Integer socNetwork, Integer theme, String verify, String members_from, String members_to, String cost_from, String cost_to);

}
