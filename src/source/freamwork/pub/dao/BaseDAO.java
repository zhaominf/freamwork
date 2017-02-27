package freamwork.pub.dao;

import java.util.List;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import freamwork.pub.mapper.BaseRowMapper;
import freamwork.pub.vo.BaseVO;

public class BaseDAO extends JdbcDaoSupport{
	
	public <T extends BaseVO<T>> List<T> queryByCloud(String sql,Class<T> cla)
	{
		return this.getJdbcTemplate().query(sql, new BaseRowMapper<T>(cla));
	}

}
