package net.koreate.dao;

import java.util.List;

import net.koreate.vo.Criteria;
import net.koreate.vo.OrderVo;

public interface WorkingDao {

	List<OrderVo> orderGetMethod();
	int ordersCount(Criteria cri);
	void orderWritePostMethod(OrderVo vo);

}
