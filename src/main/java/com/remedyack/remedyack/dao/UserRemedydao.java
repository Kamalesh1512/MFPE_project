package com.remedyack.remedyack.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserRemedy;

@Repository
public interface UserRemedydao extends JpaRepository<UserRemedy, Long> {
	public UserRemedy findByUserId(String userId);

	@Query(value = "SELECT * FROM userremedy u WHERE CONCAT(u.remedy_id, u.category, u.user_id,u.status) LIKE %?1%", nativeQuery = true)
	public List<UserRemedy> search(String keyword);

	@Modifying
	@Query(value = "update userremedy u set u.assign_to=?1 ,u.status=?2 where u.remedy_id=?3", nativeQuery = true)
	@Transactional
	public void update(String assignTo,String status, long remId);

	
	@Query(value = "SELECT * FROM userremedy u WHERE u.assign_to=?", nativeQuery = true)
	public List<UserRemedy> assignAnalyst(String analystId);

	@Query(value = "SELECT * FROM userremedy where user_id=?1", nativeQuery = true)
	public List<UserRemedy> getUserdetails(String name);
	
	@Modifying
	@Query(value ="update userremedy u set u.status='close' where u.remedy_id=?", nativeQuery = true)
	@Transactional
	public void updateStatus(Long RemId);
}
