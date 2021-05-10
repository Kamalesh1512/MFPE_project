package com.remedyack.remedyack.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.remedyack.remedyack.models.Admin;
import com.remedyack.remedyack.models.SupportAnalyst;



@Repository
public interface SupportAnalystdao extends CrudRepository<SupportAnalyst, String> {
	public SupportAnalyst findByanalystId(String analystId);
	public SupportAnalyst findBycontactNumber(String contactNumber);

}

