package com.karma_and_tumblbug.p1.sponsor;

import java.sql.Date;

import oracle.sql.DATE;

public class SponsorDTO {
	
	private long sponNum;
	private String sponSort;
	private String payment;
	private long money;
	private Date firstPay;
	private Date lastPay;
	private long sponMonth;
	private long totalMoney;
	private String name;
	private String phone;
	private String email;
	private String address;
	private String id;
	
	
	public long getSponNum() {
		return sponNum;
	}
	public void setSponNum(long sponNum) {
		this.sponNum = sponNum;
	}
	public String getSponSort() {
		return sponSort;
	}
	public void setSponSort(String sponSort) {
		this.sponSort = sponSort;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public long getMoney() {
		return money;
	}
	public void setMoney(long money) {
		this.money = money;
	}
	
	public Date getFirstPay() {
		return firstPay;
	}
	public void setFirstPay(Date firstPay) {
		this.firstPay = firstPay;
	}
	public Date getLastPay() {
		return lastPay;
	}
	public void setLastPay(Date lastPay) {
		this.lastPay = lastPay;
	}
	public long getSponMonth() {
		return sponMonth;
	}
	public void setSponMonth(long sponMonth) {
		this.sponMonth = sponMonth;
	}
	public long getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(long totalMoney) {
		this.totalMoney = totalMoney;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	

}
