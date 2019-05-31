package net.koreate.vo;

import java.util.Date;

public class ChattingVo {
	private int cno;
	private String writer;
	private String chat;
	private Date regdate;

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

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "ChattingVo [cno=" + cno + ", writer=" + writer + ", chat=" + chat + ", regdate=" + regdate + "]";
	}

}
