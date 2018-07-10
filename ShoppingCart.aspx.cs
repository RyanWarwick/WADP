using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {


            // Session["FirstName"] = FirstNameTextBox.Text;
            string name = "Ryan Han";
            string queryProduct =
          "Select Cart.prodID As 'Product ID', Product.productname As 'Product Name',Cart.quantity As Quantity, Product.Price As 'Total Price' From Cart INNER JOIN Product ON Cart.prodID = Product.productID WHERE Cart.custname = @name";


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

                double finalvalue = value * quantity;
                string result = string.Format("{0:#.00}", Convert.ToDecimal(finalvalue));
                row["Total Price"] = result;

            }



            cart.DataSource = ds;
            cart.DataBind();
            connection.Close();






        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {



    }


     




    protected void btn_checkout_Click(object sender, EventArgs e)
    {

    }

    protected void button3_Click(object sender, EventArgs e)
    {

    }

    protected void button3_Click1(object sender, EventArgs e)
    {

    }
}