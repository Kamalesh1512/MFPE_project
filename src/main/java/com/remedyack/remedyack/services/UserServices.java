package com.remedyack.remedyack.services;

import com.remedyack.remedyack.models.ForgotUid;
import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserLogin;

public interface UserServices {
	public int createUser(User user);

	public int login(UserLogin userlogin);

	public String f2id(ForgotUid f2uid);

	public boolean f2pwd(ForgotUid f2uid);
}
