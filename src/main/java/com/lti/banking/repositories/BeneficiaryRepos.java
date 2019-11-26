package com.lti.banking.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lti.banking.entity.Beneficiary;

@Repository("BeneficiaryRepos")
public interface BeneficiaryRepos extends JpaRepository<Beneficiary, Long >
{

	
}
