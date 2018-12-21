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
    //��ѯ���ݿ���Ϣ

    /**
     * ���û��ύע����Ϣ�ǣ���Ҫ�жϸ��û����Ƿ����
     *
     * @param username
     * @return
     */
	public int userExist(String username) {
        Connection conn = DataBaseUtil.getConn();
        //����ָ�����û�����ѯ��Ϣ
        String sql = "select * from USERS where username = ?";

        try {
            //��ȡPreparedStatement��������ִ�����ݿ��ѯ
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, username);
            //ִ�в�ѯ��ȡ�����
            ResultSet resultSet = preparedStatement.executeQuery();
            while (!resultSet.next()) {
                //���û�д����ݣ�֤�����û�������
                return 1;
            }
            //�ͷ���Դ,�󴴽���������
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
     * ���û��ύע����Ϣʱ�����ע��ɹ�xsxs��Ҫ���û�ע�����Ϣ�������ݿ�
     */
    public String saveUser(User user) {
        //��ȡ���ݿ�����
        Connection conn = DataBaseUtil.getConn();
        //������Ϣ��sql���
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
            //ִ�и��²���
            ps.executeUpdate();
            //�ͷ���Դ
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String username = user.getUsername();
        return username;
    }

    /**
     * ע��ɹ����û��ȿ�ͨ��ע����û���������е�¼�����ڳ�����ԣ��˲���ʵ���Ǹ���
     * �û����ṩ���û��������������ݿ���в�ѯ�������ѯ�ɹ������¼�ɹ�
     */
    public User login(String username, String password) {
        //ʵ����һ���û�����
        User user =null;
        Connection conn = DataBaseUtil.getConn();
        String sql = "select * from USERS where username = ? and password = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            //ִ�в�ѯ��ȡ�����
            ResultSet rs = ps.executeQuery();

            //�жϽ�����Ƿ���Ч,�����Ч������û����и�ֵ
            while (rs.next()) {

                user = new User();
                //���û�������и�ֵ
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setPhoneenumber(rs.getString("phonenumber"));
                user.setSex(rs.getString("sex"));

                
            }
            //�ͷ���Դ
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
        //ʵ����һ���û�����
        User user =null;
        Connection conn = DataBaseUtil.getConn();
        String sql = "select * from USERS where username = ? and phonenumber = ?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, phonenumber);
            //ִ�в�ѯ��ȡ�����
            ResultSet rs = ps.executeQuery();

            //�жϽ�����Ƿ���Ч,�����Ч������û����и�ֵ
            while (rs.next()) {

                user = new User();
                //���û�������и�ֵ
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));

                user.setPhoneenumber(rs.getString("phonenumber"));


                
            }
            //�ͷ���Դ
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
  
 
    
    
   