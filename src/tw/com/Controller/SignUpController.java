package tw.com.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUpController
 */
@WebServlet("/SignUpController")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PreparedStatement pstmt = null;
		
		String strAccount = request.getParameter("account").toString();
		String strPassword = request.getParameter("password").toString();
		String strName = request.getParameter("name").toString();
		
		String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
		String url = "jdbc:sqlserver://localhost:1433;databaseName=northwind;";
		String username = "sa";
		String password = "as";
		String sql = "Insert into t會員 (fName, fAccount, fPassword) VALUES (?, ?, ?)";	
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try {
			Connection conn = DriverManager.getConnection(url,username,password);//建立連線物件
			Statement st = conn.createStatement();//建立sql執行物件
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, strName);
			pstmt.setString(2, strAccount);
			pstmt.setString(3, strPassword);
			ResultSet rs = st.executeQuery(sql);//執行sql語句並返回結果集
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				response.sendRedirect(""); //成功,導回登入畫面
			} else {
				response.sendRedirect("/Shopping/SingUpController"); //失敗,導回註冊畫面
			}
		} catch (SQLException s1) {
			s1.printStackTrace();
		}		
	}	

}
