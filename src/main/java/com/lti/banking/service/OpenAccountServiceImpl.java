package com.lti.banking.service;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lti.banking.entity.OpenAccount;
import com.lti.banking.repositories.OpenAccountRepos;

@Service
public class OpenAccountServiceImpl implements OpenAccountService{
		
	
	@Autowired
	OpenAccountRepos theOpenRepos;

	
	@Transactional
	public void saveOpenAccount(OpenAccount theOpenAccount) {
		theOpenRepos.save(theOpenAccount);		
	}


	@Override
	public List<OpenAccount> getOpenAccounts() {
		// TODO Auto-generated method stub
		return  theOpenRepos.findAll();
	}

	

}
