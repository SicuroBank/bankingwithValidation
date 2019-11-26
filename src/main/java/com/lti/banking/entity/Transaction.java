package com.lti.banking.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Transaction")
public class Transaction {
	
	
	private long fromAcc;
	@Id
	private long transId;
	private Date transDate;
	private String transType;
	private long toAcc;
	private long debit;
	private long credit;
	private long amtBal;
	private String narration;
	
	public Transaction() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Transaction(long transId, Date transDate, String transType, long toAcc, long debit, long credit, long amtBal,
			String narration) {
		super();
		this.transId = transId;
		this.transDate = transDate;
		this.transType = transType;
		this.toAcc = toAcc;
		this.debit = debit;
		this.credit = credit;
		this.amtBal = amtBal;
		this.narration = narration;
	}

	public long getTransId() {
		return transId;
	}

	public void setTransId(long transId) {
		this.transId = transId;
	}

	public Date getTransDate() {
		return transDate;
	}

	public void setTransDate(Date transDate) {
		this.transDate = transDate;
	}

	public String getTransType() {
		return transType;
	}

	public void setTransType(String transType) {
		this.transType = transType;
	}

	public long getToAcc() {
		return toAcc;
	}

	public void setToAcc(long toAcc) {
		this.toAcc = toAcc;
	}

	public long getDebit() {
		return debit;
	}

	public void setDebit(long debit) {
		this.debit = debit;
	}

	public long getCredit() {
		return credit;
	}

	public void setCredit(long credit) {
		this.credit = credit;
	}

	public long getAmtBal() {
		return amtBal;
	}

	public void setAmtBal(long amtBal) {
		this.amtBal = amtBal;
	}

	public String getNarration() {
		return narration;
	}

	public void setNarration(String narration) {
		this.narration = narration;
	}

	@Override
	public String toString() {
		return "Transaction [transId=" + transId + ", transDate=" + transDate + ", transType=" + transType + ", toAcc="
				+ toAcc + ", debit=" + debit + ", credit=" + credit + ", amtBal=" + amtBal + ", narration=" + narration
				+ "]";
	}

	public long getFromAcc() {
		return fromAcc;
	}

	public void setFromAcc(long fromAcc) {
		this.fromAcc = fromAcc;
	}
	
	
	
	
	
	
	
	

}
