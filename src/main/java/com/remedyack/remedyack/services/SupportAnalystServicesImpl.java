package com.remedyack.remedyack.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.remedyack.remedyack.dao.SupportAnalystdao;




import com.remedyack.remedyack.models.ForgotUid;
import com.remedyack.remedyack.models.SupportAnalyst;
import com.remedyack.remedyack.models.SupportAnalystLogin;

@Service
@Component
public class SupportAnalystServicesImpl implements SupportAnalystServices {
   @Autowired
   private SupportAnalystdao dao;
	@Override
	public int CreateSupportAnalyst(SupportAnalyst supportanalyst) {
		SupportAnalyst e=dao.findByanalystId(supportanalyst.getAnalystId());
		if(e==null) {
			SupportAnalyst sa1=dao.save(supportanalyst);
			if (sa1 != null) {
				return 1;
			} else {
				return 2;
			}
		}
		return 0;
		
	}

	@Override
	public int login(SupportAnalystLogin supportanalystlogin) {

		SupportAnalyst sa=dao.findByanalystId(supportanalystlogin.getUserId());
		 if(sa==null)

		 {
		   return 1;
		 }
		 else
		 {
		 return 2;
		 }

	}

	@Override
	public String f1id(ForgotUid f1uid) {
		SupportAnalyst support1=dao.findBycontactNumber(f1uid.getPhno());
		  if(support1!=null)
		  {
			int ans1= support1.getSecretquestion1().compareTo(f1uid.getQstn1());
			int ans2= support1.getSecretquestion2().compareTo(f1uid.getQstn2());
			int ans3= support1.getSecretquestion3().compareTo(f1uid.getQstn3());
			
			if((ans1==0) && (ans2==0) && (ans3==0))
			{
				boolean ans4=support1.getAnswer1().equalsIgnoreCase(f1uid.getAns1());
				boolean ans5=support1.getAnswer2().equalsIgnoreCase(f1uid.getAns2());
				boolean ans6=support1.getAnswer3().equalsIgnoreCase(f1uid.getAns3());
				if((ans4==true) &&(ans5==true) && (ans6==true))
				{
					return support1.getAnalystId();
				}
			}
		
		
		
			
		  }
		  return null;
		 

		}
	@Override
	public boolean f1pwd(ForgotUid f1uid) {
		SupportAnalyst sa=dao.findByanalystId(f1uid.getUid());
		  if(sa!=null)
		  {
			int ans2= sa.getSecretquestion1().compareTo(f1uid.getQstn1());
			int ans3= sa.getSecretquestion2().compareTo(f1uid.getQstn2());
			int ans4= sa.getSecretquestion3().compareTo(f1uid.getQstn3());
			if((ans2==0) && (ans3==0) && (ans4==0))
			{
				boolean ans5=sa.getAnswer1().equalsIgnoreCase(f1uid.getAns1());
				boolean ans6=sa.getAnswer2().equalsIgnoreCase(f1uid.getAns2());
				boolean ans7=sa.getAnswer3().equalsIgnoreCase(f1uid.getAns3());
				if((ans5==true) &&(ans6==true) && (ans7==true))
				{
					return true;
				}
			}
		  }
		  return false;
		}



}

