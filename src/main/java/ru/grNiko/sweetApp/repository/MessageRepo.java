package ru.grNiko.sweetApp.repository;

import org.springframework.data.repository.CrudRepository;
import ru.grNiko.sweetApp.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {
    List<Message> findByTag(String tag);

}
