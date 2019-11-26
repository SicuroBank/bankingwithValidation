package com.lti.banking.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Beneficiary")
public class Beneficiary {

	@Id
	private long benAccNo;
	private String benName;
	private String benNickName;
	private long accNo;
	
	
	public Beneficiary() {
	
	}


	public Beneficiary(long benAccNo, String benName, String benNickName, long accNo) {
		super();
		this.benAccNo = benAccNo;
		this.benName = benName;
		this.benNickName = benNickName;
		this.accNo = accNo;
	}


	public long getBenAccNo() {
		return benAccNo;
	}


	public void setBenAccNo(long benAccNo) {
		this.benAccNo = benAccNo;
	}


	public String getBenName() {
		return benName;
	}


	public void setBenName(String benName) {
		this.benName = benName;
	}


	public String getBenNickName() {
		return benNickName;
	}


	public void setBenNickName(String benNickName) {
		this.benNickName = benNickName;
	}


	public long getAccNo() {
		return accNo;
	}


	public void setAccNo(long accNo) {
		this.accNo = accNo;
	}


	@Override
	public String toString() {
		return "Beneficiary [benAccNo=" + benAccNo + ", benName=" + benName + ", benNickName=" + benNickName
				+ ", accNo=" + accNo + "]";
	}
	
	
	
}
