package tw.com.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.com.Model.Member;
import tw.com.Model.Product;
import tw.com.dbHelper.DBHelper;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DBHelper db = new DBHelper();
	  ArrayList<Product> products ;
    Member member = new Member();
  
    
    public HomeController() {
    	super();  
    	System.out.println("HomeController( )");
    	  db.connectToSQL();
    	  
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("HomeController  doGet()");
		
		processRequest(request,response);
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("HomeController  doPost()");
		
		
		processRequest(request,response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		products = db.selectAllFromProduct("t商品");
		//db.closeAll();
		String fName1 = request.getParameter("fName1");
		String[] product1 = GetProductName(products,fName1);
		System.out.println(product1[0]);
		request.setAttribute("fName1", product1[0]);
		String fPrice1 = request.getParameter("fPrice1");
		String[] Price1 = GetProductPrice(products,fPrice1);
		request.setAttribute("fPrice1", Price1[0]);
		
		String fName2 = request.getParameter("fName2");
		request.setAttribute("fName2", product1[1]);
		String fPrice2 = request.getParameter("fPrice2");
		request.setAttribute("fPrice2", Price1[1]);
		
		String fName3 = request.getParameter("fName3");
		request.setAttribute("fName3", product1[2]);
		String fPrice3 = request.getParameter("fPrice3");
		request.setAttribute("fPrice3", Price1[2]);
		
		String fName4 = request.getParameter("fName4");
		request.setAttribute("fName4", product1[3]);
		String fPrice4 = request.getParameter("fPrice4");
		request.setAttribute("fPrice4", Price1[3]);
		
		String fName5 = request.getParameter("fName5");
		request.setAttribute("fName5", product1[4]);
		String fPrice5 = request.getParameter("fPrice5");
		request.setAttribute("fPrice5", Price1[4]);
		
		String fName6 = request.getParameter("fName6");
		request.setAttribute("fName6", product1[5]);
		String fPrice6 = request.getParameter("fPrice6");
		request.setAttribute("fPrice6", Price1[5]);
		
		//String inputName =request.getParameter("productId1");
		//String inputName2 =request.getParameter("productId2");
		String action = request.getParameter("action");
		
//		if(inputName != null) 
			if("p1".equals(action)) {
		
				setCookie("myProduct1", GetProductId(action) ,response);
		}
//		else if(inputName2 != null) {
			else if("p2".equals(action)) {
	
				setCookie("myProduct2", GetProductId(action) ,response);
		}
			else if("p3".equals(action)) {
		
					setCookie("myProduct3", GetProductId(action) ,response);
			}
			else if("p4".equals(action)) {
				
				setCookie("myProduct4", GetProductId(action) ,response);
		}
	
			else if("p5".equals(action)) {
				
				setCookie("myProduct5", GetProductId(action) ,response);
		}
	
			else if("p6".equals(action)) {
				
				setCookie("myProduct6", GetProductId(action) ,response);
		}
	
		
		request.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(request, response);	
		
	}
	
	public void setCookie(String key,String val, HttpServletResponse response) {
		//设置cookie
		Cookie cookie = new Cookie(key, val);  
		//设置有效期，默认秒为单位
		cookie. setMaxAge(7*24*60*60);
		//添加cookie到客户端
		response.addCookie(cookie);
	}
	
	public String[] GetProductName( ArrayList<Product> productDate,String fName){
		String[] result = new String[productDate.size()];
		
            for (int i = 0; i < productDate.size(); i++){
            	fName = productDate.get(i).getfName();
            	result[i] = fName;
            }
            return result;
    }
	
	public String[] GetProductPrice( ArrayList<Product> productDate,String fPrice){
		String[] result = new String[productDate.size()];
		
            for (int i = 0; i < productDate.size(); i++){
            	fPrice = (productDate.get(i).getfPrice()) + "";
            	result[i] = fPrice;
            }
            return result;
    }
	
	public String[] GetProductId( ArrayList<Product> productDate,String fProductId){
		String[] result = new String[productDate.size()];
		
            for (int i = 0; i < productDate.size(); i++){
            	fProductId = (productDate.get(i).getfProductId()) + "";
            	result[i] = fProductId;
            }
            return result;
    }
	
	
	public String GetProductId(String inputValue){
		String result = "";
		switch(inputValue) {
			case  "p1" : 
				result = products.get(0).getfProductId() + "";
				break;
			case  "p2" : 
				result = products.get(1).getfProductId() + "";
				break;
			case  "p3" : 
				result = products.get(2).getfProductId() + "";
				break;
			case  "p4" : 
				result = products.get(3).getfProductId() + "";
				break;
			case  "p5" : 
				result = products.get(4).getfProductId() + "";
				break;
			case  "p6" : 
				result = products.get(5).getfProductId() + "";
				break;
		}
		
		return result;
	}
}

