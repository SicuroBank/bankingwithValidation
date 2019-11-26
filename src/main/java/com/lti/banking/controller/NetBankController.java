package com.lti.banking.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;

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


import com.lti.banking.entity.NetBankingHolder;
import com.lti.banking.entity.OpenAccount;
import com.lti.banking.service.NetBankingHolderService;



@Controller
@RequestMapping("/netbank")
public class NetBankController 
{
	private static final Logger LOG = LoggerFactory.getLogger(NetBankController.class);

	@Autowired
	private NetBankingHolderService netbankservice;
	
		
	@PostMapping("/savenetform")
	public String saveOpenAccount (@ModelAttribute("netb") NetBankingHolder netBankingHolder)
	{
		netbankservice.saveNetBankingHolder(netBankingHolder);
		return "home";
		
	}
	@GetMapping("/opennetb")
	public String openHome(Model model)
	{
		NetBankingHolder netBankingHolder = new NetBankingHolder();
		model.addAttribute("netb",netBankingHolder);
		return "netbank-form";
		
	}
	
	
	
	@GetMapping("/forgotidform")
	public String forgotidForm(Model model)
	{		
		NetBankingHolder netBankingHolder = new NetBankingHolder();
		model.addAttribute("forgotid",netBankingHolder);
		return "forgotid-form";
		
	}
	
	@GetMapping("/forgotpassform")
	public String forgotpassForm(Model model)
	{		
		NetBankingHolder netBankingHolder = new NetBankingHolder();
		model.addAttribute("forgotpass",netBankingHolder);
		return "forgotpass-form";
		
	}
	
	@GetMapping("/loginform")
	public String openForm(Model model)
	{		
		NetBankingHolder netBankingHolder = new NetBankingHolder();
		model.addAttribute("netuser",netBankingHolder);
		return "login";
		
	}
	
	public String list()
	{
		List<NetBankingHolder> thenetbank = netbankservice.getNetBankingHolders();
		
		for(NetBankingHolder nbh:thenetbank)
		{
			System.out.print(nbh.getUserId()+"\n");
			System.out.print(nbh.getPassword()+"\n");
		}
		return "home";
	}
	
	@GetMapping("/validate")

	public String listnetbank(Model model, @RequestParam("userId") String theuserid,@RequestParam("password") String thepwd )
	{
		int flag=0;
		List<NetBankingHolder> thenetbank = netbankservice.getNetBankingHolders();
		model.addAttribute("netuser",thenetbank);
		for(NetBankingHolder nbh:thenetbank)
		{
			
			
	System.out.print(nbh);
			if(nbh.getUserId().equals(theuserid) && nbh.getPassword().equals(thepwd))
			{
				flag=1;
				
			}
			else
			{
				flag=0;
			}
		}
		
		if(flag==1)
		return "dash-form";
		else
		return "login";
		
	}

}
