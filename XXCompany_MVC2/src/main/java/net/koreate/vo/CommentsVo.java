package net.koreate.vo;

import java.util.Date;

public class CommentsVo {
	private int bno;
	private int cno;
	private String comments;
	private String writer;
	private Date regDate;
	private Date updateDate;

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

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public String toString() {
		return "CommentsVo [bno=" + bno + ", cno=" + cno + ", comments=" + comments + ", writer=" + writer
				+ ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}

}
