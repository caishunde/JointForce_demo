package user;

public class UserBean
{
	public String username;
	public String password;

	public void UserBean (String username,String password) {
		this.username=username;
		this.password=password;
	}
	    
	    public void setUsername(String username)
        {
                this.username=username;
        }
        public void setPassword(String password)

        {
                this.password=password;
        }
        public String  getUsername()
        {
                return this.username;
        }
        public String getPassword()
        {
                 return this.password;
        }

}