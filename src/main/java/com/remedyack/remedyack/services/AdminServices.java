package com.remedyack.remedyack.services;



import com.remedyack.remedyack.models.Admin;
import com.remedyack.remedyack.models.AdminLogin;
import com.remedyack.remedyack.models.ForgotUid;


public interface AdminServices {
	public int CreateAd(Admin admin);

	public int login(AdminLogin adminlogin);

	public String fid(ForgotUid fuid);

	public boolean fpwd(ForgotUid fuid);

	

}
