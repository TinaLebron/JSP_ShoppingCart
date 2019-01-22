package tw.com.Controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.com.Model.Product;
import tw.com.dbHelper.DBHelper;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//public DBHelper db = new DBHelper();
	//public  ArrayList<Product> products ;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
     //   db.connectToSQL();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("CartController  doGet()");
		
    	processRequest(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("CartController  doPost()");
		
		//processRequest(request,response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	products = db.selectAllFromProduct("t商品");
//		db.closeAll();
//		

//		BufferedReader br = request.getReader();
	//			String input, body="";
//		while( (input = br.readLine()) != null   ) {
//		
//		}		
		
	
		//out.printf("<h1>%s</h1>", URLDecoder.decode("安安","utf-8") );
		
		
		request.getRequestDispatcher("/WEB-INF/views/cart.jsp").forward(request, response);	
		
	}

}
