package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import modle.User;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet("/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        UserDao userDao = new UserDao();
        //���������ѯ�û�
        User user  = userDao.login(username, password);
        //�ж�user�Ƿ�Ϊ��
        if (user != null) {
            //���û��Ķ���ŵ�session��
            req.getSession().setAttribute("user", user);
            //ת����result.jspҳ��
            req.getRequestDispatcher("A home.jsp").forward(req, resp);
            /**
             response.sendRedirect(url)��ת��ָ����URL��ַ������һ���µ�request������Ҫ���ݲ���ֻ����url��Ӳ�
             �����磺
             url?id=1.
             request.getRequestDispatcher(url).forward(request,response)��ֱ�ӽ�����ת����ָ��URL�����Ը�����
             �ܹ�ֱ�ӻ����һ����������ݣ�Ҳ����˵��������ת����request����ʼ�մ��ڣ��������´�������
             sendRedirect()���½�request����������һ��request�е����ݻᶪʧ��
             */
        }else {
            //��¼ʧ��
            req.getRequestDispatcher("loginunsuccessful.jsp").forward(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}

