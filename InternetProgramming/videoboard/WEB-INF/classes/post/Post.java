package post;

public class Post {
	private String name,author,disc;
	
	public Post(String name,String author,String disc){
		this.name = name;
		this.author = author;
		this.disc = disc;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDisc() {
		return disc;
	}

	public void setDisc(String disc) {
		this.disc = disc;
	}
}
