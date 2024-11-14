using System;
using System.Web;
using System.Web.UI;

namespace Lab10
{

    public partial class Default : System.Web.UI.Page
    {
        public void onButtonClick(object sender, EventArgs args)
        {
            if (Page.IsValid)
            {
                //Store data in Session
                Session["FullName"] = txtFullName.Text;
                Session["Email"] = txtEmail.Text;
                Session["Age"] = txtAge.Text;
                Session["Role"] = ddlRole.SelectedValue;

                // Redirect to DisplayUser page
                Response.Redirect("DisplayUser.aspx");
            }
        }
    }
}
