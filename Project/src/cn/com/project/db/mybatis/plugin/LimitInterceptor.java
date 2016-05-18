package cn.com.project.db.mybatis.plugin;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.ibatis.executor.parameter.DefaultParameterHandler;
import org.apache.ibatis.executor.parameter.ParameterHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlSource;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;
import org.apache.log4j.Logger;

import cn.com.project.db.dialect.Dialect;
import cn.com.project.db.page.Page;


@Intercepts({@org.apache.ibatis.plugin.Signature(type=org.apache.ibatis.executor.Executor.class, method="query", args={MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class})})
public class LimitInterceptor implements Interceptor
{
  private static final Logger log = Logger.getLogger(LimitInterceptor.class);
  private static int MAPPED_STATEMENT_INDEX = 0;
  private static int PARAMETER_INDEX = 1;
  private static int ROWBOUNDS_INDEX = 2;
  private Dialect dialect;

  public Object intercept(Invocation invocation)
    throws Throwable
  {
	Object[] queryArgs = invocation.getArgs();
	MappedStatement ms = (MappedStatement)queryArgs[MAPPED_STATEMENT_INDEX];
    Object parameter = queryArgs[PARAMETER_INDEX];
    if(parameter != null && dialect!= null){
    	if(parameter instanceof Page){
    		 Page page = (Page) parameter;
    		 int offset =page.getPageStart();
     		 int limit = page.getPageEnd() == 0 ? page.getPageSize() : page.getPageEnd();
    		 if ((this.dialect.supportsLimit()) && ((offset != 0) || (limit != 2147483647))) {
	    		BoundSql boundSql = ms.getBoundSql(parameter);
	    	    String sql = boundSql.getSql().trim();
	    	    String pageSql = sql;
	    	    if (this.dialect.supportsLimitOffset()) {
	    	    	pageSql = this.dialect.getLimitSql(sql, offset, limit);
	    	        offset = 0;
	    	      } else {
	    	    	  pageSql = this.dialect.getLimitSql(sql, 0, limit);
	    	      }
	    	      limit = 2147483647;
	    	    Connection conn = (Connection) ms.getConfiguration().getEnvironment().getDataSource().getConnection();
	    	    setPageInfo(sql, conn, page,ms,boundSql);
	    	    queryArgs[ROWBOUNDS_INDEX] = new RowBounds(offset, limit);
	    	    BoundSql newBoundSql = new BoundSql(ms.getConfiguration(), pageSql, boundSql.getParameterMappings(), boundSql.getParameterObject());
	    	    MappedStatement newMs = copyFromMappedStatement(ms, new BoundSqlSqlSource(newBoundSql));
	    	    queryArgs[MAPPED_STATEMENT_INDEX] = newMs;
    		}
    	}
    }
    return invocation.proceed();
  }


  private MappedStatement copyFromMappedStatement(MappedStatement ms, SqlSource newSqlSource)
  {
    MappedStatement.Builder builder = new MappedStatement.Builder(ms.getConfiguration(), ms.getId(), newSqlSource, ms.getSqlCommandType());

    builder.resource(ms.getResource());
    builder.fetchSize(ms.getFetchSize());
    builder.statementType(ms.getStatementType());
    builder.keyGenerator(ms.getKeyGenerator());

    String[] keyProperties = ms.getKeyProperties();
    if ((keyProperties != null) && (keyProperties.length > 0))
    {
      StringBuffer keyPropertiesValue = new StringBuffer();
      for (String key : keyProperties) {
        keyPropertiesValue.append(key).append(",");
      }
      String keyPropertiesArray = keyPropertiesValue.substring(0, keyPropertiesValue.length() - 1);
      builder.keyProperty(keyPropertiesArray);
    } else {
      builder.keyProperty(null);
    }

    builder.timeout(ms.getTimeout());

    builder.parameterMap(ms.getParameterMap());

    builder.resultMaps(ms.getResultMaps());
    builder.resultSetType(ms.getResultSetType());

    builder.cache(ms.getCache());
    builder.flushCacheRequired(ms.isFlushCacheRequired());
    builder.useCache(ms.isUseCache());

    return builder.build();
  }

  public Object plugin(Object target) {
    return Plugin.wrap(target, this);
  }

   void setPageInfo(String sql,Connection conn, Page page,MappedStatement mappedStatement, BoundSql boundSql){
	   String countSql = "select count(0) from (" + sql + ") a";  
       PreparedStatement countStmt = null;  
       ResultSet rs = null;  
       try {  
           countStmt = conn.prepareStatement(countSql);
           setParameters(countStmt, mappedStatement, boundSql, boundSql.getParameterObject());  
           rs = countStmt.executeQuery();
           int totalCount = 0;  
           if (rs.next()) {
               totalCount = rs.getInt(1);  
           }
           page.setTotalCount(totalCount);  
           int totalPage = totalCount / page.getPageSize() + ((totalCount % page.getPageSize() == 0) ? 0 : 1);  
           page.setTotalPage(totalPage);
       } catch (SQLException e) {  
//           log.error("exception", e); 
       } finally {
           try { 
        	   if(null != rs){        		   
        		   rs.close();  
        	   }
           } catch (SQLException e) {  
//               log.error("exception", e);  
           }  
           try {  
        	   if(null != countStmt){        		   
        		   countStmt.close();  
        	   }
           } catch (SQLException e) {  
//               log.error("exception", e);  
           }  
           try {  
        	   if(null != conn){        		   
        		   conn.close();  
        	   }
           } catch (SQLException e) {  
//        	   log.error("exception", e);  
           }  
       }  
  }
   
   private void setParameters(PreparedStatement ps, MappedStatement mappedStatement, BoundSql boundSql,  
           Object parameterObject) throws SQLException {  
       ParameterHandler parameterHandler = new DefaultParameterHandler(mappedStatement, parameterObject, boundSql);  
       parameterHandler.setParameters(ps);  
   } 
  
  public void setProperties(Properties properties) {
    String dialectClass = properties.getProperty("dialectClass");

    if ((dialectClass != null) && (!dialectClass.trim().isEmpty())) {
      try {
        this.dialect = ((Dialect)Class.forName(dialectClass).newInstance());
      } catch (Exception e) {
        throw new RuntimeException("cannot create dialect instance by dialectClass:" + dialectClass, e);
      }

    }
  }

  public static class BoundSqlSqlSource implements SqlSource
  {
    BoundSql boundSql;

    public BoundSqlSqlSource(BoundSql boundSql)
    {
      this.boundSql = boundSql;
    }

    public BoundSql getBoundSql(Object parameterObject) {
      return this.boundSql;
    }
  }
}