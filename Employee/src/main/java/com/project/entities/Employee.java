package com.project.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Employee {
	@Id
	private int id;

	@Column(name = "Employee_Name")
	private String name;

	@Column(name = "Department_Name")
	private String dept;

	@Temporal(TemporalType.DATE)
	private Date addedDate;

	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Employee(String name, String dept, Date addedDate) {
		super();
		this.id = new Random().nextInt(100000);
		this.name = name;
		this.dept = dept;
		this.addedDate = addedDate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", name=" + name + ", dept=" + dept + ", addedDate=" + addedDate + "]";
	}
}