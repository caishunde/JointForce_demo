package user;
import java.sql.*;
public class UserRegister
{
	public UserBean userBean;
	public Connection con;
        //������ݿ����ӡ�
        public UserRegister()
        {

            try
            {

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/taiger","root","");
                }
                catch(Exception e)
                {
                        e.printStackTrace();
                }

        }
        //���ô�ע����û���Ϣ��
        public void setUserBean(UserBean userBean)
        {
                this.userBean=userBean;
        }
        //����ע��
        public void regist() throws Exception
        {
                String reg="insert into user(username,password)  values(?,?);";

                try
                {
                        PreparedStatement pstmt=con.prepareStatement(reg);
                        pstmt.setString(1,userBean.getUsername());
                        pstmt.setString(2,userBean.getPassword());
                        System.out.println(pstmt);
                        pstmt.executeUpdate();
                }
                catch(Exception e)
                {
                        e.printStackTrace();
                        throw e;
                }


        }
}