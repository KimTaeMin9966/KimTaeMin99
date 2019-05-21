package dto;

public class LoginDto {
	private String id;
	private String psaa;
	private boolean login;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPsaa() {
		return psaa;
	}

	public void setPsaa(String psaa) {
		this.psaa = psaa;
	}

	public boolean isLogin() {
		return login;
	}

	public void setLogin(boolean login) {
		this.login = login;
	}

}
