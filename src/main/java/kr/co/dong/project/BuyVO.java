package kr.co.dong.project;

public class BuyVO {
	private int buy_no;
	private String but_userid;
	private String buy_regdate;
	private int buy_amount;
	private String buy_address;
	private String buy_receive;
	
	@Override
	public String toString() {
		return "BuyVO [buy_no=" + buy_no + ", but_userid=" + but_userid + ", buy_regdate=" + buy_regdate
				+ ", buy_amount=" + buy_amount + ", buy_address=" + buy_address + ", buy_receive=" + buy_receive + "]";
	}
	
	public int getBuy_no() {
		return buy_no;
	}
	public void setBuy_no(int buy_no) {
		this.buy_no = buy_no;
	}
	public String getBut_userid() {
		return but_userid;
	}
	public void setBut_userid(String but_userid) {
		this.but_userid = but_userid;
	}
	public String getBuy_regdate() {
		return buy_regdate;
	}
	public void setBuy_regdate(String buy_regdate) {
		this.buy_regdate = buy_regdate;
	}
	public int getBuy_amount() {
		return buy_amount;
	}
	public void setBuy_amount(int buy_amount) {
		this.buy_amount = buy_amount;
	}
	public String getBuy_address() {
		return buy_address;
	}
	public void setBuy_address(String buy_address) {
		this.buy_address = buy_address;
	}
	public String getBuy_receive() {
		return buy_receive;
	}
	public void setBuy_receive(String buy_receive) {
		this.buy_receive = buy_receive;
	}
	
	

}
