package com.fxbank.model;

import java.util.List;

public class Agents {
	 private String date;
	    private String day;
	    private Integer eventId;
List<Event> event;

public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getDay() {
	return day;
}
public void setDay(String day) {
	this.day = day;
}
public Integer getEventId() {
	return eventId;
}
public void setEventId(Integer eventId) {
	this.eventId = eventId;
}
public List<Event> getEvent() {
	return event;
}
public void setEvent(List<Event> event) {
	this.event = event;
}

}
