package com.lti.banking.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name= "NetBankingHolder")
public class NetBankingHolder {
	
	@Id
	private long accNo;
	private String userId;
	private String password;
	private String transPwd;
	
	public NetBankingHolder() {
		
	}

	public NetBankingHolder(long accNo, String userId, String password, String transPwd) {
		this.accNo = accNo;
		this.userId = userId;
		this.password = password;
		this.transPwd = transPwd;
	}

	public long getAccNo() {
		return accNo;
	}

	public void setAccNo(long accNo) {
		this.accNo = accNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTransPwd() {
		return transPwd;
	}

	public void setTransPwd(String transPwd) {
		this.transPwd = transPwd;
	}

	@Override
	public String toString() {
		return "NetBankingHolder [accNo=" + accNo + ", userId=" + userId + ", password=" + password + ", transPwd="
				+ transPwd + "]";
	}
	
	

	
	
}
