package net.koreate.vo;

import java.util.Date;

public class ChattingVo {
	private int cno;
	private String writer;
	private String chat;
	private Date regDate;

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getChat() {
		return chat;
	}

	public void setChat(String chat) {
		this.chat = chat;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "ChattingVo [cno=" + cno + ", writer=" + writer + ", chat=" + chat + ", regDate=" + regDate + "]";
	}

}