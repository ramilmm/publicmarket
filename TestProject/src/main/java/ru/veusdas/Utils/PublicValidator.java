package ru.veusdas.Utils;


import java.util.Random;

public class PublicValidator {


    static public String generateCode() {
        char[] valid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".toCharArray();
        String res = "";
        Random rnd = new Random();
        int i = 0;
        while (i < 10) {
            res += valid[rnd.nextInt(valid.length)];
            i++;
        }
        return res;
    }

}
