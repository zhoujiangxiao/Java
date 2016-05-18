package cn.com.project.system.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import cn.com.project.context.ProjectContextFactory;
import cn.com.project.system.dao.IUserDao;
import cn.com.project.system.model.User;
import cn.com.project.system.service.IUserService;

/**

 * @Title: UserService
 
 * @Package cn.com.project.system.service.impl
 
 * @Description: TODO(��һ�仰�������ļ���ʲô)
 
 * @author HeDw   

 * @date 2015-5-30 ����5:38:20

 */
@Component
public class UserServiceImpl implements IUserService{

	IUserDao dao = (IUserDao)ProjectContextFactory.getBean("userDaoImpl");
	
	public List<User> queryUserList() {
		return dao.selectUserList();
	}

	public int removeUser(String... ids) {
		return dao.deleteUser(ids);
	}

	public int saveUser(User user) {
		if(user.getId()!=null){
			return dao.updateUser(user);
		}else{
			return dao.insertUser(user);
		}
	}

}
