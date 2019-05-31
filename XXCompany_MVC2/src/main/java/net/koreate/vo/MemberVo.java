package net.koreate.vo;

import java.util.Date;
import java.util.List;

public class MemberVo {
	private int mno;
	private String userid;
	private String userpw;
	private String userName;
	private boolean enabled;
	private Date regDate;
	private Date updateDate;
	private int boradConut;
	private int commentConut;
	private int deliveryCount;
	private List<AuthVo> authList;

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public int getBoradConut() {
		return boradConut;
	}

	public void setBoradConut(int boradConut) {
		this.boradConut = boradConut;
	}

	public int getCommentConut() {
		return commentConut;
	}

	public void setCommentConut(int commentConut) {
		this.commentConut = commentConut;
	}

	public int getDeliveryCount() {
		return deliveryCount;
	}

	public void setDeliveryCount(int deliveryCount) {
		this.deliveryCount = deliveryCount;
	}

	public List<AuthVo> getAuthList() {
		return authList;
	}

	public void setAuthList(List<AuthVo> authList) {
		this.authList = authList;
	}

	@Override
	public String toString() {
		return "MemberVo [mno=" + mno + ", userid=" + userid + ", userpw=" + userpw + ", userName=" + userName
				+ ", enabled=" + enabled + ", regDate=" + regDate + ", updateDate=" + updateDate + ", boradConut="
				+ boradConut + ", commentConut=" + commentConut + ", deliveryCount=" + deliveryCount + ", authList="
				+ authList + "]";
	}

}
