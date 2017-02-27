package freamwork.pub.vo;

public class BaseAggVO<P extends BaseVO<P>,C extends BaseVO<C>> {

	private P parent;
	private C child;
}
