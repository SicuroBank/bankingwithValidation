package com.lti.banking.service;

import java.util.List;


import com.lti.banking.entity.NetBankingHolder;


public interface NetBankingHolderService 
{

    public void saveNetBankingHolder(NetBankingHolder theNetBankingHolder);


    public List <NetBankingHolder > getNetBankingHolders();



	
}
