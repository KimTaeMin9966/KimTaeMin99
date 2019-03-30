package net.koreate.dto;

public class LoginDto {
	private String joindate;
	private String password;
	private boolean useCookie;

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

	public boolean isUseCookie() {
		return useCookie;
	}

	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}

	@Override
	public String toString() {
		return "LoginDto [joindate=" + joindate + ", password=" + password + ", useCookie=" + useCookie + "]";
	}

}
