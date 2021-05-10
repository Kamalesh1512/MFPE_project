package com.remedyack.remedyack.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.remedyack.remedyack.models.Admin;



@Repository
public interface Admindao extends JpaRepository<Admin, String> {
	public Admin findByadminId(String AdminId);
	public Admin findBycontactNumber(String contactNumber);
}
