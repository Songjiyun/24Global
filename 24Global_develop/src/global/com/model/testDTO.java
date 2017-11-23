package global.com.model;

public class testDTO {
	
	private String name;
	
	public testDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public testDTO(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "testDTO [name=" + name + "]";
	}
	
}
