package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import modle.User;
import utils.DataBaseUtil;

public class UserDao {
    //查询数据库信息

    /**
     * 在用户提交注册信息是，需要判断该用户名是否存在
     *
     * @param username
     * @return
     */
	public int userExist(String username) {
        Connection conn = DataBaseUtil.getConn();
        //根据指定的用户名查询信息
        String sql = "select * from USERS where username = ?";

        try {
            //获取PreparedStatement对象，用于执行数据库查询
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, username);
            //执行查询获取结果集
            ResultSet resultSet = preparedStatement.executeQuery();
            while (!resultSet.next()) {
                //如果没有此数据，证明该用户名可用
                return 1;
            }
            //释放资源,后创建的先销毁
            resultSet.close();
            preparedStatement.close();
        } catch (SQLException e) {
            return -1;
        } finally {
            DataBaseUtil.closeConn(conn);
        }
        return -1;
    }


    /**
     * 在用户提交注册信息时，如果注册成功xsxs需要将用户注册的信息存入数据库
     */
    public void saveUser(User user) {
        //获取数据库连接
        Connection conn = DataBaseUtil.getConn();
        //插入信息的sql语句
        String sql = "insert into USERS(username,password,email,phonenumber,sex) values(?,?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPhonenumber());
            ps.setString(5, user.getSex());
            //执行更新操作
            ps.executeUpdate();
            //释放资源
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /**
     * 注册成功后，用户既可通过注册的用户及密码进行登录，对于程序而言，此操作实质是根据
     * 用户所提供的用户名及密码在数据库进行查询，如果查询成功，则登录成功
     */
    public User login(String username, String password) {
        //实例化一个用户对象
        User user =null;
        Connection conn = DataBaseUtil.getConn();
        String sql = "select * from USERS where username = ? and password = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            //执行查询获取结果集
            ResultSet rs = ps.executeQuery();

            //判断结果集是否有效,如果有效，则对用户进行赋值
            while (rs.next()) {

                user = new User();
                //对用户对象进行复制
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setPhoneenumber(rs.getString("phonenumber"));
                user.setSex(rs.getString("sex"));

                
            }
            //释放资源
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DataBaseUtil.closeConn(conn);
        }

        return user;
    }
    
    
    
    public User changpsw(String username, String phonenumber) {
        //实例化一个用户对象
        User user =null;
        Connection conn = DataBaseUtil.getConn();
        String sql = "select * from USERS where username = ? and phonenumber = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, phonenumber);
            //执行查询获取结果集
            ResultSet rs = ps.executeQuery();

            //判断结果集是否有效,如果有效，则对用户进行赋值
            while (rs.next()) {

                user = new User();
                //对用户对象进行复制
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));

                user.setPhoneenumber(rs.getString("phonenumber"));


                
            }
            //释放资源
            rs.close();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            DataBaseUtil.closeConn(conn);
        }

        return user;
    }
}



