package com.lti.banking.service;



import java.util.List;

import com.lti.banking.entity.Beneficiary;
import com.lti.banking.exception.ResourceNotFoundException;



public interface BeneficiaryService 
{
	public List <Beneficiary> getBeneficiarys();

    public void saveBeneficiary(Beneficiary theBeneficiary);
 
     public Beneficiary getBeneficiary(long theId) throws ResourceNotFoundException;

    public void deleteBeneficiary(long theId) throws ResourceNotFoundException;

}
