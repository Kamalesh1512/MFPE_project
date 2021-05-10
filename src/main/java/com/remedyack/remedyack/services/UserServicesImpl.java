package com.remedyack.remedyack.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.remedyack.remedyack.dao.Userdao;
import com.remedyack.remedyack.models.ForgotUid;



import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserLogin;

@Service
@Component
public class UserServicesImpl implements UserServices {
    @Autowired
    private Userdao dao;
    	@Override
	public int createUser(User user) {
		User u=dao.findById(user.getId()).get();
		if(u==null) {
			User u1=dao.save(user);
			if (u1 != null) {
				return 1;
			} else {
				return 2;
			}
		}
		return 0;
	}
	@Override
	public int login(UserLogin userlogin) {
		User c=dao.findById(userlogin.getUserId()).get();
		 if(c==null)
		 {
		   return 1;
		 }
		 else
		 {
		 return 2;
		 }

	}
	@Override
	public String f2id(ForgotUid f2uid) {
		User usr=dao.findBycontactNumber(f2uid.getPhno());
		  if(usr!=null)
		  {
			int que1= usr.getSecretquestion1().compareTo(f2uid.getQstn1());
			int que2= usr.getSecretquestion2().compareTo(f2uid.getQstn2());
			int que3= usr.getSecretquestion3().compareTo(f2uid.getQstn3());
			if((que1==0) && (que2==0) && (que3==0))
			{
				boolean ans1=usr.getAnswer1().equalsIgnoreCase(f2uid.getAns1());
				boolean ans2=usr.getAnswer2().equalsIgnoreCase(f2uid.getAns2());
				boolean ans3=usr.getAnswer3().equalsIgnoreCase(f2uid.getAns3());
				if((ans1==true) &&(ans2==true) && (ans3==true))
				{
					return usr.getId();
				}
			}
		  }
		  return null;
		}
	@Override
	public boolean f2pwd(ForgotUid f2uid) {
		User usr=dao.findByid(f2uid.getUid());
		  if(usr!=null)
		  {
			int ans1= usr.getSecretquestion1().compareTo(f2uid.getQstn1());
			int ans2= usr.getSecretquestion2().compareTo(f2uid.getQstn2());
			int ans3= usr.getSecretquestion3().compareTo(f2uid.getQstn3());
			if((ans1==0) && (ans2==0) && (ans3==0))
			{
				boolean ans4=usr.getAnswer1().equalsIgnoreCase(f2uid.getAns1());
				boolean ans5=usr.getAnswer2().equalsIgnoreCase(f2uid.getAns2());
				boolean ans6=usr.getAnswer3().equalsIgnoreCase(f2uid.getAns3());
				if((ans4==true) &&(ans5==true) && (ans6==true))
				{
					return true;
				}
			}
		  }
		  return false;
		}



}
