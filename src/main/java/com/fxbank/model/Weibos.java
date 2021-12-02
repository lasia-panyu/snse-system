package com.fxbank.model;

public class Weibos {
	private int id;
	
    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String accountId;

    private String accountName;

    private Integer attitude;

    private Integer repost;

    private Integer comment;

    private String phoneType;

    private String date;

    private Integer type;

    private String content;
    
    private String classify;

    public String getClassify() {
		return classify;
	}

	public void setClassify(String classify) {
		this.classify = classify;
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

	@Override
	public String toString() {
		return "Weibos [id=" + id + ", accountId=" + accountId + ", accountName=" + accountName + ", attitude="
				+ attitude + ", repost=" + repost + ", comment=" + comment + ", phoneType=" + phoneType + ", date="
				+ date + ", type=" + type + ", content=" + content + ", classify=" + classify + "]";
	}
    
}