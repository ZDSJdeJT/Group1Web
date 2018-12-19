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
 * Servlet implementation class eduinfoservlet
 */
@WebServlet("/eduinfoservlet")
public class eduinfoservlet extends HttpServlet {
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

        String college = req.getParameter("college");
        String major = req.getParameter("major");
        String time = req.getParameter("time");
        String timeend = req.getParameter("timeend");
        String history = req.getParameter("history");
        String skill = req.getParameter("skill");
        String honor = req.getParameter("honor");
        String username = (String)req.getSession().getAttribute("username");
        User user  = new User();
        //对用户对象的属性赋值
        user.setCollege(college);
        user.setMajor(major);
        user.setTime(time);
        user.setTimeend(timeend);
        user.setHistory(history);
        user.setSkill(skill);
        user.setHonor(honor);
        user.setUsername(username);
        Connection conn = DataBaseUtil.getConn();
        String sql = "UPDATE eduinfo SET college=?,major=?, time =?,timeend =?,history=?,skill=?,honor=? WHERE username = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, college);
            ps.setString(2, major);
            ps.setString(3, time);
            ps.setString(4, timeend);
            ps.setString(5, history);
            ps.setString(6, skill);
            ps.setString(7, honor);
            ps.setString(8, username);
            //执行更新操作
            ps.executeUpdate();
            System.out.println("更新教育信息成功");
            //释放资源
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("edu.jsp").forward(req, resp);
    }
}