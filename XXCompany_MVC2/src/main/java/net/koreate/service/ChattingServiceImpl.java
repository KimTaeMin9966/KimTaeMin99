package net.koreate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.ChattingDao;
import net.koreate.vo.ChattingVo;

@Service
public class ChattingServiceImpl implements ChattingService {
	
	@Inject
	ChattingDao dao;

	@Override
	public List<ChattingVo> ChattingHomeGetMethod() {
		// TODO Auto-generated method stub
		return dao.ChattingHomeGetMethod();
	}

	@Override
	public void sendPostMethod(ChattingVo vo) {
		// TODO Auto-generated method stub
		dao.sendPostMethod(vo);
	}
}
