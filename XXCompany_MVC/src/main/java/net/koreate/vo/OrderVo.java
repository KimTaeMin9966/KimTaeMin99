package net.koreate.vo;

public class OrderVo {
	private int ono; //XXCompany_Orders
	private String writer;
	private int urgency;
	private String delivery;
	private String content;

	public int getOno() {
		return ono;
	}

	public void setOno(int ono) {
		this.ono = ono;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getUrgency() {
		return urgency;
	}

	public void setUrgency(int urgency) {
		this.urgency = urgency;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "OrderVo [ono=" + ono + ", writer=" + writer + ", urgency=" + urgency + ", delivery="
				+ delivery + ", content=" + content + "]";
	}

}
