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
 * Servlet implementation class workinfoservlet
 */
@WebServlet("/workinfoservlet")
public class workinfoservlet extends HttpServlet {
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

        String company = req.getParameter("company");
        String job = req.getParameter("job");
        String worktime = req.getParameter("worktime");
        String workend = req.getParameter("workend");
        String workcity = req.getParameter("workcity");
        String salary = req.getParameter("salary");
        String describe = req.getParameter("describe");
        String username = (String)req.getSession().getAttribute("username");
        User user  = new User();
        //对用户对象的属性赋值
        user.setCompany(company);
        user.setJob(job);
        user.setWorktime(worktime);
        user.setWorkend(workend);
        user.setWorkcity(workcity);
        user.setSalary(salary);
        user.setDescribe(describe);
        user.setUsername(username);
        Connection conn = DataBaseUtil.getConn();
        String sql = "UPDATE workinfo SET company=?,job=?, worktime =?,workend =?,workcity=?,salary=?,describe=? WHERE username = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, company);
            ps.setString(2, job);
            ps.setString(3, worktime);
            ps.setString(4, workend);
            ps.setString(5, workcity);
            ps.setString(6, salary);
            ps.setString(7, describe);
            ps.setString(8, username);
            //执行更新操作
            ps.executeUpdate();
            System.out.println("更新工作信息成功");
            //释放资源
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("work.jsp").forward(req, resp);
    }
}