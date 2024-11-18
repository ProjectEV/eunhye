package kr.co.dong.project;

public class BuyDetailVO {
	private int buydetail_no;
	private int buydetail_buyno;
	private String buydetail_productid;
	private int buydetail_amount;
	
	public int getBuydetail_no() {
		return buydetail_no;
	}
	public void setBuydetail_no(int buydetail_no) {
		this.buydetail_no = buydetail_no;
	}
	public int getBuydetail_buyno() {
		return buydetail_buyno;
	}
	public void setBuydetail_buyno(int buydetail_buyno) {
		this.buydetail_buyno = buydetail_buyno;
	}
	public String getBuydetail_productid() {
		return buydetail_productid;
	}
	public void setBuydetail_productid(String buydetail_productid) {
		this.buydetail_productid = buydetail_productid;
	}
	public int getBuydetail_amount() {
		return buydetail_amount;
	}
	public void setBuydetail_amount(int buydetail_amount) {
		this.buydetail_amount = buydetail_amount;
	}
	@Override
	public String toString() {
		return "BuyDetailVO [buydetail_no=" + buydetail_no + ", buydetail_buyno=" + buydetail_buyno
				+ ", buydetail_productid=" + buydetail_productid + ", buydetail_amount=" + buydetail_amount + "]";
	}
	
	

}
