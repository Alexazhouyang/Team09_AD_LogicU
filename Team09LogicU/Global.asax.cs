﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using Team09LogicU.App_Code.UtilClass;
namespace Team09LogicU
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            System.Web.UI.ScriptManager.ScriptResourceMapping.AddDefinition
              ("jquery",
               new System.Web.UI.ScriptResourceDefinition
               {
                   Path = "~/scripts/jquery-1.12.4.min.js",
                   DebugPath = "~/scripts/jquery-1.12.4.js",
                   CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.12.4.min.js",
                   CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.12.4.js"
               }
              );

            Application["AutoDetection"] = true;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            if (Session["loginID"]==null)
            {
                Session["loginID"] = "";
                Session["loginRole"] = "";
                Session["loginName"] = "";
            }
            if (Session["cart"]==null)
            {
                Session["cart"] = new List<cart>();
            }
            if (Session["AdjVouchercart"] == null)
            {
                Session["AdjVouchercart"] = new List<AdjustmentVoucherItemcart>();
            }

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}