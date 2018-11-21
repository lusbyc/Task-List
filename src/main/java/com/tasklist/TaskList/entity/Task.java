package com.tasklist.TaskList.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "tasks")

//@NamedQuery(name="find_all_tasks", query="select taskdescription from task tR")
public class Task {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private Integer taskid;
	private String duedate;
	private String statuscomplete;
	private String taskdescription;
	
	@ManyToOne
	@JoinColumn(name = "userid")
	private User u1;

	public Task() {

	}

	public Task(Integer userid, String taskdescription, String duedate, String statuscomplete) {
		this.taskid = userid;
		this.taskdescription = taskdescription;
		this.duedate = duedate;
		this.statuscomplete = statuscomplete;
	}

	public Task(String duedate, String statuscomplete, String taskdescription) {
		this.duedate = duedate;
		this.statuscomplete = statuscomplete;
		this.taskdescription = taskdescription;
	}

	public Integer getTaskid() {
		return taskid;
	}

	public void setTaskid(Integer taskid) {
		this.taskid = taskid;
	}

	public String getDuedate() {
		return duedate;
	}

	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}

	public String getStatuscomplete() {
		return statuscomplete;
	}

	public void setStatuscomplete(String statuscomplete) {
		this.statuscomplete = statuscomplete;
	}

	public String getTaskdescription() {
		return taskdescription;
	}

	public void setTaskdescription(String taskdescription) {
		this.taskdescription = taskdescription;
	}

	@Override
	public String toString() {
		return "Task [taskid=" + taskid + ", duedate=" + duedate + ", statuscomplete=" + statuscomplete
				+ ", taskdescription=" + taskdescription + "]";
	}

	
}
