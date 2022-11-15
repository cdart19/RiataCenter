using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Dart_PD4
{
    public class Credentials
    {
        public static void CheckDatabase(TextBox tbUsername, TextBox tbPassword, Label lblMessage)
        {
            //Creating a reference to the connection string that is stored
            //in our web.config file (as done in class!)
            string strConn = ConfigurationManager.ConnectionStrings["s21_kslroznovConnectionString"].ConnectionString;


            using (SqlConnection sqlConn = new SqlConnection(strConn))
            {
                //Using the SqlCommand object
                SqlCommand checkCmd = new SqlCommand("spValidateCredentials", sqlConn);
                checkCmd.CommandType = CommandType.StoredProcedure;

                //Create input parameters
                checkCmd.Parameters.AddWithValue("@usernameValue", tbUsername.Text);
                checkCmd.Parameters.AddWithValue("@passwordValue", tbPassword.Text);

                SqlParameter returnValueOutput = new SqlParameter();
                returnValueOutput.ParameterName = "@responseMessage";
                returnValueOutput.SqlDbType = SqlDbType.NVarChar;
                returnValueOutput.Size = 250;
                returnValueOutput.Direction = ParameterDirection.Output;

                checkCmd.Parameters.Add(returnValueOutput);

                //Try-catch time!
                try
                {
                    sqlConn.Open();

                    //Executing the stored procedure
                    checkCmd.ExecuteNonQuery();

                    //Get value of output parameter
                    lblMessage.Text = returnValueOutput.Value.ToString();

                    //Clear form
                    tbUsername.Text = "";
                    tbPassword.Text = "";
                }

                catch (Exception exc)
                {
                    lblMessage.Text = exc.Message;
                }
            }
        }
    }
}