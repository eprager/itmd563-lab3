﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MortgageCalculator
{
    public partial class ClearMortgages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void clear_Click(object sender, EventArgs e)
        {
            IDataHelper io = new IOHelper();
            output.Text = io.ClearMortgages();
        }
    }
}