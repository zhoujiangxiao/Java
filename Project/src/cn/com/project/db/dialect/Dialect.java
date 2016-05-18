package cn.com.project.db.dialect;

public class Dialect
{
  public boolean supportsLimit()
  {
    return false;
  }

  public boolean supportsLimitOffset() {
    return supportsLimit();
  }

  public String getLimitSql(String sql, int offset, int limit)
  {
    return getLimitSql(sql, offset, Integer.toString(offset), limit, Integer.toString(limit));
  }

  public String getLimitSql(String sql, int offset, String offsetPlaceholder, int limit, String limitPlaceholder)
  {
    throw new UnsupportedOperationException("paged queries not supported");
  }
}