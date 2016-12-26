using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _6_Reset_Information
{
    public partial class ResetInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void rbGender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtReset_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtIc1.Text = "";
            txtIc2.Text = "";
            txtIc3.Text = "";
            txtPhone1.Text = "";
            txtPhone2.Text = "";
            txtPhone11.Text = "";
            txtPhone22.Text = "";
            txtAddress.Text = "";
            txtPostCode.Text = "";
            ddlState.SelectedIndex = 0;
            rbGender.ClearSelection();
            txtEmail.Text = "";
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtRetype.Text = "";

        }
    }
}