package com.lti.banking.controller;

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

import com.lti.banking.entity.Beneficiary;
import com.lti.banking.exception.ResourceNotFoundException;
import com.lti.banking.service.BeneficiaryService;

@Controller
@RequestMapping("/ben")
public class BeneficiaryController
{
	private static final Logger LOG = LoggerFactory.getLogger(BeneficiaryController.class);
	
	@Autowired
	private BeneficiaryService beneficiaryService;
	
	@GetMapping("/benlist")
	public String listBeneficiary(Model model)
	{
		List<Beneficiary> theben =beneficiaryService.getBeneficiarys();
		model.addAttribute("bene", theben);
		return "ben-list";
		
	}
	
	@GetMapping("/benshow")
	public String showbeneficiary(Model model)
	{
		
		Beneficiary beneficiary = new Beneficiary();
		model.addAttribute("bene",beneficiary);
		
		return "ben-form";
		
	}
	
	@PostMapping("/savebenform")
	public String saveBeneficiary (@ModelAttribute("bene") Beneficiary beneficiary)
	{
		
		beneficiaryService.saveBeneficiary(beneficiary);
		return "ben-form";
		
	}
	
	@GetMapping("/updateben")
    public String UpdateBeneficiary(@RequestParam("benaccNo") long theId,
        Model theModel) throws ResourceNotFoundException {
		Beneficiary beneficiary = beneficiaryService.getBeneficiary(theId);
        theModel.addAttribute("bene", beneficiary);
        return "updateben-form";
    }

    @GetMapping("/deleteform")
    public String deleteBeneficiary(@RequestParam("benaccNo") long theId) throws ResourceNotFoundException {
    	beneficiaryService.deleteBeneficiary(theId);
        return "redirect:/ben/benlist";
    }

	
	
}
