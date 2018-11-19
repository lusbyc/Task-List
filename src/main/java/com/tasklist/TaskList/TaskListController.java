package com.tasklist.TaskList;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.tasklist.TaskList.entity.Task;
import com.tasklist.TaskList.entity.User;
import com.tasklist.TaskList.repo.TaskRepository;
import com.tasklist.TaskList.repo.UserRepository;

@Controller
public class TaskListController {
	
	@Autowired
	TaskRepository tR;

	@Autowired
	UserRepository uR;


	
	@RequestMapping("/")
	public ModelAndView index(HttpSession session) {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView mv = new ModelAndView("register");
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("login", "firstPage", "Task List Administration");
		return mv;
	}
	
	
	@RequestMapping("/adduser") // performs the action of adding the customer
	public ModelAndView addNewUser(@RequestParam("name") String name, @RequestParam("email") String email,
			@RequestParam("password") String password, HttpSession session) {
		User u1 = new User(name, email, password);
		uR.save(u1);
		session.setAttribute("user", u1);
//		mv.addObject("fname", firstname);
//		c.setFirstname(firstname);
		return new ModelAndView("tasks", "userwelcome", "Welcome to the Task List Administrator site, " + u1.getName());
	}
	
	@RequestMapping("/delete")
	public ModelAndView removeTask(@RequestParam("taskid")Integer taskid) {
		tR.deleteById(taskid);
		return new ModelAndView("redirect:/");
	}
	
	
	
	@RequestMapping("/tasks")
	public ModelAndView listTasks() {
		return new ModelAndView("tasks", "alltasks", tR.findAll());
		
	}
	
	@RequestMapping("/usertasks") 
	public ModelAndView userTasks(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session) {
		User user = uR.findByEmail(email);
		List<Task> tasks = user.getTasks();
		return new ModelAndView("usertasks", "tasks", tasks);
	}
}
