package ru.veusdas.Utils;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.*;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Objects;


public class HTMLParser {
    private static String BODY_HTML = "";
    private static String BODY_TEXT = "";
    private static Document pub = null;

    public static void main(String[] args) throws IOException {
        writeFile("https://www.facebook.com/SMMrussia/");
        getFBData();
    }

    static public void getFBData() {
//        Element photo = pub.getElementsByAttributeValue("width","170").first();
        System.out.println("photo= " + pub.html());
    }

    static public ArrayList getOKData() {
        ArrayList<String> result = new ArrayList<>();
        Element name = pub.getElementsByClass("mctc_name_tx").first();
        result.add(name.text());
        Element photo = pub.getElementsByClass("add-happening_poster_img").get(0);
        result.add(photo.attr("src").substring(2));
        Element sub = pub.getElementsByAttributeValueContaining("href","/members").get(0);
        result.add(sub.text().substring(10).replace(" ",""));
        return result;
    }

    static public ArrayList getInstData() {
        ArrayList<String> result = new ArrayList<>();
        Element head = pub.head();
        Element avatar = head.getElementsByAttributeValue("property","og:image").first();
        Element name = head.getElementsByAttributeValue("property","og:title").first();
        result.add(name.attr("content").substring(0,name.attr("content").indexOf("|")));
        result.add(avatar.attr("content"));
        return result;
    }

    static public ArrayList getPublicData() {
        ArrayList<String> result = new ArrayList<>();
        String name = pub.title().substring(0,pub.title().indexOf("|"));
        String avatar,publicSubscribers,publicID;
        Element photo = null;
        try {
            photo = pub.getElementById("page_avatar").child(0).child(0);
        }catch (NullPointerException e){
        }
        if (photo == null) {
            String cover = pub.getElementsByClass("page_cover").get(0).attr("style");
            avatar = cover.substring(cover.indexOf("(") + 1,cover.indexOf(")"));
        }else
            avatar = photo.attr("src");
        Elements sub = pub.getElementsContainingOwnText("Подписчики");
        Element subscribers = null;
        if (sub.size() == 0) {
            subscribers = pub.getElementsContainingOwnText("Участники").get(0).nextElementSibling();
        }else
            subscribers = sub.get(0).nextElementSibling();
        publicSubscribers = subscribers.text().replace(" ","");
        String id = null;
        try {
            id = pub.getElementsByClass("ui_tab_sel").last().attr("href");
        }catch (NullPointerException e){}
        if (id == null) {
            id = pub.getElementsContainingOwnText("Участники").get(0).parent().parent().attr("href");
            publicID = id.substring(id.indexOf("[group]=") + 8);
        }else
            publicID = id.substring(id.indexOf("-") + 1,id.indexOf("?"));

        result.add(name);
        result.add(avatar);
        result.add(publicSubscribers);
        result.add("https://vk.com/stats?act=reach&gid="+publicID);
        return result;
    }

    static public void writeFile(String url) throws IOException {
        String url_modified = "";
        if (!url.contains("http")) {
            url_modified = "http://" + url.toLowerCase();
        }else url_modified = url.toLowerCase();
        try {
            pub = Jsoup.connect(url_modified).userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64)").header("Accept-Language","ru,en;q=0.8").get();
        } catch (IOException e) {
            System.out.println("cannot connect to site");
        }
    }

    static public int verify(String code) {
        if (BODY_TEXT.contains(code)) {
            return 1;
        }else return 0;

    }

    static public ArrayList getRandomData(String link) throws IOException {
        if (link.contains("instagram.com")) {
            return getInstData();
        }else if (link.contains("ok.ru") || link.contains("odnoklassniki.ru")) {
            return getOKData();
        }else return getPublicData();
    }

    static public String updateSubscribes(){
        Elements sub = pub.getElementsContainingOwnText("Подписчики");
        Element subscribers = null;
        if (sub.size() == 0) {
            subscribers = pub.getElementsContainingOwnText("Участники").get(0).nextElementSibling();
        }else
            subscribers = sub.get(0).nextElementSibling();
        String publicSubscribers = subscribers.text().replace(" ","");

        return publicSubscribers;
    }

}
