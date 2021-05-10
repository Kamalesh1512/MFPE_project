package com.remedyack.remedyack.Controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.remedyack.remedyack.dao.Admindao;
import com.remedyack.remedyack.dao.SupportAnalystdao;
import com.remedyack.remedyack.dao.UserRemedydao;
import com.remedyack.remedyack.models.Admin;
import com.remedyack.remedyack.models.AdminLogin;
import com.remedyack.remedyack.models.ForgotUid;
import com.remedyack.remedyack.models.SupportAnalyst;
import com.remedyack.remedyack.models.UserRemedy;
import com.remedyack.remedyack.services.AdminServices;
import com.remedyack.remedyack.services.UserRemedyServices;

import net.bytebuddy.matcher.ModifierMatcher.Mode;

@Controller
public class Admincontroller {
	@Autowired
	private Admindao dao;
	@Autowired
	private SupportAnalystdao sdao;
	@Autowired
	private UserRemedydao urdao;
	@Autowired
	private AdminServices adminservice;
	@Autowired
	private UserRemedyServices src;

	@GetMapping(value = "/admin")
	public String admin(Model model) {
		model.addAttribute("admin", new Admin());
		return "Admin";
	}

	@PostMapping(value = "/adminreg")
	public String adminreg(@ModelAttribute("admin") Admin adminreg, Model model) {
		Admin ar = dao.save(adminreg);
		if (ar != null) {
			model.addAttribute("message", "Your details are submitted successfully.");
			return "Admin";
		} else {
			model.addAttribute("message", "Something went wrong.");
			return "failure";
		}
	}

	@GetMapping(value = "/adminlogin")
	public String adminlogin(Model model) {
		model.addAttribute("adminlogin", new AdminLogin());
		return "AdminLogin";
	}

	@PostMapping(value = "/loginverify")
	public String loginverify(@ModelAttribute("adminlogin") AdminLogin adminlogin, Model model, HttpSession session) {
		Optional<Admin> admin = dao.findById(adminlogin.getUserId());
		if (admin.isPresent()) {
			Admin adminPass = admin.get();
			if (adminPass.getPassword().equals(adminlogin.getPassword())) {
				session.setAttribute("name", adminPass.getFirstName());
				return "AdminHome";
			}
		}

		model.addAttribute("message", "Invalid userId or password");
		return "AdminLogin";

	}



	@GetMapping(value = "/remedyinfo")
	public String remedyinfo(Model model) {
		List<UserRemedy> list = (List<UserRemedy>) urdao.findAll();

		List<SupportAnalyst> saList = new ArrayList<SupportAnalyst>();

		sdao.findAll().forEach(t -> {
			System.out.println(t);
			saList.add(t);

		});

		List<String> headerList = new ArrayList<String>();
		headerList.add("Remedy No");
		headerList.add("User Id	");
		headerList.add("PC Number");
		headerList.add("Contact Number");
		headerList.add("Category");
		headerList.add("Statement");
		headerList.add("Assign To SA");
		headerList.add("Remedy Status");
		model.addAttribute("sa", 1);
		model.addAttribute("title", "Remedy Info");
		model.addAttribute("headersList", headerList);
		model.addAttribute("salist", saList);
		model.addAttribute("list", list);
		

		return "AdminHome";
	}

	@PostMapping(value = "/assigntoanalyst")
	public String assignToAnalyst(@Param("assigning") String[] assignTo ,String[] status, Model model, HttpSession session) {

		List<UserRemedy> list = (List<UserRemedy>) urdao.findAll();
		long remId=0;
		for (int i = 0; i < list.size(); i++) {
			remId = list.get(i).getRemedyId();
			urdao.update(assignTo[i],status[i],remId);
		}
		model.addAttribute("message","Successfully Assigned");
		

		return "AdminHome";

	}
	
	

	@GetMapping("/forgotuid")
	public String fid(Model model) {
		model.addAttribute("name", new ForgotUid());
		return "forgotid";
	}

	@PostMapping("/forgotuid1")
	public String fid1(@ModelAttribute("name") ForgotUid fid, Model model) {
		String b = adminservice.fid(fid);
		if (b != null) {
			model.addAttribute("message", b + " is your id");
		} else {
			model.addAttribute("message", "Incorrect credentials");
		}
		return "forgotid";
	}

	@GetMapping("/forgotpswd")
	public String fpwd(Model model) {
		model.addAttribute("name1", new ForgotUid());
		return "forgotpwd";
	}

	@PostMapping("/forgotpwd1")
	public String fpwd1(@ModelAttribute("name1") ForgotUid fid, Model model) {
		boolean b = adminservice.fpwd(fid);
		if (b == true) {
			return "resetPwd";
		} else {
			model.addAttribute("message", "Incorrect credentials");
			return "resetPwd";
		}
	}

	@PostMapping("/updatepwd")
	public String updatePassword(@ModelAttribute("name1") ForgotUid forgetUID, Model model) {
		Admin ad = dao.findByadminId(forgetUID.getUid());
		ad.setPassword(forgetUID.getPwd());
		dao.save(ad);
		model.addAttribute("message", "your password has been updated");
		return "resetPwd";

	}

	@GetMapping(value = "/adminlogout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";

	}

	@GetMapping("/adminLogout")
	public String adminLogOut(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	@GetMapping("/remediesList")
	public String remediesList(Model model, HttpSession session) {
		
		model.addAttribute("title", "Remedies List");
		List<UserRemedy> list = (List<UserRemedy>) urdao.findAll();
		model.addAttribute("list",list);
		return "RequestList";
	}
}
