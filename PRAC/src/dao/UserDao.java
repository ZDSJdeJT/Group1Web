package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


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
    public String saveUser(User user) {
        //获取数据库连接
        Connection conn = DataBaseUtil.getConn();
        //插入信息的sql语句
        String sql = "insert into USERS(username,password,email,phonenumber,sex) values(?,?,?,?,?);insert into baseinfo(username) values(?);insert into eduinfo(username) values(?);insert into workinfo(username) values(?);insert into tryst(username) values(?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPhonenumber());
            ps.setString(5, user.getSex());
            ps.setString(6, user.getUsername());
            ps.setString(7, user.getUsername());
            ps.setString(8, user.getUsername());
            ps.setString(9, user.getUsername());
            //执行更新操作
            ps.executeUpdate();
            //释放资源
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String username = user.getUsername();
        return username;
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
                //对用户对象进行赋值
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
                //对用户对象进行赋值
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
    
    public User base(String username) {
		Statement stmt = null;
		ResultSet rs = null;
		try {
	        Connection conn = DataBaseUtil.getConn();
			stmt = conn.createStatement();
			String sql = "select*from baseinfo where username='"+username+"'";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				User user = new User();
				user.setRealname(rs.getString("realname"));
				user.setBirthday(rs.getString("birthday"));
				user.setCity(rs.getString("city"));
				user.setHobby(rs.getString("hobby"));
				user.setResume(rs.getString("resume"));
				System.out.println(user.toString());
				return user;
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {

		}
		return null;
	}
    
    
    public User edu(String username) {
		Statement stmt = null;
		ResultSet rs = null;
		try {
	        Connection conn = DataBaseUtil.getConn();
			stmt = conn.createStatement();
			String sql = "select*from eduinfo where username='"+username+"'";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				User user = new User();
				user.setCollege(rs.getString("college"));
				user.setMajor(rs.getString("major"));
				user.setTime(rs.getString("time"));
				user.setTimeend(rs.getString("timeend"));
				user.setHistory(rs.getString("history"));
				user.setSkill(rs.getString("skill"));
				user.setHonor(rs.getString("honor"));
				System.out.println(user.toString());
				return user;
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {

		}
		return null;
	}
    
    
    public User work(String username) {
		Statement stmt = null;
		ResultSet rs = null;
		try {
	        Connection conn = DataBaseUtil.getConn();
			stmt = conn.createStatement();
			String sql = "select*from workinfo where username='"+username+"'";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				User user = new User();
				user.setCompany(rs.getString("company"));
				user.setJob(rs.getString("job"));
				user.setWorktime(rs.getString("worktime"));
				user.setWorkend(rs.getString("workend"));
				user.setWorkcity(rs.getString("workcity"));
				user.setSalary(rs.getString("salary"));
				user.setDescribe(rs.getString("describe"));
				System.out.println(user.toString());
				return user;
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {

		}
		return null;
	}

    
    public ArrayList<User> findAll(){
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<User> list = new ArrayList<User>();
		try {
			conn = DataBaseUtil.getConn();
			stmt = conn.createStatement();
			String sql = "SELECT*FROM tryst";
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				User user = new User();
				user.setUsername(rs.getString("username"));
				user.setTheme(rs.getString("theme"));
				user.setPay(rs.getString("pay"));
				user.setTrysttime(rs.getString("trysttime"));
				user.setPlace(rs.getString("place"));
				user.setTrystdescribe(rs.getString("trystdescribe"));
				list.add(user);
			}
			return list;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {

		}
		return null;
	}
}
  
 
    
    
   