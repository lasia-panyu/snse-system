package com.fxbank.model;

public class WeiboClassifyWithBLOBs extends WeiboClassify {
    private String classify;

    private String word;

    private String nbayes;

    private String emontion;

    private String content;

    private String date;

    private String accountId;

    public String getClassify() {
        return classify;
    }

    public void setClassify(String classify) {
        this.classify = classify == null ? null : classify.trim();
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word == null ? null : word.trim();
    }

    public String getNbayes() {
        return nbayes;
    }

    public void setNbayes(String nbayes) {
        this.nbayes = nbayes == null ? null : nbayes.trim();
    }

    public String getEmontion() {
        return emontion;
    }

    public void setEmontion(String emontion) {
        this.emontion = emontion == null ? null : emontion.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date == null ? null : date.trim();
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId == null ? null : accountId.trim();
    }
}