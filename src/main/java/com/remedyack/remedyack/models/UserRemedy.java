package com.remedyack.remedyack.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.ManyToOne;

import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "userremedy")

public class UserRemedy {
	@Id
	@SequenceGenerator(name = "remedySequence", initialValue = 2020, allocationSize = 1, sequenceName = "REMEDY_SEQ1")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "remedySequence")
	private Long remedyId;
	@Column
	private String pcNumber;
	@Column
	private String contactNumber;
	@Column
	private String category;
	@Column
	private String statement;
	@Column
	private String assignTo;
	@Column
	private String status;
	@ManyToOne
	private User user;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAssignTo() {
		return assignTo;
	}

	public void setAssignTo(String assignTo) {
		this.assignTo = assignTo;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPcNumber() {
		return pcNumber;
	}

	public void setPcNumber(String pcNumber) {
		this.pcNumber = pcNumber;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getStatement() {
		return statement;
	}

	public void setStatement(String statement) {
		this.statement = statement;
	}

	public Long getRemedyId() {
		return remedyId;
	}

	public void setRemedyId(Long remedyId) {
		this.remedyId = remedyId;
	}

	@Override
	public String toString() {
		return "UserRemedy [remedyId=" + remedyId + ", pcNumber=" + pcNumber + ", contactNumber=" + contactNumber
				+ ", category=" + category + ", statement=" + statement + ", assignTo=" + assignTo + ", status="
				+ status + ", user=" + user + "]";
	}

}
