package com.karma_and_tumblbug.p1.project;

import java.util.List;

public class ProjectDTO {
	
	private long num;
	private String id;
	private String title;
	private String summary;
	private String category;
	private String makerName;
	private String makerSummary;
	private String makerLocation;
	private long targetAmount;
	private String openDate;
	private String closeDate;
	private String projectStory;
	private String phone;
	private String bankAccount;
	private long media_id;
	private long search_id;
	private String state;
	
	private List<MediaDTO> mediaFiles;
	private List<SearchDTO> searchList;
	private long pushAmount;
	
	
	
	
	
	
	
	
	public long getPushAmount() {
		return pushAmount;
	}
	public void setPushAmount(long pushAmount) {
		this.pushAmount = pushAmount;
	}
	public List<SearchDTO> getSearchList() {
		return searchList;
	}
	public void setSearchList(List<SearchDTO> searchList) {
		this.searchList = searchList;
	}
	public List<MediaDTO> getMediaFiles() {
		return mediaFiles;
	}
	public void setMediaFiles(List<MediaDTO> mediaFiles) {
		this.mediaFiles = mediaFiles;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public long getMedia_id() {
		return media_id;
	}
	public void setMedia_id(long media_id) {
		this.media_id = media_id;
	}
	public long getSearch_id() {
		return search_id;
	}
	public void setSearch_id(long search_id) {
		this.search_id = search_id;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMakerName() {
		return makerName;
	}
	public void setMakerName(String makerName) {
		this.makerName = makerName;
	}
	
	public String getMakerSummary() {
		return makerSummary;
	}
	public void setMakerSummary(String makerSummary) {
		this.makerSummary = makerSummary;
	}
	public String getMakerLocation() {
		return makerLocation;
	}
	public void setMakerLocation(String makerLocation) {
		this.makerLocation = makerLocation;
	}
	public long getTargetAmount() {
		return targetAmount;
	}
	public void setTargetAmount(long targetAmount) {
		this.targetAmount = targetAmount;
	}
	public String getOpenDate() {
		return openDate;
	}
	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}
	public String getCloseDate() {
		return closeDate;
	}
	public void setCloseDate(String closeDate) {
		this.closeDate = closeDate;
	}
	public String getProjectStory() {
		return projectStory;
	}
	public void setProjectStory(String projectStory) {
		this.projectStory = projectStory;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBankAccount() {
		return bankAccount;
	}
	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	
	
	
	
}
