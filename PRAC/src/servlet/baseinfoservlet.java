package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modle.User;
import utils.DataBaseUtil;
/**
 * Servlet implementation class baseservlet
 */
@WebServlet("/baseinfoservlet")
public class baseinfoservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	  @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        doPost(req, resp);
	    }

		/**
		 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
		 */
	    @Override
	    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	resp.setContentType("text/html;charset=utf-8");
	        req.setCharacterEncoding("utf-8");

	        String realname = req.getParameter("realname");
	        String birthday = req.getParameter("birthday");
	        String city = req.getParameter("city");
	        String hobby = req.getParameter("hobby");
	        String resume = req.getParameter("resume");
            String username = (String)req.getSession().getAttribute("username");
	        User user  = new User();
            //对用户对象的属性赋值
            user.setRealname(realname);
            user.setBirthday(birthday);
            user.setCity(city);
            user.setHobby(hobby);
            user.setResume(resume);
            user.setUsername(username);
	        Connection conn = DataBaseUtil.getConn();
	        String sql = "UPDATE baseinfo SET realname = ?,birthday=?, city =?,hobby=?,resume=? WHERE username = ?";
	        try {
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, realname);
	            ps.setString(2, birthday);
	            ps.setString(3, city);
	            ps.setString(4, hobby);
	            ps.setString(5, resume);
	            ps.setString(6, username);
	            //执行更新操作
	            ps.executeUpdate();
	            System.out.println("更新基本信息成功");
	            //释放资源
	            ps.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
            req.getRequestDispatcher("base.jsp").forward(req, resp);
	    }
}