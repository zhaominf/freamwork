package freamwork.pub.vo;

import freamwork.pub.metadata.DataBaseColumn;
import freamwork.pub.metadata.DataBaseInfo;

@DataBaseInfo(tablename="testtable",pkfiled="pk_test")
public class TestVO extends BaseVO<TestVO> {
	
	public TestVO()
	{
		super(TestVO.class);
	}
	@DataBaseColumn(columnfiled="pk_test")
	public String pk_test = "";
	@DataBaseColumn(columnfiled="code")
	public String code = "";
	@DataBaseColumn(columnfiled="name")
	public String name = "";
}
