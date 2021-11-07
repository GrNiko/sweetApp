package ru.grNiko.sweetApp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.grNiko.sweetApp.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);

    User findByActivationCode(String code);
}
