package com.webDev.backend.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.webDev.backend.entity.Room;

@CrossOrigin
public interface RoomRepository extends JpaRepository<Room, Long>{

}
