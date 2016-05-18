package cn.com.project.db.dialect;

public class MysqlDialect extends Dialect
{
  public boolean supportsLimitOffset()
  {
    return true;
  }

  public boolean supportsLimit()
  {
    return true;
  }

  public String getLimitSql(String sql, int offset, String offsetPlaceholder, int limit, String limitPlaceholder)
  {
    if (offset > 0) {
      return sql + " limit " + offsetPlaceholder + "," + limitPlaceholder;
    }
    return sql + " limit " + limitPlaceholder;
  }
}