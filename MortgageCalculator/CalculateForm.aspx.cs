using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace MortgageCalculator
{
    public partial class Calculate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            princ.Focus();

            if (IsPostBack)
            {
                LoanDur_SelectedIndexChanged(sender, e);
                //result2.Text = ""+ e + "";
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string principal = "" + princ.Text + "";
            string duration = "" + LoanDur.Text + "";
            string rate = "" + InterestRate.Text + "";
            string otherDuration = "" + otherBox.Text + "";

            // use the function to calculate the monthly payment
            string output = MortgageHelper.ValidateMortgage(principal, duration, rate, otherDuration);
            result.Text = output;

            IDataHelper io = new IOHelper();
            io.WriteMortgage(output);
        }

        

        protected void LoanDur_SelectedIndexChanged(object sender, EventArgs e)
        {
            //result2.Text = "You selected a loan duration of " + LoanDur.SelectedItem.Text + " with a value of " + LoanDur.SelectedItem.Value;

            if (LoanDur.SelectedItem.Value == "Other")
            {
                otherBox.Enabled = true;
            }
            else
            {
                otherBox.Enabled = false;
                otherBox.Text = String.Empty;
            }
        }
    }
}