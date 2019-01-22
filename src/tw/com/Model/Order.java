package tw.com.Model;

public class Order {
	private int fOrderId;
	private int fOrderAccount;
	private String fTotal;
	
	public Order() {}
	public Order(int fOrderId,int fOrderAccount,String fTotal) {
		this.fOrderId = fOrderId;
		this.fOrderAccount = fOrderAccount;
		this.fTotal = fTotal;
	}
	public int getfOrderId() {
		return fOrderId;
	}
	public void setfOrderId(int fOrderId) {
		this.fOrderId = fOrderId;
	}
	public int getfOrderAccount() {
		return fOrderAccount;
	}
	public void setfOrderAccount(int fOrderAccount) {
		this.fOrderAccount = fOrderAccount;
	}
	public String getfTotal() {
		return fTotal;
	}
	public void setfTotal(String fTotal) {
		this.fTotal = fTotal;
	}
	
	

}
