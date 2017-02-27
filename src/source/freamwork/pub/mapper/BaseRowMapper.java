package freamwork.pub.mapper;


import java.lang.reflect.Field;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.BeanUtils;
import org.springframework.jdbc.core.RowMapper;

import freamwork.pub.metadata.DataBaseColumn;
import freamwork.pub.vo.BaseVO;

public class BaseRowMapper<T extends BaseVO<T>> implements RowMapper<T> {
	
	private Class<T> classes;

	public BaseRowMapper(Class<T> cla) {
		this.classes = cla;
	}

	@Override
	public T mapRow(ResultSet rs, int rowNumber) throws SQLException {
		// TODO Auto-generated method stub
		T mappedObject = BeanUtils.instantiateClass(this.classes);

		Field[] fields = mappedObject.getClass().getFields();
		for(Field fd : fields)
		{
			DataBaseColumn colinfo = fd.getAnnotation(DataBaseColumn.class);
			if(colinfo!=null)
			{
				if(colinfo.columntype().equals("varchar2"))
				{
					mappedObject.setAttributeValue(fd.getName(), rs.getString(colinfo.columnfiled()));
				}
				else if(colinfo.columntype().equals("bigdecimal"))
				{
					mappedObject.setAttributeValue(fd.getName(), rs.getBigDecimal(colinfo.columnfiled()));
				}
				else if(colinfo.columntype().equals("int"))
				{
					mappedObject.setAttributeValue(fd.getName(), rs.getInt(colinfo.columnfiled()));
				}
				else if(colinfo.columntype().equals("date"))
				{
					mappedObject.setAttributeValue(fd.getName(), rs.getDate(colinfo.columnfiled()));
				}
				else if(colinfo.columntype().equals("timestamp"))
				{
					mappedObject.setAttributeValue(fd.getName(), rs.getTimestamp(colinfo.columnfiled()));
				}
				else if(colinfo.columntype().equals("blob"))
				{
					mappedObject.setAttributeValue(fd.getName(), rs.getBlob(colinfo.columnfiled()).toString());
				}
				else if(colinfo.columntype().equals("clob"))
				{
					mappedObject.setAttributeValue(fd.getName(), rs.getClob(colinfo.columnfiled()).toString());
					
				}
				else
				{
					mappedObject.setAttributeValue(fd.getName(), rs.getString(colinfo.columnfiled()));
				}
			}
			
		}
		
		return mappedObject;
	}

}
