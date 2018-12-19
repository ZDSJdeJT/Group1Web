package service;

import java.sql.SQLException;

import dao.UserDao;
import modle.User;
import utils.StrConvert;

public class baseinfoservice {
	public  User result(String user) throws SQLException{
		UserDao userdao = new UserDao();
		User ur = userdao.base(user);
		if(ur==null) {
			ur = new User();
		} 
			ur.setRealname(StrConvert.convertNull(ur.getRealname()));
			ur.setBirthday(StrConvert.convertNull(ur.getBirthday()));
			ur.setCity(StrConvert.convertNull(ur.getCity()));
			ur.setHobby(StrConvert.convertNull(ur.getHobby()));
			ur.setResume(StrConvert.convertNull(ur.getResume()));
			
		
		return ur;
	}
}
