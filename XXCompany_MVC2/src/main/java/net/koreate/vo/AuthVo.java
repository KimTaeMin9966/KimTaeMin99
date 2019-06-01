package net.koreate.vo;

public class AuthVo {
	private String userid;
	private String auth;
	
	public AuthVo() {}
	
	public AuthVo(String userid, String auth) {
		this.userid = userid;
		this.auth = auth;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "AuthVo [userid=" + userid + ", auth=" + auth + "]";
	}

}
