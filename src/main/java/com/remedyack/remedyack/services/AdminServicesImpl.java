package com.remedyack.remedyack.services;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.remedyack.remedyack.dao.Admindao;
import com.remedyack.remedyack.models.Admin;
import com.remedyack.remedyack.models.AdminLogin;
import com.remedyack.remedyack.models.ForgotUid;

@Service
@Component
public class AdminServicesImpl implements AdminServices {
	@Autowired
	private Admindao dao;

	@Override
	public int CreateAd(Admin admin) {
		Admin a = dao.findByadminId(admin.getAdminId());
		if (a == null) {
			Admin a1 = dao.save(admin);
			if (a1 != null) {
				return 1;
			} else {
				return 2;
			}
		}
		return 0;
	}

	@Override
	public int login(AdminLogin adminlogin) {
		Admin a = dao.findByadminId(adminlogin.getUserId());
		if (a == null) {
			return 1;
		} else {
			return 2;
		}
	}

	@Override
	public String fid(ForgotUid fuid) {
		Admin admin1 = dao.findBycontactNumber(fuid.getPhno());
		if (admin1 != null) {
			int a2 = admin1.getSecretquestion1().compareTo(fuid.getQstn1());
			int a3 = admin1.getSecretquestion2().compareTo(fuid.getQstn2());
			int a4 = admin1.getSecretquestion3().compareTo(fuid.getQstn3());

			if ((a2 == 0) && (a3 == 0) && (a4 == 0)) {
				boolean ques1 = admin1.getAnswer1().equalsIgnoreCase(fuid.getAns1());
				boolean ques2 = admin1.getAnswer2().equalsIgnoreCase(fuid.getAns2());
				boolean ques3 = admin1.getAnswer3().equalsIgnoreCase(fuid.getAns3());
				if ((ques1 == true) && (ques2 == true) && (ques3 == true)) {
					return admin1.getAdminId();
				}
			}
		}

		return null;

	}

	@Override
	public boolean fpwd(ForgotUid fuid) {
		Admin admin1 = dao.findByadminId(fuid.getUid());
		if (admin1 != null) {
			int ans2 = admin1.getSecretquestion1().compareTo(fuid.getQstn1());
			int ans3 = admin1.getSecretquestion2().compareTo(fuid.getQstn2());
			int ans4 = admin1.getSecretquestion3().compareTo(fuid.getQstn3());
			if ((ans2 == 0) && (ans3 == 0) && (ans4 == 0)) {
				boolean ans5 = admin1.getAnswer1().equalsIgnoreCase(fuid.getAns1());
				boolean ans6 = admin1.getAnswer2().equalsIgnoreCase(fuid.getAns2());
				boolean ans7 = admin1.getAnswer3().equalsIgnoreCase(fuid.getAns3());
				if ((ans5 == true) && (ans6 == true) && (ans7 == true)) {
					return true;
				}
			}
		}

		return false;
	}

}
