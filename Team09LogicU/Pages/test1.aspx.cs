﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team09LogicU.App_Code.DAO;
namespace Team09LogicU.Pages
{
    public partial class test1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RequisitionDAO rdao = new RequisitionDAO();
            //rdao.addRequisition("emp007", "COMM");
        }
    }
}