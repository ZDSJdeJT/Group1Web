package service;

import java.sql.SQLException;

import dao.UserDao;
import modle.User;
import utils.StrConvert;

public class workservice {
	public  User result(String user) throws SQLException{
		UserDao userdao = new UserDao();
		User ur = userdao.work(user);
		if(ur==null) {
			ur = new User();
		} 
			ur.setCompany(StrConvert.convertNull(ur.getCompany()));
			ur.setJob(StrConvert.convertNull(ur.getJob()));
			ur.setWorktime(StrConvert.convertNull(ur.getWorktime()));
			ur.setWorkend(StrConvert.convertNull(ur.getWorkend()));
			ur.setWorkcity(StrConvert.convertNull(ur.getWorkcity()));
			ur.setSalary(StrConvert.convertNull(ur.getSalary()));
			ur.setDescribe(StrConvert.convertNull(ur.getDescribe()));
			
		
		return ur;
	}
}