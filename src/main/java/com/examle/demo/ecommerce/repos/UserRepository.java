package com.examle.demo.ecommerce.repos;

import com.examle.demo.ecommerce.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);

    User findByActivationCode(String code);
}