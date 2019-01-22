package tw.com.Model;

public class Product {
	private int fProductId;
	private String fName;
	private int fPrice;
	private String fPicture;
	private int f庫存;
	
	public Product() {}
	public Product(int fProductId,String fName,int fPrice,String fPicture,int f庫存) {
		this.fProductId = fProductId;
		this.fName = fName;
		this.fPrice = fPrice;
		this.fPicture = fPicture;
		this.f庫存 = f庫存;
	}
	
	public int getfProductId() {
		return fProductId;
	}
	public void setfProductId(int fProductId) {
		this.fProductId = fProductId;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public int getfPrice() {
		return fPrice;
	}
	public void setfPrice(int fPrice) {
		this.fPrice = fPrice;
	}
	public String getfPicture() {
		return fPicture;
	}
	public void setfPicture(String fPicture) {
		this.fPicture = fPicture;
	}
	public int getF庫存() {
		return f庫存;
	}
	public void setF庫存(int f庫存) {
		this.f庫存 = f庫存;
	}
}
