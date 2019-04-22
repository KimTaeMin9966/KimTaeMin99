package net.koreate.service;

import java.util.List;

import net.koreate.vo.ChattingVo;

public interface ChattingService {

	List<ChattingVo> ChattingHomeGetMethod();

	void sendPostMethod(ChattingVo vo);

}
