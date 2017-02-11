package ru.veusdas.Model;

import javax.persistence.*;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "username",nullable = false)
    private String username;

    @Column(name = "password",nullable = false)
    private String password;

    @Column(name = "ROLE",nullable = false)
    private String role;

    @Column(name = "email")
    private String email;

    @Column(name = "photo")
    private String photo;

    @Column(name = "name")
    private String name;

    @Column(name = "vk_id")
    private String vk_id;

    @Column(name = "vk")
    private String vk;

    @Column(name = "fb")
    private String fb;

    @Column(name = "inst")
    private String inst;

    @Column(name = "skype")
    private String skype;

    public User() {}

    public User(String username, String password, String email, String role,String photo, String name, String vk_id, String vk, String skype, String fb, String inst) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.email = email;
        this.photo = photo;
        this.name = name;
        this.vk_id = vk_id;
        this.vk = vk;
        this.fb = fb;
        this.inst = inst;
        this.skype = skype;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getVk_id() {
        return vk_id;
    }

    public void setVk_id(String vk_id) {
        this.vk_id = vk_id;
    }

    public String getVk() {
        return vk;
    }

    public void setVk(String vk) {
        this.vk = vk;
    }

    public String getFb() {
        return fb;
    }

    public void setFb(String fb) {
        this.fb = fb;
    }

    public String getInst() {
        return inst;
    }

    public void setInst(String inst) {
        this.inst = inst;
    }


    public String getSkype() {
        return skype;
    }

    public void setSkype(String skype) {
        this.skype = skype;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                ", email='" + email + '\'' +
                ", photo='" + photo + '\'' +
                ", name='" + name + '\'' +
                ", vk_id='" + vk_id + '\'' +
                ", vk='" + vk + '\'' +
                ", fb='" + fb + '\'' +
                ", inst='" + inst + '\'' +
                ", skype='" + skype + '\'' +
                '}';
    }
}
