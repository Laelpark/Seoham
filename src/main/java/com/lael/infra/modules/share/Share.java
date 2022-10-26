package com.lael.infra.modules.share;

public class Share {
	
	private String seq;
	private Integer food_div;
	private String title;
	private Integer people_num;
	private String place;
	private String time;
	private String price;
	private String info;
	private String ccgSeq;
	private String createDate;
	private Integer share_member_seq;
	private Integer likeCount;
	
	// favorite s
	private String likeSeq;
	private Integer memberSeq;
	private Integer shareSeq;
	private Integer likeNy;
	
	public String getLikeSeq() {
		return likeSeq;
	}
	public void setLikeSeq(String likeSeq) {
		this.likeSeq = likeSeq;
	}
	public Integer getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(Integer memberSeq) {
		this.memberSeq = memberSeq;
	}
	public Integer getShareSeq() {
		return shareSeq;
	}
	public void setShareSeq(Integer shareSeq) {
		this.shareSeq = shareSeq;
	}
	public Integer getLikeNy() {
		return likeNy;
	}
	public void setLikeNy(Integer likeNy) {
		this.likeNy = likeNy;
	}
	
	// favorite e
	
	public Integer getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(Integer likeCount) {
		this.likeCount = likeCount;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public Integer getShare_member_seq() {
		return share_member_seq;
	}
	public void setShare_member_seq(Integer share_member_seq) {
		this.share_member_seq = share_member_seq;
	}
	public String getCcgSeq() {
		return ccgSeq;
	}
	public void setCcgSeq(String ccgSeq) {
		this.ccgSeq = ccgSeq;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Integer getFood_div() {
		return food_div;
	}
	public void setFood_div(Integer food_div) {
		this.food_div = food_div;
	}
	public Integer getPeople_num() {
		return people_num;
	}
	public void setPeople_num(Integer people_num) {
		this.people_num = people_num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
}
