using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2VoteDatePartyASP
{
    //------------------------------------
    //PARTY VOTES(Lab2)(ASP.NET)
    //VOTES TALLY PAGE (C# code)
    //Dean Jones
    //Jan.13, 2017
    //------------------------------------

    public partial class Votes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //references int in CLASS (must be STATIC)
            txtDay1.Text = (Counter.countDay1).ToString();
            txtDay2.Text = (Counter.countDay2).ToString();
            txtDay3.Text = (Counter.countDay3).ToString();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        //BUTTON (go to calendar page)
        protected void btnGoToHits_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}