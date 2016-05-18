package cn.com.project.system.service;

import java.util.List;

import cn.com.project.system.model.User;

/**

 * @Title: IUserService
 
 * @Package cn.com.project.system.service
 
 * @Description: TODO(用一句话描述该文件做什么)
 
 * @author HeDw   

 * @date 2015-5-30 下午5:38:02

 */

public interface IUserService {

	public List<User> queryUserList();
	
	public int saveUser(User user);
	
	public int removeUser(String... ids);
}
