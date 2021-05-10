package com.remedyack.remedyack.Controllers;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.remedyack.remedyack.dao.Userdao;

import com.remedyack.remedyack.models.ForgotUid;

import com.remedyack.remedyack.models.Admin;
import com.remedyack.remedyack.models.ForgotUid;
import com.remedyack.remedyack.models.SupportAnalyst;

import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserLogin;
import com.remedyack.remedyack.services.UserServices;

@Controller
public class Usercontroller {
	@Autowired
  private Userdao dao;
	@Autowired
	private UserServices usr;
	@GetMapping(value="/user")
	public String user(Model model) {
		model.addAttribute("user",new User());
		return "User";
	}
	@PostMapping(value="/userreg") 
	public String userreg(@ModelAttribute("user") User userreg,Model model) {
		User u= dao.save(userreg);
		if(u!=null) 
		{
		model.addAttribute("message","Your details are submitted successfully.");
		return "User";
		}
		else 
		{
			model.addAttribute("message","Something went wrong.");
			return "failure";
		}
	}
	@GetMapping(value="/userlogin")
	public String userlogin(Model model) {
		model.addAttribute("userlogin", new UserLogin());
		return "UserLogin";
	}
	@PostMapping(value="/userloginverify")
	public String userloginverify(@ModelAttribute("userlogin") UserLogin userlogin,Model model,HttpSession session) 
	{
		Optional<User> ul=dao.findById(userlogin.getUserId());
		if(ul.isPresent()) 
		{
			User u1=ul.get();
			if(u1.getPassword().equals(userlogin.getPassword())) 
			{
				session.setAttribute("username",u1.getId());
				return "UserHome";
			}
			else
			{
				model.addAttribute("message", "Invalid userid or password");
				return "UserLogin";
			}
			
		}	
		else
		{
			model.addAttribute("message", "Invalid userid or password");
			return "UserLogin";
		}
	}
		@GetMapping("/Uforgotuid")
		public String fid(Model model){
			model.addAttribute("name",new ForgotUid());
			return "forgotid2";
		}
		@PostMapping("/Uforgotuid1")
		public String fid2(@ModelAttribute("name") ForgotUid fid,Model model)
		{
			String b=usr.f2id(fid);
			if(b!=null)
			{
		  	model.addAttribute("message",b+" is your id");
			}
			else
			{
				model.addAttribute("message", "Incorrect credentials");
			}
			return "forgotid2";
		}
		@GetMapping("/Uforgotpswd")
		public String fpwd(Model model){
			model.addAttribute("name1",new ForgotUid());
			return "forgotpwd2";
		}
		@PostMapping("/Uforgotpwd1")
		public String fpwd1(@ModelAttribute("name1") ForgotUid fid,Model model)
		{
			boolean b=usr.f2pwd(fid);
			if(b==true)
			{
		  	  return "resetPwd2";
			}
			else
			{
				model.addAttribute("message", "Incorrect credentials");
				return "resetPwd2";
			}
		}
		@PostMapping("/Uupdatepwd")
		public String updatePassword(@ModelAttribute("name1") ForgotUid forgetUID,Model model)
		{
	        User us =dao.findByid(forgetUID.getUid());	
			us.setPassword(forgetUID.getPwd());
			dao.save(us);
			model.addAttribute("message","your password has been updated");
			return "resetPwd2";


	 }
	

	@GetMapping("/userLogout")
	public String userLogOut(HttpSession session)
	{
		session.invalidate();
		
		return "redirect:/";
	}
	}
