package freamwork.pub.metadata;

import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Target;

@Inherited
@Target(ElementType.FIELD)
public @interface DataBaseColumn {
	
	public String columnfiled() default "";
	public String columntype() default "varchar2";
	public String columnlength() default "200";

}
