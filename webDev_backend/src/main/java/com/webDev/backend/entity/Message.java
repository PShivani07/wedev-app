package com.webDev.backend.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="message")
public class Message {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;
	@Column(name="message")
	private String message;
	@Column(name="msg_created")
	private Date msgCreated;
	
	public Date getMsgCreated() {
		return msgCreated;
	}
	public void setMsgCreated(Date msgCreated) {
		this.msgCreated = msgCreated;
	}
	@ManyToOne
	@JoinColumn(name="msg_broadcast_id", nullable=false)
	private Broadcast message_BC;
	
	public Broadcast getMessage_BC() {
		return message_BC;
	}
	public void setMessage_BC(Broadcast message_BC) {
		this.message_BC = message_BC;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
