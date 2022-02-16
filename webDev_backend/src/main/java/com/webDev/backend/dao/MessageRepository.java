package com.webDev.backend.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.webDev.backend.entity.Message;

@CrossOrigin
public interface MessageRepository extends JpaRepository<Message, Long>{

}
