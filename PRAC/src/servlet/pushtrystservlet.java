package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modle.User;
import utils.DataBaseUtil;

/**
 * Servlet implementation class pushtrystservlet
 */
@WebServlet("/pushtrystservlet")
public class pushtrystservlet extends HttpServlet {
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

	        String theme = req.getParameter("theme");
	        String pay = req.getParameter("pay");
	        String trysttime = req.getParameter("trysttime");
	        String place = req.getParameter("place");
	        String trystdescribe = req.getParameter("trystdescribe");
            String username = (String)req.getSession().getAttribute("username");
	        User user  = new User();
            //对用户对象的属性赋值
            user.setTheme(theme);
            user.setBirthday(pay);
            user.setCity(trysttime);
            user.setHobby(place);
            user.setResume(trystdescribe);
            user.setUsername(username);
	        Connection conn = DataBaseUtil.getConn();
	        String sql = "UPDATE tryst SET theme = ?,pay=?, trysttime =?,place=?,trystdescribe=? WHERE username = ?";
	        try {
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, theme);
	            ps.setString(2, pay);
	            ps.setString(3, trysttime);
	            ps.setString(4, place);
	            ps.setString(5, trystdescribe);
	            ps.setString(6, username);
	            //执行更新操作
	            ps.executeUpdate();
	            System.out.println("约会信息存储成功");
	            //释放资源
	            ps.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
            req.getRequestDispatcher("pushtrystsuccessful.jsp").forward(req, resp);
	    }
}