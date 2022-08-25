using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabTest
{
    public partial class RegForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            Response.Write(Title.Text + "<br>");
            Response.Write(NameInitial.Text + "<br>");
            Response.Write(DOB.Text + "<br>");
            Response.Write(Contact.Text + "<br>");
            Response.Write(Address.Text + "<br>");
            Response.Write(Email.Text + "<br>");
            Response.Write(URL.Text + "<br>");
        }
    }
}