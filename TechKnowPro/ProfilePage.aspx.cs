using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace TechKnowPro
{
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Convert.ToString(Session["email"]);
            if (email != null)
            {
                if (!IsPostBack)
                {
                    TxtUserID.Text = Convert.ToString(Session["user_id"]);
                    TxtUsername.Text = Convert.ToString(Session["username"]);
                    TxtEmail.Text = Convert.ToString(Session["email"]);
                    TxtPassword.Text = Convert.ToString(Session["password"]);
                    TxtFirstname.Text = Convert.ToString(Session["first_name"]);
                    TxtLastname.Text = Convert.ToString(Session["last_name"]);
                    SecretQuestion.Text = Convert.ToString(Session["secret_question"]);
                    TxtSecretAnswer.Text = Convert.ToString(Session["secret_answer"]);
                    TxtAddress.Text = Convert.ToString(Session["address"]);
                    TxtPhone.Text = Convert.ToString(Session["phone"]);
                }
            }

            else
                Response.Redirect("LoginForm.aspx");
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            string user_id = Convert.ToString(Session["user_id"]);
            string username = TxtUsername.Text;
            string email = TxtEmail.Text;
            string password = TxtPassword.Text;
            string first_name = TxtFirstname.Text;
            string last_name = TxtLastname.Text;
            string secret_question = SecretQuestion.Text;
            string secret_answer = TxtSecretAnswer.Text;
            string address = TxtAddress.Text;
            string phone = TxtPhone.Text;
            string query = "UPDATE Customers SET username ='" + username + "', email ='" + email + "', password ='" + password + "', first_name ='" + first_name + "', last_name ='" + last_name + "', secret_question ='" + secret_question + "', secret_answer ='" + secret_answer + "', address ='" + address + "', phone ='" + phone + "' WHERE user_id ='" + user_id + "'";
            SqlConnection DBConnection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Customers.mdf;Integrated Security=True");
            DBConnection.Open();
            if (Page.IsValid)
            {
                SqlCommand cmd = new SqlCommand(query, DBConnection);
                cmd.ExecuteNonQuery();
                DBConnection.Close();

                Session["username"] = username;
                Session["email"] = email;
                Session["password"] = password;
                Session["first_name"] = first_name;
                Session["last_name"] = last_name;
                Session["secret_question"] = secret_question;
                Session["secret_answer"] = secret_answer;
                Session["address"] = address;
                Session["phone"] = phone;

                Response.Redirect("UpdateSuccessful.aspx");
            }
            
        }

        protected void BtnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}