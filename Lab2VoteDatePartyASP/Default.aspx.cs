using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2VoteDatePartyASP
{
    //------------------------------------
    //PARTY VOTES(Lab2)(ASP.NET)
    //DEFAULT PAGE (CALENDAR)(C# code)
    //Dean Jones
    //Jan.13, 2017
    //------------------------------------

    public partial class Default : System.Web.UI.Page
    {
        //PAGE LOAD
        protected void Page_Load(object sender, EventArgs e)
        {
            //load counter votes...
            if (!IsPostBack)
            {
                //redundant, used for testing...
                //lblDay1.Text = "Day1: " + (Counter.countDay1).ToString();
                //lblDay2.Text = "Day2: " + (Counter.countDay2).ToString();
                //lblDay3.Text = "Day3: " + (Counter.countDay3).ToString();
            }
        }

        //METHOD TO FIX DATES (grey out unselected)
        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if(e.Day.Date >= DateTime.Now.Date && e.Day.Date <= DateTime.Now.AddDays(2))
            {
                e.Day.IsSelectable = true;               
                e.Cell.BackColor = Color.Aqua;
                //e.Cell.Visible = true;            //messes up all cells
            }
            else
            {
                e.Day.IsSelectable = false;
                e.Cell.BackColor = Color.Gray;
                e.Cell.ForeColor = Color.DarkGray;  //text color (greyed out)
                //e.Cell.Visible = false;
            }

            //highlight if selected
            if (e.Day.IsSelected)
            {
                e.Cell.BackColor = Color.Purple;
            }
        }

        //BUTTON (go to votes page)
        protected void btnGoVotes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Votes.aspx");
        }

        //COUNT THE VOTES FOR EACH DAY
        protected void btnVote_Click(object sender, EventArgs e)
        {
            //if day 1 selected
            if (Calendar1.SelectedDate == DateTime.Now.Date)
            {
                (Counter.countDay1)++;
                Response.Redirect("Votes.aspx");
            }
            //if day 2 selected
            else if (Calendar1.SelectedDate == DateTime.Now.Date.AddDays(1))
            {
                (Counter.countDay2)++;
                Response.Redirect("Votes.aspx");
            }
            //if day 3 selected
            else if (Calendar1.SelectedDate == DateTime.Now.Date.AddDays(2))
            {
                (Counter.countDay3)++;
                Response.Redirect("Votes.aspx");
            }
            //...nothing was selected
            else
            {              
                lblMessage.Text = "Please select a date before voting";
            }

        }

        //CALENDAR SELECTED
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            //if day 1 selected
            if (Calendar1.SelectedDate == DateTime.Now.Date)
            {
                lblDay1.Text = "You picked (day1) " + Calendar1.SelectedDate.Date.ToShortDateString() +
                        " (click the vote button to confirm)";
                lblDay2.Text = "";
                lblDay3.Text = "";
                lblMessage.Text = "";              
            }
            //if day 2 selected
            else if (Calendar1.SelectedDate == DateTime.Now.Date.AddDays(1))
            {
                lblDay2.Text = "You picked (day2) " + Calendar1.SelectedDate.Date.ToShortDateString() +
                        " (click the vote button to confirm)";
                lblDay1.Text = "";
                lblDay3.Text = "";
                lblMessage.Text = "";
            }
            //if day 3 selected
            else if (Calendar1.SelectedDate == DateTime.Now.Date.AddDays(2))
            {
                lblDay3.Text = "You picked (day3) " + Calendar1.SelectedDate.Date.ToShortDateString() +
                    " (click the vote button to confirm)";
                lblDay1.Text = "";
                lblDay2.Text = "";
                lblMessage.Text = "";

            }

        }
    }
}