package com.webDev.backend.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="broadcast")
public class Broadcast {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;
	@Column(name="broadcast_name")
	private String broadcast_name;
	@Column(name="date_created")
	private Date dateCreated;
	
	@OneToMany(cascade=CascadeType.ALL, mappedBy="room_BC")
	private Set<Room> room;
	
	@OneToMany(cascade=CascadeType.ALL, mappedBy="message_BC")
	private Set<Message> message;
	
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getBroadcast_name() {
		return broadcast_name;
	}
	public void setBroadcast_name(String broadcast_name) {
		this.broadcast_name = broadcast_name;
	}
	public Date getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
}
