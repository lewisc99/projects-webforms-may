﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace account
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender,EventArgs e)
        {
            if (!User.IsInRole("Admin"))
            {
                Response.Redirect("~/Login.aspx");
            }
        }
    }
}