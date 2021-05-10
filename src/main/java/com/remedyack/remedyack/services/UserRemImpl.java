package com.remedyack.remedyack.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.remedyack.remedyack.dao.UserRemedydao;

import com.remedyack.remedyack.models.UserRemedy;

@Service
@Component
public class UserRemImpl implements UserRemedyServices {

	@Autowired
	private UserRemedydao usrRemdoa;

	@Override
	public List<UserRemedy> listAll(String keyword) {

		if (keyword != null) {
			return (List<UserRemedy>) usrRemdoa.search(keyword);
		}
		return (List<UserRemedy>) usrRemdoa.findAll();
	}

}
