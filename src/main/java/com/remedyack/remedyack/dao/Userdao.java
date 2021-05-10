package com.remedyack.remedyack.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.remedyack.remedyack.models.SupportAnalyst;
import com.remedyack.remedyack.models.User;


@Repository
public interface Userdao extends CrudRepository<User, String> {
	public User findByid(String userId);
	public User findBycontactNumber(String contactNumber);
}



