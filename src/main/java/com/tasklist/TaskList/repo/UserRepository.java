package com.tasklist.TaskList.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tasklist.TaskList.entity.User;

public interface UserRepository extends JpaRepository<User, Integer> {

	User findByName(String name);

	User findByEmail(String email);

}
