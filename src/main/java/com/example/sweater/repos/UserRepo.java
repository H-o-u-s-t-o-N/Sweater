package com.example.sweater.repos;

/**
 * Created by HoustoN
 * Date: 9/27/2020
 */
import com.example.sweater.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
