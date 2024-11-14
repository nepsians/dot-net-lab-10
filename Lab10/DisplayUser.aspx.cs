using System;
using System.Web;
using System.Web.UI;

namespace Lab10
{

    public partial class DisplayUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve data from Session
                string fullName = Session["FullName"] as string;
                string email = Session["Email"] as string;
                string age = Session["Age"] as string;
                string role = Session["Role"] as string;

                lblDisplayFullName.Text = fullName;
                lblDisplayEmail.Text = email;
                lblDisplayAge.Text = age;
                lblDisplayRole.Text = role;

                string greeting;
                switch (role)
                {
                    case "Admin":
                        greeting = $"Welcome, Admin {fullName}! You have full access.";
                        break;
                    case "User":
                        greeting = $"Welcome, {fullName}! Thank you for registering as a User.";
                        break;
                    case "Guest":
                        greeting = $"Hello, Guest {fullName}! Limited access granted.";
                        break;
                    default:
                        greeting = "Welcome!";
                        break;
                }

                lblGreeting.Text = greeting;
            }
        }
    }
}
