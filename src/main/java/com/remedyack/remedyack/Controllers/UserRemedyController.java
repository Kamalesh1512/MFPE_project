package com.remedyack.remedyack.Controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.remedyack.remedyack.dao.UserRemedydao;
import com.remedyack.remedyack.dao.Userdao;
import com.remedyack.remedyack.models.SupportAnalyst;
import com.remedyack.remedyack.models.SupportAnalystLogin;
import com.remedyack.remedyack.models.User;
import com.remedyack.remedyack.models.UserRemedy;
import com.remedyack.remedyack.services.UserRemedyServices;

@Controller
public class UserRemedyController {
	@Autowired
	private UserRemedydao dao1;
	@Autowired
	private Userdao userDao;

	@Autowired
	private UserRemedyServices services;

	@GetMapping(value = "/userremedy")
	public String userremedy(Model model, HttpSession session) {
		String userid = (String) session.getAttribute("username");
		User user = userDao.findById(userid).get();

		UserRemedy userremidy = new UserRemedy();
		userremidy.setUser(user);
		userremidy.setPcNumber(user.getPcNumber());
		userremidy.setContactNumber(user.getContactNumber());
		model.addAttribute("userremedy", userremidy);
		return "UserRemedy";
	}

	@PostMapping(value = "/userrem")
	public String userrem(@ModelAttribute("userremedy") UserRemedy userrem, Model model) {
		UserRemedy ur = dao1.save(userrem);
		if (ur != null) {
			model.addAttribute("message", "Your details are submitted successfully.");
			return "UserRemedy";
		} else {
			model.addAttribute("message", "Something went wrong.");
			return "failure";

		}
	}

	@GetMapping(value = "/remlist")
	public String remedyinfo(@Param("keyword") String keyword, Model model) {

		List<String> headerList = new ArrayList<String>();
		headerList.add("Remedy No");
		headerList.add("User Id	");
		headerList.add("PC Number");
		headerList.add("Contact Number");
		headerList.add("Category");
		headerList.add("Statement");
		headerList.add("RemedyStatus");
		List<UserRemedy> ListofRemedies = services.listAll(keyword);

		model.addAttribute("sa", 2);
		model.addAttribute("title", "Remedy List");
		model.addAttribute("headersList", headerList);
		model.addAttribute("ListofRemedies", ListofRemedies);
		model.addAttribute("keyword", keyword);

		return "UserRemedySearch";
	}

	@GetMapping(value = "/request")
	public String userDetails(@Param("name") String name, Model model) {

		List<UserRemedy> list1 = new ArrayList<UserRemedy>();
		List<String> headerList = new ArrayList<String>();
		headerList.add("First Name");
		headerList.add("User Id	");
		headerList.add("Contact Number");
		headerList.add("PC Number");

		model.addAttribute("headerList", headerList);

		List<UserRemedy> userdetails = dao1.getUserdetails(name);
		list1.add(userdetails.get(0));
		model.addAttribute("list", list1);

		return "RemedyDetailsRetrieve";

	}

	@GetMapping(value = "/updateStatus")
	public String updateStatus(@RequestParam("status") Long remId, Model model) {
		
		
		dao1.updateStatus(remId);

		model.addAttribute("message", "The Remedy is closed");
		return "AssignedToAnalyst";

	}

}