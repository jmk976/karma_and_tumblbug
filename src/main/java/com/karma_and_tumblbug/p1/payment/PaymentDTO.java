package com.karma_and_tumblbug.p1.payment;

public class PaymentDTO {
	private long num;
	private String id;
	private String division;
	private String bankName;
	private String bankAccount;
	private String ownerName;
	private String ownerBirth;
	private String cardNumber;
	private String expirationDate;
	private int securityNumber;
	private String defaultMethod;
	private String business;
	
	
	
	public String getBusiness() {
		return business;
	}
	public void setBusiness(String business) {
		this.business = business;
	}
	public String getDefaultMethod() {
		return defaultMethod;
	}
	public void setDefaultMethod(String defaultMethod) {
		this.defaultMethod = defaultMethod;
	}
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getOwnerBirth() {
		return ownerBirth;
	}
	public void setOwnerBirth(String ownerBirth) {
		this.ownerBirth = ownerBirth;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getExpirationDate() {
		return expirationDate;
	}
	public void setExpirationDate(String expirationDate) {
		this.expirationDate = expirationDate;
	}
	public int getSecurityNumber() {
		return securityNumber;
	}
	public void setSecurityNumber(int securityNumber) {
		this.securityNumber = securityNumber;
	}
	
	
	
}
