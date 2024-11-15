package kr.co.dong.project;

public class ProductVO {
	private String product_id;
	private int product_price;
	private String product_name;
	private String product_content;
	private int category_id;
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getProduct_content() {
		return product_content;
	}
	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	@Override
	public String toString() {
		return "BoardDTO [product_id=" + product_id + ", product_price=" + product_price + ", product_name="
				+ product_name + ", product_content=" + product_content + ", category_id=" + category_id + "]";
	}
}
