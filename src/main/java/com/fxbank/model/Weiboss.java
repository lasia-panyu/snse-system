package com.fxbank.model;

public class Weiboss {
    private Integer id;

    private String accountId;

    private String accountName;

    private Integer attitude;

    private Integer repost;

    private Integer comment;

    private String phoneType;

    private String date;

    private Integer type;

    private Integer classify;

    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId == null ? null : accountId.trim();
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName == null ? null : accountName.trim();
    }

    public Integer getAttitude() {
        return attitude;
    }

    public void setAttitude(Integer attitude) {
        this.attitude = attitude;
    }

    public Integer getRepost() {
        return repost;
    }

    public void setRepost(Integer repost) {
        this.repost = repost;
    }

    public Integer getComment() {
        return comment;
    }

    public void setComment(Integer comment) {
        this.comment = comment;
    }

    public String getPhoneType() {
        return phoneType;
    }

    public void setPhoneType(String phoneType) {
        this.phoneType = phoneType == null ? null : phoneType.trim();
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date == null ? null : date.trim();
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getClassify() {
        return classify;
    }

    public void setClassify(Integer classify) {
        this.classify = classify;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}