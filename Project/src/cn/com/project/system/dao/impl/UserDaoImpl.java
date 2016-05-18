package cn.com.project.system.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import cn.com.project.db.dao.BaseDao;
import cn.com.project.system.dao.IUserDao;
import cn.com.project.system.model.User;

/**

 * @Title: UserDaoImpl
 
 * @Package cn.com.project.system.dao.impl
 
 * @Description: 
 
 * @author HeDw   

 * @date 2015-5-30 ����5:37:32

 */
@Component
public class UserDaoImpl implements IUserDao{

	@Resource(name = "baseDao")
	protected BaseDao dao;
	
	//jdbcд��
	//private JdbcTemplate jdbcTemplate;
	
	public List<User> selectUserList() {
		return dao.getList("user.selectByExample",null);
	}

	public int deleteUser(String... ids) {
		dao.delete("user.delete",ids);
		return 0;
	}

	public int insertUser(User user) {
		return dao.saveOne("user.insert",user);
	}

	public int updateUser(User user) {
		dao.delete("", user);
		return 0;
	}

	//jdbc
//	public List<User> selectUser() {
//		String sql = "select * from [user] ";
//		RowMapper<User> rowMapper = new RowMapper<User>() {
//			public User mapRow(ResultSet rs, int index) throws SQLException {
//				User employee = new User();
//				return employee;
//			}
//		};
//		List<User> dataList = jdbcTemplate.query(sql, new Object[] {},rowMapper);
//		return dataList;
//	}
}
