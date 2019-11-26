package com.lti.banking.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.banking.entity.NetBankingHolder;
import com.lti.banking.repositories.NetBankRepos;



@Service
public class NetBankingHolderImpl implements NetBankingHolderService
{

	@Autowired
	private NetBankRepos theNetbankrepos;


	@Transactional
	public void saveNetBankingHolder(NetBankingHolder theNetBankingHolder) {
		theNetbankrepos.save(theNetBankingHolder);		
		
	}


	@Override
	@Transactional
	public List<NetBankingHolder> getNetBankingHolders() {
		return theNetbankrepos.findAll();
		
		
		
	}
	
}
