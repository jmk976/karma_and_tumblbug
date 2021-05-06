package com.karma_and_tumblbug.p1.push;

import com.karma_and_tumblbug.p1.project.ProjectDTO;

public class PushDTO {
	private long num;
	private String id;
	private long projectNum;
	private long paymentNum;
	private long quantity;
	
	private ProjectDTO projectDTO;
	
	
	
	public ProjectDTO getProjectDTO() {
		return projectDTO;
	}
	public void setProjectDTO(ProjectDTO projectDTO) {
		this.projectDTO = projectDTO;
	}
	public long getProjectNum() {
		return projectNum;
	}
	public void setProjectNum(long projectNum) {
		this.projectNum = projectNum;
	}
	public long getPaymentNum() {
		return paymentNum;
	}
	public void setPaymentNum(long paymentNum) {
		this.paymentNum = paymentNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public long getNum() {
		return num;
	}
	public void setNum(long num) {
		this.num = num;
	}
	public long getQuantity() {
		return quantity;
	}
	public void setQuantity(long quantity) {
		this.quantity = quantity;
	}
	
	
	
}
