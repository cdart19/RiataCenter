using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EASendMail;
using System.Configuration;


namespace Dart_PD4
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
         
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                SmtpMail oMail = new SmtpMail("TryIt");

                //set the email that we want to send the messsage to. 
                //before final pd4 submission, this is kim.strom@okstate.edu
                oMail.To = "cdart@okstate.edu";


                oMail.From = "cdart@okstate.edu";

                oMail.Subject = "Riata Center Help Request";

                oMail.TextBody = "The following person requested information : "; /* + tboxMessage.Text + "."*/

                SmtpServer oServer = new SmtpServer("smtp.office365.com");

                //User authentication 
                oServer.User = "cdart@okstate.edu";
                oServer.Password = ConfigurationManager.AppSettings["password"];

                //use 587 port
                oServer.Port = 587;

                //auto-detect SSL/TLS connection
                oServer.ConnectType = SmtpConnectType.ConnectSSLAuto;

                SmtpClient oSmtp = new SmtpClient();
                oSmtp.SendMail(oServer, oMail);

                //clear all tectboxes ready for another contact submission
                //tboxEmail.Text = "";
                //tboxMessage.Text = "";
                //tboxSubject.Text = "";
                //lblMessage.Text = "Email successfully sent.";
                //there will also be first name and last name 

                    
                    }
            catch (Exception exc)
            {
                lblMessage.Text = exc.Message;
            }
        }

        protected void btnAboutUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AboutUs.aspx");
        }

        protected void btnFAQ_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FAQ.aspx");
        }

        protected void btnForms_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms.aspx");
        }
    }
}