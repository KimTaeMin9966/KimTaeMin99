package net.koreate.vo;

import java.util.Date;

public class MemberVo {
	private int userno;
	private String username;
	private String auth;
	private String joindate;
	private String password;
	private String password1;
	private String password2;
	private boolean isOut;
	private Date regdate;
	private Date editdate;
	private int boradConut;
	private int commentConut;
	private int deliveryCount;

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	public String getJoindate() {
		return joindate;
	}

	public void setJoindate(String joindate) {
		this.joindate = joindate;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword1() {
		return password1;
	}

	public void setPassword1(String password1) {
		this.password1 = password1;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public boolean isOut() {
		return isOut;
	}

	public void setOut(boolean isOut) {
		this.isOut = isOut;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getEditdate() {
		return editdate;
	}

	public void setEditdate(Date editdate) {
		this.editdate = editdate;
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

	@Override
	public String toString() {
		return "MemberVo [userno=" + userno + ", username=" + username + ", auth=" + auth + ", joindate=" + joindate
				+ ", password=" + password + ", password1=" + password1 + ", password2=" + password2 + ", isOut="
				+ isOut + ", regdate=" + regdate + ", editdate=" + editdate + ", boradConut=" + boradConut
				+ ", commentConut=" + commentConut + ", deliveryCount=" + deliveryCount + "]";
	}

}
