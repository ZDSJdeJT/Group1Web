package service;

import java.sql.SQLException;

import dao.UserDao;
import modle.User;
import utils.StrConvert;

public class eduservice {
	public  User result(String user) throws SQLException{
		UserDao userdao = new UserDao();
		User ur = userdao.edu(user);
		if(ur==null) {
			ur = new User();
		} 
			ur.setCollege(StrConvert.convertNull(ur.getCollege()));
			ur.setMajor(StrConvert.convertNull(ur.getMajor()));
			ur.setTime(StrConvert.convertNull(ur.getTime()));
			ur.setTimeend(StrConvert.convertNull(ur.getTimeend()));
			ur.setHistory(StrConvert.convertNull(ur.getHistory()));
			ur.setSkill(StrConvert.convertNull(ur.getSkill()));
			ur.setHonor(StrConvert.convertNull(ur.getHonor()));
			
		
		return ur;
	}
}