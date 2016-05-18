package cn.com.project.system.service;

import java.util.List;

import cn.com.project.system.model.User;

/**

 * @Title: IUserService
 
 * @Package cn.com.project.system.service
 
 * @Description: TODO(��һ�仰�������ļ���ʲô)
 
 * @author HeDw   

 * @date 2015-5-30 ����5:38:02

 */

public interface IUserService {

	public List<User> queryUserList();
	
	public int saveUser(User user);
	
	public int removeUser(String... ids);
}
