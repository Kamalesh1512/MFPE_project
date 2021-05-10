package com.remedyack.remedyack.models;

import javax.annotation.Generated;
import javax.persistence.*;

@Entity
@Table(name = "user")
public class User {
	@Id
	@Generated("assigned")
	@Column
	private String id;
	@Column
	private String password;
	@Column
	private String firstName;
	@Column
	private String lastName;
	@Column
	private String designation;
	@Column
	private int seatNo;
	@Column
	private String PcNumber;
	@Column
	private String IpAddress;
	@Column
	private String contactNumber;
	@Column
	private String secretquestion1;
	@Column
	private String answer1;
	@Column
	private String secretquestion2;
	@Column
	private String answer2;
	@Column
	private String secretquestion3;
	@Column
	private String answer3;
	@Column
	private String email;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSecretquestion1() {
		return secretquestion1;
	}

	public void setSecretquestion1(String secretquestion1) {
		this.secretquestion1 = secretquestion1;
	}

	public String getAnswer1() {
		return answer1;
	}

	public void setAnswer1(String answer1) {
		this.answer1 = answer1;
	}

	public String getSecretquestion2() {
		return secretquestion2;
	}

	public void setSecretquestion2(String secretquestion2) {
		this.secretquestion2 = secretquestion2;
	}

	public String getAnswer2() {
		return answer2;
	}

	public void setAnswer2(String answer2) {
		this.answer2 = answer2;
	}

	public String getSecretquestion3() {
		return secretquestion3;
	}

	public void setSecretquestion3(String secretquestion3) {
		this.secretquestion3 = secretquestion3;
	}

	public String getAnswer3() {
		return answer3;
	}

	public void setAnswer3(String answer3) {
		this.answer3 = answer3;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public int getSeatNo() {
		return seatNo;
	}

	public void setSeatNo(int seatNo) {
		this.seatNo = seatNo;
	}

	public String getPcNumber() {
		return PcNumber;
	}

	public void setPcNo(String pcNumber) {
		PcNumber = pcNumber;
	}

	public String getIpAddress() {
		return IpAddress;
	}

	public void setIpAddress(String ipAddress) {
		IpAddress = ipAddress;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setPcNumber(String pcNumber) {
		PcNumber = pcNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", password=" + password + ", firstName=" + firstName + ", lastName=" + lastName
				+ ", designation=" + designation + ", seatNo=" + seatNo + ", PcNumber=" + PcNumber + ", IpAddress="
				+ IpAddress + ", contactNumber=" + contactNumber + ", secretquestion1=" + secretquestion1 + ", answer1="
				+ answer1 + ", secretquestion2=" + secretquestion2 + ", answer2=" + answer2 + ", secretquestion3="
				+ secretquestion3 + ", answer3=" + answer3 + ", email=" + email + "]";
	}

}
