package my;

public class Book {
	
	private String bookNum;
	private String bookName;
	private float bookPrice = 0;
	private int bookPages = 0;
	
	public String getBookNum() {
		return bookNum;
	}
	public void setBookNum(String bookNum) {
		this.bookNum = bookNum;
	}
	
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	
	public float getBookPrice() {
		return bookPrice;
	}
	public void setBookPrice(float bookPrice) {
		this.bookPrice = bookPrice;
	}
	
	public int getBookPages() {
		return bookPages;
	}
	public void setBookPages(int bookPages) {
		this.bookPages = bookPages;
	}
	
	
}
