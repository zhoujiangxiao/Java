package cn.com.project.db.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;


@Repository
public class BaseDao extends SqlSessionDaoSupport {

	public int delete(String sqlId) {
		int result = getSqlSession().delete(sqlId);
		return result;
	}

	public int delete(String sqlId, Object params) {
		int result = getSqlSession().delete(sqlId, params);
		return result;
	}

	public <T> List<T> getList(String sqlId) {
		List<T> result = getSqlSession().selectList(sqlId);
		return result;
	}

	public <T> List<T> getList(String sqlId, Object params) {
		List<T> result = getSqlSession().selectList(sqlId, params);
		return result;
	}

	public <K, V> Map<K, V> getMap(String sqlId, String mapKey) {
		Map<K, V> result = getSqlSession().selectMap(sqlId, mapKey);
		return result;
	}

	public <K, V> Map<K, V> getMap(String sqlId, String mapKey, Object params) {
		Map<K, V> result = getSqlSession().selectMap(sqlId, params, mapKey);
		return result;
	}

	public <T> T getOne(String sqlId) {
		T result = getSqlSession().selectOne(sqlId);
		return result;
	}

	public <T> T getOne(String sqlId, Object params) {
		T result = getSqlSession().selectOne(sqlId, params);
		return result;
	}

	public int saveOne(String sqlId) {
		int result = getSqlSession().insert(sqlId);
		return result;
	}

	public int saveOne(String sqlId, Object params) {
		int result = getSqlSession().insert(sqlId, params);
		return result;
	}

	public int update(String sqlId) {
		int result = getSqlSession().update(sqlId);
		return result;
	}

	public int update(String sqlId, Object params) {
		int result = getSqlSession().update(sqlId, params);
		return result;
	}

}
