package cn.com.project.system.dao;

import java.util.List;

import cn.com.project.system.model.User;

/**

 * @Title: IUserDao
 
 * @Package cn.com.project.system.dao
 
 * @Description: TODO(用一句话描述该文件做什么)
 
 * @author HeDw   

 * @date 2015-5-30 下午5:37:44

 */

public interface IUserDao {

	public List<User> selectUserList();
	
	public int insertUser(User user);
	
	public int updateUser(User user);
	
	public int deleteUser(String... ids);
	
}
