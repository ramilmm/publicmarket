package ru.veusdas.Model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "pub_public")
public class Public {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "name",nullable = false)
    private String name;

    @Column(name = "creationDate",nullable = false)
    private Date creationDate;

    @Column(name = "link",nullable = false)
    private String link;

    @Column(name = "stat_link",nullable = false)
    private String stat_link;

    @Column(name = "avatar",nullable = false)
    private String avatar;

    @Column(name = "theme",nullable = false)
    private Integer theme;

    @Column(name = "socnetwork",nullable = false)
    private Integer socNetwork;

    @Column(name = "cost",nullable = false)
    private Long cost;

    @Column(name = "income",nullable = false)
    private Integer income;

    @Column(name = "subscribers",nullable = false)
    private Long subscribers;

    @Column(name = "admin")
    private Integer admin;

    @Column(name = "onTop")
    private boolean onTop;

    @Column(name = "topStart")
    private Date topStart;

    @Column(name = "topEnd")
    private Date topEnd;

    @Column(name = "isColored")
    private Boolean isColored;

    @Column(name = "colorStart")
    private Date colorStart;

    @Column(name = "colorEnd")
    private Date colorEnd;

    @Column(name = "update_date")
    private Date update_date;

    @Column(name = "creator")
    private String creator;

    @Column(name = "content")
    private Integer content;

    @Column(name = "creatorIsLive")
    private Integer creatorIsLive;

    @Column(name = "transfer")
    private Integer transfer;

    @Column(name = "description")
    private String description;

    @Column(name = "verified")
    private Integer verified;

    @Column(name = "views")
    private Integer views;

    public Public() {}

    public Public(Integer views, String name, Date creationDate, String link, String stat_link, String avatar, Integer theme, Integer socNetwork, Long cost, Integer income, Long subscribers, Integer Admin, boolean onTop, Date topStart, Date topEnd, Boolean isColored, Date colorEnd, Date update_date, String creator, Integer content, Integer creatorIsLive, Integer transfer, String description, Integer verified) {
        this.views = views;
        this.name = name;
        this.creationDate = creationDate;
        this.link = link;
        this.stat_link = stat_link;
        this.avatar = avatar;
        this.theme = theme;
        this.socNetwork = socNetwork;
        this.cost = cost;
        this.income = income;
        this.subscribers = subscribers;
        this.admin = Admin;
        this.onTop = onTop;
        this.topStart = topStart;
        this.topEnd = topEnd;
        this.isColored = isColored;
        this.colorEnd = colorEnd;
        this.update_date = update_date;
        this.creator = creator;
        this.content = content;
        this.creatorIsLive = creatorIsLive;
        this.transfer = transfer;
        this.description = description;
        this.verified = verified;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getStat_link() {
        return stat_link;
    }

    public void setStat_link(String stat_link) {
        this.stat_link = stat_link;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Integer getTheme() {
        return theme;
    }

    public void setTheme(Integer theme) {
        this.theme = theme;
    }

    public Integer getSocNetwork() {
        return socNetwork;
    }

    public void setSocNetwork(Integer socNetwork) {
        this.socNetwork = socNetwork;
    }

    public Long getCost() {
        return cost;
    }

    public void setCost(Long cost) {
        this.cost = cost;
    }

    public Integer getIncome() {
        return income;
    }

    public void setIncome(Integer income) {
        this.income = income;
    }

    public Long getSubscribers() {
        return subscribers;
    }

    public void setSubscribers(Long subscribers) {
        this.subscribers = subscribers;
    }

    public Integer getAdmin() {
        return admin;
    }

    public void setAdmin(Integer admin) {
        this.admin = admin;
    }

    public boolean isOnTop() {
        return onTop;
    }

    public void setOnTop(boolean onTop) {
        this.onTop = onTop;
    }

    public Date getTopStart() {
        return topStart;
    }

    public void setTopStart(Date topStart) {
        this.topStart = topStart;
    }

    public Date getTopEnd() {
        return topEnd;
    }

    public void setTopEnd(Date topEnd) {
        this.topEnd = topEnd;
    }

    public Boolean getColored() {
        return isColored;
    }

    public void setColored(Boolean colored) {
        isColored = colored;
    }

    public Date getColorStart() {
        return colorStart;
    }

    public void setColorStart(Date colorStart) {
        this.colorStart = colorStart;
    }

    public Date getColorEnd() {
        return colorEnd;
    }

    public void setColorEnd(Date colorEnd) {
        this.colorEnd = colorEnd;
    }

    public Date getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(Date update_date) {
        this.update_date = update_date;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public Integer getContent() {
        return content;
    }

    public void setContent(Integer content) {
        this.content = content;
    }

    public Integer getCreatorIsLive() {
        return creatorIsLive;
    }

    public void setCreatorIsLive(Integer creatorIsLive) {
        this.creatorIsLive = creatorIsLive;
    }

    public Integer getTransfer() {
        return transfer;
    }

    public void setTransfer(Integer transfer) {
        this.transfer = transfer;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }


    public Integer getVerified() {
        return verified;
    }

    public void setVerified(Integer verified) {
        this.verified = verified;
    }


    public Integer getViews() {
        return views;
    }

    public void setViews(Integer views) {
        this.views = views;
    }

    @Override
    public String toString() {
        return "Public{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", creationDate=" + creationDate +
                ", link='" + link + '\'' +
                ", stat_link='" + stat_link + '\'' +
                ", avatar='" + avatar + '\'' +
                ", theme=" + theme +
                ", socNetwork=" + socNetwork +
                ", cost=" + cost +
                ", income=" + income +
                ", subscribers=" + subscribers +
                ", admin='" + admin + '\'' +
                ", onTop=" + onTop +
                ", topStart=" + topStart +
                ", topEnd=" + topEnd +
                ", isColored=" + isColored +
                ", colorStart=" + colorStart +
                ", colorEnd=" + colorEnd +
                ", update_date=" + update_date +
                ", creator='" + creator + '\'' +
                ", content=" + content +
                ", creatorIsLive=" + creatorIsLive +
                ", transfer=" + transfer +
                ", description='" + description + '\'' +
                ", verified=" + verified +
                ", views=" + views +
                '}';
    }
}
