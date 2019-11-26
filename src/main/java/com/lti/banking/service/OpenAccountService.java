package com.lti.banking.service;
import java.util.List;

import com.lti.banking.entity.OpenAccount;

public interface OpenAccountService {


    public void saveOpenAccount(OpenAccount theOpenAccount);
  
    public List <OpenAccount > getOpenAccounts();


}
