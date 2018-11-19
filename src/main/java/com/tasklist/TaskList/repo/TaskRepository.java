package com.tasklist.TaskList.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tasklist.TaskList.entity.Task;
import com.tasklist.TaskList.entity.User;

public interface TaskRepository extends JpaRepository<Task, Integer> {

	
	Task findByTaskid(Integer taskid);
	
	Task findByTaskdescription (String taskdescription);
}
