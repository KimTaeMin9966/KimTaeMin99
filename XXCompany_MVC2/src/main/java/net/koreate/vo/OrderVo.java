package net.koreate.vo;

import java.util.Date;

public class OrderVo {
	// all
	private int ono;
	private String type;
	private String content;
	private String writer;
	private int counting;

	// materials
	private Date in_day;

	// order
	private int urgency;
	private int delivery;

	// release
	private Date out_day;

	// wearing

	public int getOno() {
		return ono;
	}

	public void setOno(int ono) {
		this.ono = ono;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getCounting() {
		return counting;
	}

	public void setCounting(int counting) {
		this.counting = counting;
	}

	public Date getIn_day() {
		return in_day;
	}

	public void setIn_day(Date in_day) {
		this.in_day = in_day;
	}

	public int getUrgency() {
		return urgency;
	}

	public void setUrgency(int urgency) {
		this.urgency = urgency;
	}

	public int getDelivery() {
		return delivery;
	}

	public void setDelivery(int delivery) {
		this.delivery = delivery;
	}

	public Date getOut_day() {
		return out_day;
	}

	public void setOut_day(Date out_day) {
		this.out_day = out_day;
	}

	@Override
	public String toString() {
		return "OrderVo [ono=" + ono + ", type=" + type + ", content=" + content + ", writer=" + writer + ", counting="
				+ counting + ", in_day=" + in_day + ", urgency=" + urgency + ", delivery=" + delivery + ", out_day="
				+ out_day + "]";
	}

}
