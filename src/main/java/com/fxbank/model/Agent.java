package com.fxbank.model;

public class Agent {
    private String date;
    private String day;
    private Integer eventId;

    public String getDate() {
        return date;
    }

    public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public void setDate(String date) {
        this.date = date == null ? null : date.trim();
    }

    public Integer getEventId() {
        return eventId;
    }

    public void setEventId(Integer eventId) {
        this.eventId = eventId;
    }
}