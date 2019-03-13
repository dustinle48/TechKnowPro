using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TechKnowPro
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string inputemail = TxtUsername.Text.ToLower();
            string inputpassword = TxtPassword.Text.ToLower();
            if (inputemail == "admin@isp.net" && inputpassword == "p@ssword1")
            {
                Session["email"] = "Admin";
                Session["username"] = "Admin";
                Response.Redirect("Home.aspx");
            }
            if(inputemail == "tech@isp.net" && inputpassword == "p@ssword2")
            {
                Session["email"] = "Technician";
                Session["username"] = "Technician";
                Response.Redirect("Home.aspx");
            }
            if (inputemail != "admin@isp.net" && inputemail != "tech@isp.net")
            {
                string loginquery = "select * from Customers where email ='" + inputemail + "' and password ='" + inputpassword + "'";
                SqlConnection DBConnection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Customers.mdf;Integrated Security=True");
                DBConnection.Open();
                SqlCommand cmd = new SqlCommand(loginquery, DBConnection);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                DBConnection.Close();
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow row in dt.Rows)
                    {
                        string user_id = row["user_id"].ToString();
                        string username = row["username"].ToString();
                        string email = row["email"].ToString();
                        string password = row["password"].ToString();
                        string first_name = row["first_name"].ToString();
                        string last_name = row["last_name"].ToString();
                        string secret_question = row["secret_question"].ToString();
                        string secret_answer = row["secret_answer"].ToString();
                        string address = row["address"].ToString();
                        string phone = row["phone"].ToString();
                        Session["user_id"] = user_id;
                        Session["username"] = username;
                        Session["email"] = inputemail;
                        Session["password"] = password;
                        Session["first_name"] = first_name;
                        Session["last_name"] = last_name;
                        Session["secret_question"] = secret_question;
                        Session["secret_answer"] = secret_answer;
                        Session["address"] = row["address"].ToString();
                        Session["phone"] = row["phone"].ToString();
                    }
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                errormessage.Text = "Invalid Username or Password.";
            }
        }
    }
}