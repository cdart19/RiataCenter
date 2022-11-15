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
    public partial class Forms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/HomePage.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string strConn = ConfigurationManager.ConnectionStrings["Dart"].ConnectionString;

            using (SqlConnection sqlConn = new SqlConnection(strConn))
            {
                SqlCommand InsertCmd = new SqlCommand("spInsertContacts", sqlConn);
                InsertCmd.CommandType = CommandType.StoredProcedure;
                InsertCmd.Parameters.AddWithValue("@FirstName", tboxFirstName.Text);
                InsertCmd.Parameters.AddWithValue("@LastName", tboxLastName.Text);
                InsertCmd.Parameters.AddWithValue("@Phone", tboxPhoneNumber.Text);
                InsertCmd.Parameters.AddWithValue("@PrimaryEmail", tboxEmail.Text);
                InsertCmd.Parameters.AddWithValue("@SecondaryEmail", tboxSecondary.Text);
                InsertCmd.Parameters.AddWithValue("@Address1", tboxAddress.Text);
                InsertCmd.Parameters.AddWithValue("@Address2", tboxAddress2.Text);
                InsertCmd.Parameters.AddWithValue("@City", tboxCity.Text);
                InsertCmd.Parameters.AddWithValue("@StateID", ddlState.SelectedValue);
                InsertCmd.Parameters.AddWithValue("@Zipcode", tboxZip.Text);
                InsertCmd.Parameters.AddWithValue("@EmployerName", tboxEmployerName.Text);
                InsertCmd.Parameters.AddWithValue("@JobTitle", tboxJobTitle.Text);
                
                //if checkbox is checked for student 
                if (cbStudent.Checked)
                {
                    InsertCmd.Parameters.AddWithValue("@StudentStatus", "Y");
                }
                else
                {
                    InsertCmd.Parameters.AddWithValue("@StudentStatus", "N");
                }
                //if checkbox is checked for alumni
                if(cbAlumni.Checked)
                {
                    InsertCmd.Parameters.AddWithValue("@AlumniStatus", "Y");
                }
                else
                {
                    InsertCmd.Parameters.AddWithValue("@AlumniStatus", "N");
                }

                InsertCmd.Parameters.AddWithValue("@CWID", tboxCWID.Text); 

                SqlParameter parmDTBranches = new SqlParameter();
                parmDTBranches.ParameterName = "@MilitaryBranch";
                parmDTBranches.Value = CreateDataTableOfBranches();
                InsertCmd.Parameters.Add(parmDTBranches);

                SqlParameter parmDTeducation = new SqlParameter();
                parmDTeducation.ParameterName = "@Education";
                parmDTeducation.Value = CreateDataTableOfEducation();
                InsertCmd.Parameters.Add(parmDTeducation);


                //output parameter
                SqlParameter ContactIDOutput = new SqlParameter();
                ContactIDOutput.SqlDbType = SqlDbType.Int;
                ContactIDOutput.ParameterName = "@ContactID";
                ContactIDOutput.Direction = ParameterDirection.Output;
                InsertCmd.Parameters.Add(ContactIDOutput);

                try
                {
                    sqlConn.Open();
                    InsertCmd.ExecuteNonQuery();

                   

                    tboxFirstName.Text = "";
                    tboxLastName.Text = "";
                    tboxPhoneNumber.Text = "";
                    tboxEmail.Text = "";
                    tboxSecondary.Text = "";
                    tboxAddress.Text = "";
                    tboxAddress2.Text = "";
                    tboxCity.Text = "";
                    ddlState.ClearSelection();
                    tboxZip.Text = "";
                    tboxEmployerName.Text = "";
                    tboxJobTitle.Text = "";
                    cbMilitary.ClearSelection();
                    tboxCWID.Text = "";
                    tboxAlumGrad.Text = "";
                    tboxAlumMajor.Text = "";
                    tboxAlumMinor.Text = "";
                    tboxGraduation.Text = "";
                    tboxAlumGrad.Text = "";
                    tboxClassification.Text = "";
                    tboxMajor.Text = "";
                    tboxMinor.Text = "";

                    lblmessage.Text = "Contact successfully added for Contact #" + ContactIDOutput.Value;

















                }
                catch (Exception exc)
                {

                    lblmessage.Text = exc.Message;
                }


            }
        }
        private DataTable CreateDataTableOfBranches()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("BranchID");

            for (int i = 0; i < cbMilitary.Items.Count; i++)
            {
                if (cbMilitary.Items[i].Selected)
                {
                    dt.Rows.Add(cbMilitary.Items[i].Value);
                }
            }
            return dt;
        }
        private DataTable CreateDataTableOfEducation()
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("Degree");
            dt.Columns.Add("StudentClassification");
            dt.Columns.Add("MajorName");
            dt.Columns.Add("MinorName");
            dt.Columns.Add("AnticipatedGradDate");

            if (cbStudent.Checked)
            {
                dt.Rows.Add(tboxStudentDegree.Text, tboxClassification.Text, tboxMajor.Text, tboxMinor.Text, tboxGraduation.Text);
            }
            if(cbAlumni.Checked)
            {
                dt.Rows.Add(tboxAlumMinor.Text, tboxAlumMajor.Text, tboxAlumGrad.Text);
            }
            return dt;
            
        }


    }
}
        