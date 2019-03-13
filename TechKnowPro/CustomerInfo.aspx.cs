using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TechKnowPro
{
    public partial class CustomerInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void CustomerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string user_id = CustomerList.SelectedValue.ToString();
            string query = "SELECT email, address, phone FROM Customers WHERE user_id ='" + user_id + "'";
            SqlConnection DBConnection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Customers.mdf;Integrated Security=True");
            DBConnection.Open();
            SqlCommand cmd = new SqlCommand(query, DBConnection);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DBConnection.Close();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    LblAddress.Text = row["email"].ToString();
                    LblPhone.Text = row["address"].ToString();
                    LblEmail.Text = row["phone"].ToString();   
                }
            }
        }
    }
}