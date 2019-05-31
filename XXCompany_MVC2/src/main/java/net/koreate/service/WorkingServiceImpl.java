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
		String type = "order";
		return dao.orderGetMethod(type);
	}

	@Override
	public List<OrderVo> materialsGetMethod() {
		// TODO Auto-generated method stub
		String type = "materials";
		return dao.materialsGetMethod(type);
	}

	@Override
	public List<OrderVo> wearingGetMethod() {
		// TODO Auto-generated method stub
		String type = "wearing";
		return dao.wearingGetMethod(type);
	}

	@Override
	public List<OrderVo> releaseGetMethod() {
		// TODO Auto-generated method stub
		String type = "release";
		return dao.releaseGetMethod(type);
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

	@Override
	public void materialsWritePostMethod(OrderVo vo) {
		// TODO Auto-generated method stub
		dao.materialsWritePostMethod(vo);
	}

	@Override
	public void wearingWritePostMethod(OrderVo vo) {
		// TODO Auto-generated method stub
		dao.wearingWritePostMethod(vo);
	}

	@Override
	public void releaseWritePostMethod(OrderVo vo) {
		// TODO Auto-generated method stub
		dao.releaseWritePostMethod(vo);
	}
	
}
