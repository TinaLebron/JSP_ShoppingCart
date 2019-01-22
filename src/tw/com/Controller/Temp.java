package tw.com.Controller;

import java.util.ArrayList;

import tw.com.Model.Product;
import tw.com.dbHelper.DBHelper;

public class Temp {
	public DBHelper db = new DBHelper();
	public  ArrayList<Product> products ;
	
	public Temp() {
		 db.connectToSQL();
		 select();
	}
	
	public void select() {
		products = db.selectAllFromProduct("t商品");
		db.closeAll();
	}
	
	public ArrayList<Product> GetProducts() {
		return products;
	}
}
