package com.example2.demo.repos;

import com.example2.demo.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Integer> {
   List<Message> findByTag(String tag);
}
