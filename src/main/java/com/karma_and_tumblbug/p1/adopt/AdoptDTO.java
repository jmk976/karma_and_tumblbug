package com.karma_and_tumblbug.p1.adopt;

import java.sql.Date;

import com.karma_and_tumblbug.p1.membership.MembershipDTO;

public class AdoptDTO {
	
	private MembershipDTO membershipDTO;
	
	public MembershipDTO getMembershipDTO() {
		return membershipDTO;
	}
	public void setMembershipDTO(MembershipDTO membershipDTO) {
		this.membershipDTO = membershipDTO;
	}
	private long adoptNum;
	private String id;
	private String sn;
	private String species;
	private String kind;
	private String reason;
	private String famAgree;
	private String adoptEx;
	private String pastTypeQ;
	private String pastNow;
	private String haveAnimal;
	private String housingType;
	private String afterMoving;
	private String afterWedding;
	private String desexAgree;
	private String pass;
	private Date callCheck;
	private Date visitCheck;
	private Date adoptDate;
	public long getAdoptNum() {
		return adoptNum;
	}
	public void setAdoptNum(long adoptNum) {
		this.adoptNum = adoptNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
	public String getSpecies() {
		return species;
	}
	public void setSpecies(String species) {
		this.species = species;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getFamAgree() {
		return famAgree;
	}
	public void setFamAgree(String famAgree) {
		this.famAgree = famAgree;
	}
	public String getAdoptEx() {
		return adoptEx;
	}
	public void setAdoptEx(String adoptEx) {
		this.adoptEx = adoptEx;
	}
	public String getPastTypeQ() {
		return pastTypeQ;
	}
	public void setPastTypeQ(String pastTypeQ) {
		this.pastTypeQ = pastTypeQ;
	}
	public String getPastNow() {
		return pastNow;
	}
	public void setPastNow(String pastNow) {
		this.pastNow = pastNow;
	}
	public String getHaveAnimal() {
		return haveAnimal;
	}
	public void setHaveAnimal(String haveAnimal) {
		this.haveAnimal = haveAnimal;
	}
	public String getHousingType() {
		return housingType;
	}
	public void setHousingType(String housingType) {
		this.housingType = housingType;
	}
	public String getAfterMoving() {
		return afterMoving;
	}
	public void setAfterMoving(String afterMoving) {
		this.afterMoving = afterMoving;
	}
	public String getAfterWedding() {
		return afterWedding;
	}
	public void setAfterWedding(String afterWedding) {
		this.afterWedding = afterWedding;
	}
	public String getDesexAgree() {
		return desexAgree;
	}
	public void setDesexAgree(String desexAgree) {
		this.desexAgree = desexAgree;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public Date getCallCheck() {
		return callCheck;
	}
	public void setCallCheck(Date callCheck) {
		this.callCheck = callCheck;
	}
	public Date getVisitCheck() {
		return visitCheck;
	}
	public void setVisitCheck(Date visitCheck) {
		this.visitCheck = visitCheck;
	}
	public Date getAdoptDate() {
		return adoptDate;
	}
	public void setAdoptDate(Date adoptDate) {
		this.adoptDate = adoptDate;
	}
	
}
