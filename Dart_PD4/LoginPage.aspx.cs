using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dart_PD4
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Credentials.CheckDatabase(tboxUserName, tboxPassword, lblMessage);
            //if credentials are correct then redirect to home page 
            if (lblMessage.Text == "User successfully logged in")
            {
                Session["Username"] = tboxUserName.Text;
                Response.Redirect("~/HomePage.aspx");
            }
        }
    }
}