package tw.com.Model;

public class OrderDetails {
	private int fOrderId;
	private int fProductId;
	private int fQuentity;
	private int fSubTotal;
	private int fPrice;
	
	public OrderDetails() {}
	public OrderDetails(int fOrderId,int fProductId,int fQuentity,int fSubTotal,int fPrice) {
		this.fOrderId = fOrderId;
		this.fProductId = fProductId;
		this.fQuentity = fQuentity;
		this.fSubTotal = fSubTotal;
		this.fPrice = fPrice;
	}
	public int getfOrderId() {
		return fOrderId;
	}
	public void setfOrderId(int fOrderId) {
		this.fOrderId = fOrderId;
	}
	public int getfProductId() {
		return fProductId;
	}
	public void setfProductId(int fProductId) {
		this.fProductId = fProductId;
	}
	public int getfQuentity() {
		return fQuentity;
	}
	public void setfQuentity(int fQuentity) {
		this.fQuentity = fQuentity;
	}
	public int getfSubTotal() {
		return fSubTotal;
	}
	public void setfSubTotal(int fSubTotal) {
		this.fSubTotal = fSubTotal;
	}
	public int getfPrice() {
		return fPrice;
	}
	public void setfPrice(int fPrice) {
		this.fPrice = fPrice;
	}
	
	
	
	

}
