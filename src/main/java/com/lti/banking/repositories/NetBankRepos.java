package com.lti.banking.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lti.banking.entity.NetBankingHolder;

@Repository("theNetbankrepos")
public interface NetBankRepos extends JpaRepository<NetBankingHolder, Long> {

}
