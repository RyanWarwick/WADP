using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class LoginPage : System.Web.UI.Page
{
    public bool username = true;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ConnectionString);
       
        string checkuser = "select * from Customer where username ='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        conn.Open();
        com.ExecuteNonQuery();
        SqlDataAdapter adapter = new SqlDataAdapter(com);
        DataTable dt = new DataTable();
        adapter.Fill(dt);
        try
        {
            string password = dt.Rows[0].Field<string>("password");
            conn.Close();
            if (password != null)
            {



                if (password == TextBox2.Text)
                {
                    Session["New"] = TextBox1.Text;
                    Response.Write("Password is correct");
                }
                else
                {
                    Response.Write("Password is Not correct");
                }
            }


        }
        catch
        {
            username = false;
        }

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}

 