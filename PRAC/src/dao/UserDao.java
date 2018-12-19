package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
    public void saveUser(User user) {
        //��ȡ���ݿ�����
        Connection conn = DataBaseUtil.getConn();
        //������Ϣ��sql���
        String sql = "insert into USERS(username,password,email,phonenumber,sex) values(?,?,?,?,?)";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            ps.setString(4, user.getPhonenumber());
            ps.setString(5, user.getSex());
            //ִ�и��²���
            ps.executeUpdate();
            //�ͷ���Դ
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
                //���û�������и���
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
                //���û�������и���
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
}



