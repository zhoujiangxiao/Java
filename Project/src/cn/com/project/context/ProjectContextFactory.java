package cn.com.project.context;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * 
 * @Title: ProjectContextFactory
 * 
 * @Package cn.com.project.context
 * 
 * @Description: TODO(��һ�仰�������ļ���ʲô)
 * 
 * @author HeDw
 * 
 * @date 2015-5-30 ����5:53:32
 */

public class ProjectContextFactory {

	private static ApplicationContext instance;

	private ProjectContextFactory() {}

	public static ApplicationContext getInstance() {
		if (instance == null) {
			instance = new ClassPathXmlApplicationContext("ApplicationContext.xml");
		}
		return instance;
	}

	public static Object getBean(String name) {
		return getInstance().getBean(name);
	}
}
