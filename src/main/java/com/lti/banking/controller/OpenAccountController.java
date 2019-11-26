package com.lti.banking.controller;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.lti.banking.entity.OpenAccount;
import com.lti.banking.service.OpenAccountService;

@Controller
@RequestMapping("/account")
public class OpenAccountController {

	private static final Logger LOG = LoggerFactory.getLogger(OpenAccountController.class);

	@Autowired
	private OpenAccountService openAccountService;
	

	@GetMapping("/openform")
	public String openForm(Model model)
	{		
		OpenAccount openAccount = new OpenAccount();
		model.addAttribute("acholder",openAccount);
		return "open-form";
		
	}
	
	@GetMapping("/openhome")
	public String openForm()
	{		
		
		return "home";
		
	}
	
	
	@PostMapping("/saveopenform")
	public String saveOpenAccount (@ModelAttribute("acholder") OpenAccount openAccount)
	{
		openAccountService.saveOpenAccount(openAccount);
		return "open-form-success";
		
	}
	
	@GetMapping("/sendOTP")
	public String sendSms() {
		
		try {
			
			int OTP;
			Random no =new Random();
			OTP=no.nextInt(99999);
			// Construct data
			String apiKey = "apikey=" + "tnZaPACrdKE-LSmCzsQW7tR0R6XoRSLP02bLL0NrJr";
			String message = "&message=" + "Your OTP:"+OTP;
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + "919787846982";
			
			// Send data
			HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
			String data = apiKey + numbers + message + sender;
			conn.setDoOutput(true);
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
			conn.getOutputStream().write(data.getBytes("UTF-8"));
			final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			final StringBuffer stringBuffer = new StringBuffer();
			String line;
			while ((line = rd.readLine()) != null) {
				stringBuffer.append(line);
			}
			rd.close();
			return stringBuffer.toString();
		} 
		catch (Exception e) 
		{
			System.out.println("Error SMS "+e);
		}
		return "home";
	}
}



