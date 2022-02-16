package com.webDev.backend.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.webDev.backend.entity.Broadcast;

@CrossOrigin
@RepositoryRestResource(collectionResourceRel="broadcast", path="broadcast")
public interface BroadcastRepository extends JpaRepository<Broadcast, Long>{

}
