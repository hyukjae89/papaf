package papaf_bean;

public class MemberBean {
	
	public MemberBean() {
		// TODO Auto-generated constructor stub
	}

	public String getName()
	{
		return name;
	}

	public void setName(String name)
	{
		this.name = name;
	}

	public String getEmail()
	{
		return email;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}


	public String getBday() {
		return bday;
	}

	public void setBday(String bday) {
		this.bday = bday;
	}

	public String getPass()
	{
		return pass;
	}

	public void setPass(String pass)
	{
		this.pass = pass;
	}

	private String name;
	private String email;
	private String bday;
	private String pass;
}
