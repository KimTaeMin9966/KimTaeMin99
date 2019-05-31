package net.koreate.vo;

import java.util.Date;

public class CommentsVo {
	private int bno;
	private int cno;
	private String comments;
	private String writer;
	private Date regdate;
	private Date updatedate;

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}
	
	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Date getUpdatedate() {
		return updatedate;
	}

	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}

	@Override
	public String toString() {
		return "CommentsVo [bno=" + bno + ", comments=" + comments + ", writer=" + writer + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + "]";
	}

}
