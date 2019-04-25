package net.koreate.service;

import java.util.List;

import net.koreate.vo.Criteria;
import net.koreate.vo.OrderVo;
import net.koreate.vo.PageMaker;

public interface WorkingService {

	List<OrderVo> orderGetMethod();
	List<OrderVo> materialsGetMethod();
	List<OrderVo> wearingGetMethod();
	List<OrderVo> releaseGetMethod();
	PageMaker getPageMaker(Criteria cri);
	void orderWritePostMethod(OrderVo vo);
	void materialsWritePostMethod(OrderVo vo);
	void wearingWritePostMethod(OrderVo vo);
	void releaseWritePostMethod(OrderVo vo);

}
