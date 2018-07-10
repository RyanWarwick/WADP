using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class ohmygus : System.Web.UI.Page
{
    public class Member
    {
        public string Name { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string Postal { get; set; }
    }

    private static void ClearControls(Control Parent) { 
            if (Parent is TextBox)  
            { (Parent as TextBox).Text = string.Empty; }  
            else  
            {  
                foreach (Control c in Parent.Controls)  
                    ClearControls(c);  
            }  
}







    private void ExecuteInsert(Member member)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ConnectionString);

        ///this is the fake id for the primary key Id in the database every time u submit 
        /////this cause duplication as primary key must be unique
        //i suggest u auto generate unique ID then all is GOOD TAAADAAAAAAA

        int newsletter = 1;
        if (DropDownList1.SelectedValue == "Yes")
        {
            newsletter = 1;
        }
        else if (DropDownList1.SelectedValue == "No")
        {
            newsletter = 0;
        }
        using (conn)
        {
            string addAccount = @"INSERT INTO Account   
                             (phone,address,newsletter,postal,profilepic,points)  output INSERTED.accID 
                              VALUES  
                             (@Phone,@Address,@Newsletter,@Postal,@Profilepic,@Points)";
            string addCust = @"INSERT INTO Customer  
                             (fullname , username, password, email,accountID)   
                              VALUES  
                             (@Name,@UserName,@Password,@Email,@Id)";
         
            SqlCommand addAccountCmd = new SqlCommand(addAccount, conn);
            
            addAccountCmd.Parameters.AddWithValue("@Phone", member.Phone);
            addAccountCmd.Parameters.AddWithValue("@Address", member.Address);
            addAccountCmd.Parameters.AddWithValue("@Newsletter", newsletter);
            addAccountCmd.Parameters.AddWithValue("@Postal", member.Postal);
            addAccountCmd.Parameters.AddWithValue("@Profilepic", "");
            addAccountCmd.Parameters.AddWithValue("@Points", 0);

            addAccountCmd.CommandType = CommandType.Text;

            conn.Open();
          
            int accountID = (int)addAccountCmd.ExecuteScalar();


            SqlCommand addCustCmd = new SqlCommand(addCust, conn);
            addCustCmd.CommandType = CommandType.Text;
            addCustCmd.Parameters.AddWithValue("@Name", member.Name);
            addCustCmd.Parameters.AddWithValue("@UserName", member.UserName);
            addCustCmd.Parameters.AddWithValue("@Password", member.Password);
            addCustCmd.Parameters.AddWithValue("@Email", member.Email);
            addCustCmd.Parameters.AddWithValue("@Id", accountID);


            addCustCmd.ExecuteNonQuery();
            




        }
    }
           
    

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void BtnSave_Click(object sender, EventArgs e)
    {
        if (TxtPassword.Text == TxtRePassword.Text)
        {
            //fill the class properties with form values  
            Member member = new Member();
            member.Name = TxtName.Text;
            member.UserName = TxtUserName.Text;
            member.Password = TxtPassword.Text;
            member.Email = TxtEmail.Text;
            member.Phone = TxtPhone.Text;
            member.Address=TxtAddress.Text;
            member.Postal = TxtPostal.Text;

            //call the method to execute insert to the database  
            ExecuteInsert(member);
            Response.Write("Record was successfully added!");
            ClearControls(Page);
        }
        else
        {
            Response.Write("Password did not match");
            TxtPassword.Focus();
        }
    }



   


}