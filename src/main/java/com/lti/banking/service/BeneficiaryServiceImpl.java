package com.lti.banking.service;



import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.banking.entity.Beneficiary;
import com.lti.banking.exception.ResourceNotFoundException;

import com.lti.banking.repositories.BeneficiaryRepos;

@Service
public class BeneficiaryServiceImpl implements BeneficiaryService
{


	@Autowired
	private BeneficiaryRepos theBeneficiaryRepos;
	
	
	@Override
	@Transactional
	public List <Beneficiary> getBeneficiarys()
	{
	return theBeneficiaryRepos.findAll();
	}


	@Override
	@Transactional
	public void saveBeneficiary(Beneficiary theBeneficiary) {
		theBeneficiaryRepos.save(theBeneficiary);
	}


	@Override
	@Transactional
	public Beneficiary getBeneficiary(long theId) throws ResourceNotFoundException {
		
		return theBeneficiaryRepos.findById(theId).orElseThrow( () ->  new ResourceNotFoundException(theId));
	}


	@Override
	@Transactional
	public void deleteBeneficiary(long theId) throws ResourceNotFoundException {
		theBeneficiaryRepos.findById(theId);
		
	}
}
