﻿using ContosoUniversityModelBinding.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity; // Import necessary namespace
using System.Data.Entity.Infrastructure;
using System.Web.ModelBinding;


namespace ContosoUniversityModelBinding
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void studentsGrid_CallingDataMethods(object sender, CallingDataMethodsEventArgs e)
        {
            e.DataMethodsObject = new ContosoUniversityModelBinding.BLL.SchoolBL();
        }
    }
}