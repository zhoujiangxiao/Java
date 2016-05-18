package cn.com.project.system.dao.test;

import cn.com.project.context.ProjectContextFactory;
import cn.com.project.system.service.IUserService;


/**

 * @Title: Test
 
 * @Package cn.com.project.system.dao.test
 
 * @Description: TODO(用一句话描述该文件做什么)
 
 * @author HeDw   

 * @date 2015-5-30 下午5:47:58

 */

public class Test {

	public static void main(String[] args) {
		try {
			IUserService service = (IUserService) ProjectContextFactory.getBean("userServiceImpl");
			System.out.println(service.queryUserList());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
