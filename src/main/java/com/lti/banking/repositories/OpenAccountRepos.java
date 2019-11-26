package com.lti.banking.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.lti.banking.entity.OpenAccount;


@Repository("theOpenAccountRepos")

public interface OpenAccountRepos extends JpaRepository<OpenAccount, Long> {

}
