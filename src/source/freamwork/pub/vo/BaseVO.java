package freamwork.pub.vo;

import java.util.HashMap;
import java.util.Map;

import freamwork.pub.metadata.DataBaseInfo;

public abstract class BaseVO<T> {

	private Class<T> t;
	public BaseVO(Class<T> cla)
	{
		this.t = cla;
	}
	private Map<String,Object> _datasavemap = new HashMap<String,Object>();
	public void setAttributeValue(String key,Object obj)
	{
		this._datasavemap.put(key, obj);
	}
	public Object getAttributeValue(String key)
	{
		return this._datasavemap.get(key);
	}
	public String getTableName()
	{
		DataBaseInfo info = t.getClass().getAnnotation(DataBaseInfo.class); 
		return info.tablename();
		
	}
	public String getPrimaryKey()
	{
		DataBaseInfo info = t.getClass().getAnnotation(DataBaseInfo.class); 
		return (String)this.getAttributeValue(info.pkfiled());
	}
	public String getPrimaryKeyFiled()
	{
		DataBaseInfo info = t.getClass().getAnnotation(DataBaseInfo.class); 
		return info.pkfiled();
	}
}
