package tw.com.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.com.Model.Member;
import tw.com.dbHelper.DBHelper;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DBHelper db = new DBHelper();
    Member member = new Member();
	
    public LoginController() {
        super();
        db.connectToSQL();
    }

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("LoginController()  doGet()");
	    request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);	
		//processRequest(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("LoginController()  doPost()");
		
		processRequest(request,response);
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		ArrayList<Member> memberDate ;
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String error = request.getParameter("error");
		
		memberDate = db.selectAllFromMember("t會員");
		
		if(username == null && password == null)
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);	
		
		boolean getMember = GetMember(memberDate,username,password);
		
			if(getMember){
				request.getRequestDispatcher("/HomeController").forward(request, response);	
				//request.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(request, response);	
			}
		else {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('Username or Password is wrong'); window.location='/Shopping' </script>");
			out.flush();
			out.close();
				
				request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);	
		}
	}
	
	
    public boolean GetMember( ArrayList<Member> memberDate,String username,String password){
    	boolean result = true;
        System.out.println("getfAccount "+memberDate.get(0).getfAccount());
        System.out.println(" getfPassword "+memberDate.get(0).getfPassword());
    	
            for (int i = 0; i < memberDate.size(); i++)
            {
                if (memberDate.get(i).getfAccount().equals(username) && memberDate.get(i).getfPassword().equals(password))
                {
                	result = true;
                    break;
                }
                else
                {
                	result = false;
                }
            }
     
        return result;

    }
 
}
