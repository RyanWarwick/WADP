using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public class Currency
{
  


}
public partial class MasterPage : System.Web.UI.MasterPage
{
  
 
  
    public string flag = "SG";
    
    
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    private void sgclick()
    {
       
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        flag = "SG";
        Session["Currency"] = "SGD";
        CurrencyConvert();
       
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        flag = "MY";
        Session["Currency"] = "MYR";
        CurrencyConvert();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        flag = "IN";
        Session["Currency"] = "IDR";
        CurrencyConvert();

    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        flag = "TH";
        Session["Currency"] = "THB";
        CurrencyConvert();

    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        flag = "VT";
        Session["Currency"] = "VND";
        CurrencyConvert();

    }
    
    private void CurrencyConvert()
    {
        if (HttpContext.Current.Request.Url.AbsolutePath == "/ShoppingCart.aspx")
        {
            GridView GridViewCart = (GridView)Content1.FindControl("GridView1");


            string targetcurrency = (string)Session["Currency"];

            // Session["FirstName"] = FirstNameTextBox.Text;
            string name = "Ryan Han";
            string queryProduct =
           "Select Cart.prodID As 'Product ID', Product.productname As 'Product Name' ,Cart.quantity As Quantity, Product.Price As 'Total Price' From Cart INNER JOIN Product ON Cart.prodID = Product.productID WHERE Cart.custname = @name";


            // Run the query and bind the resulting DataSet
            // to the GridView control.
            // Retrieve the connection string stored in the Web.config file.
            SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ConnectionString);

            DataTable ds = new DataTable();



            // Connect to the database and run the query.

            SqlCommand cmdproduct = new SqlCommand(queryProduct, connection);

            cmdproduct.Parameters.AddWithValue("@name", name);

            connection.Open();
            cmdproduct.ExecuteNonQuery();

            //convert currency

            // Fill the DataSet.

            SqlDataAdapter adapter = new SqlDataAdapter(cmdproduct);
            adapter.Fill(ds);
            foreach (DataRow row in ds.Rows)
            {

                double value = Convert.ToDouble(row["Total Price"]);
                double quantity = Convert.ToDouble(row["Quantity"]);

                double returnvalue;
                if(targetcurrency== "SGD")
                {
                    returnvalue = value * quantity;
                }
                else if (targetcurrency == "MYR")
                {
                    returnvalue = value * 2.97 * quantity;
                }
                else if (targetcurrency == "IDR")
                {
                    returnvalue = value * 10.514 * quantity;
                }
                else if (targetcurrency == "THB")
                {
                    returnvalue = value * 24.2955 * quantity;
                }
                else if (targetcurrency == "VND")
                {
                    returnvalue = value * 16.876 * quantity;
                }
                else
                {
                    returnvalue = Convert.ToDouble(row["Total Price"]);
                }
                string result = string.Format("{0:#.00}", Convert.ToDecimal(returnvalue));

                row["Total Price"] = result;
            }





            GridViewCart.DataSource = ds;
            GridViewCart.DataBind();
            connection.Close();

        }
    }

}
