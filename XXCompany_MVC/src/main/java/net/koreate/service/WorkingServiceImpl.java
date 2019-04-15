package net.koreate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.WorkingDao;
import net.koreate.vo.Criteria;
import net.koreate.vo.OrderVo;
import net.koreate.vo.PageMaker;

@Service
public class WorkingServiceImpl implements WorkingService {
	
	@Inject
	WorkingDao dao;

	@Override
	public List<OrderVo> orderGetMethod() {
		// TODO Auto-generated method stub
		return dao.orderGetMethod();
	}

	@Override
	public PageMaker getPageMaker(Criteria cri) {
		// TODO Auto-generated method stub
		cri.setPerPageNum(5);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		int cnt = dao.ordersCount(cri);
		pageMaker.setTotalCount(cnt);
		return pageMaker;
	}

	@Override
	public void orderWritePostMethod(OrderVo vo) {
		// TODO Auto-generated method stub
		dao.orderWritePostMethod(vo);
	}
	
}
