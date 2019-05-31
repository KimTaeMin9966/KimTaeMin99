package net.koreate.dao;

import java.util.List;

import net.koreate.vo.Criteria;
import net.koreate.vo.OrderVo;

public interface WorkingDao {

	List<OrderVo> orderGetMethod(String type);
	List<OrderVo> materialsGetMethod(String type);
	List<OrderVo> wearingGetMethod(String type);
	List<OrderVo> releaseGetMethod(String type);
	int ordersCount(Criteria cri);
	void orderWritePostMethod(OrderVo vo);
	void materialsWritePostMethod(OrderVo vo);
	void wearingWritePostMethod(OrderVo vo);
	void releaseWritePostMethod(OrderVo vo);
	
}
