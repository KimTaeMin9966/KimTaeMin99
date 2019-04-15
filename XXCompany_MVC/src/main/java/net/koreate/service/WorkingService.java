package net.koreate.service;

import java.util.List;

import net.koreate.vo.Criteria;
import net.koreate.vo.OrderVo;
import net.koreate.vo.PageMaker;

public interface WorkingService {

	List<OrderVo> orderGetMethod();
	PageMaker getPageMaker(Criteria cri);
	void orderWritePostMethod(OrderVo vo);

}
