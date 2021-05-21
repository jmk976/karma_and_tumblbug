package com.karma_and_tumblbug.p1.rescue;

import java.sql.Date;

import com.karma_and_tumblbug.p1.util.Pager;

public class RescueDTO extends Pager {
	
	protected void Pager() {
		this.perPage=5;
		this.perBlock=5;
		this.curPage=1;
	}
	
	private RescueFileDTO rescueFileDTO;

	public RescueFileDTO getRescueFileDTO() {
		return rescueFileDTO;
	}
	public void setRescueFileDTO(RescueFileDTO rescueFileDTO) {
		this.rescueFileDTO = rescueFileDTO;
	}
	
	
	private String status;
	private String sn;
	private String zoneSn;
	private Date resDate;
	private String province;
	private String city;
	private String location;
	private String species;
	private String kind;
	private String sex;
	private String age;
	private String color;
	private String desex;
	private String character;
	private float weight;
	private String health;
	private String feature;
	private Date adoptDate;
	private Date returnDate;
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
	public String getZoneSn() {
		return zoneSn;
	}
	public void setZoneSn(String zoneSn) {
		this.zoneSn = zoneSn;
	}
	public Date getResDate() {
		return resDate;
	}
	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getDesex() {
		return desex;
	}
	public void setDesex(String desex) {
		this.desex = desex;
	}
	public String getCharacter() {
		return character;
	}
	public void setCharacter(String character) {
		this.character = character;
	}
	public float getWeight() {
		return weight;
	}
	public void setWeight(float weight) {
		this.weight = weight;
	}
	public String getHealth() {
		return health;
	}
	public void setHealth(String health) {
		this.health = health;
	}
	public String getFeature() {
		return feature;
	}
	public void setFeature(String feature) {
		this.feature = feature;
	}
	public Date getAdoptDate() {
		return adoptDate;
	}
	public void setAdoptDate(Date adoptDate) {
		this.adoptDate = adoptDate;
	}
	public Date getReturnDate() {
		
		return returnDate;
	}
	public void setReturnDate(Date returnDate) {
		
		this.returnDate = returnDate;
	}
	
}
