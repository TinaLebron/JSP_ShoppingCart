package tw.com.Model;

public class Member {
	private int fId;
	private String fName;
	private String fAccount;
	private String fPassword;
	
	public Member() {}
	public Member(int fId,String fName,String fAccount,String fPassword) {
		this.fId = fId;
		this.fName = fName;
		this.fAccount = fAccount;
		this.fPassword = fPassword;
	}
	
	public int getfId() {
		return fId;
	}
	public void setfId(int fId) {
		this.fId = fId;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getfAccount() {
		return fAccount;
	}
	public void setfAccount(String fAccount) {
		this.fAccount = fAccount;
	}
	public String getfPassword() {
		return fPassword;
	}
	public void setfPassword(String fPassword) {
		this.fPassword = fPassword;
	}
	
	

}
