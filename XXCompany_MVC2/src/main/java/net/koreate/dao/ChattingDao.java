package net.koreate.dao;

import java.util.List;

import net.koreate.vo.ChattingVo;

public interface ChattingDao {

	List<ChattingVo> ChattingHomeGetMethod();

	void sendPostMethod(ChattingVo vo);

}
