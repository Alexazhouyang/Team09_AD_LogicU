﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team09LogicU.Models;
using Team09LogicU.App_Code.DAO;

namespace Team09LogicU.Pages
{
    public partial class SM_SearchSupplier : System.Web.UI.Page
    {
        SupplierDAO supplierDAO = new SupplierDAO();
        string logInRole;
        protected void Page_Load(object sender, EventArgs e)
        {
            logInRole = (string)Session["loginRole"];
            if (logInRole == "manager")
            {
                if (!IsPostBack)
                {
                    GridView_supplierList.DataSource = supplierDAO.getSupplierList();
                    GridView_supplierList.DataBind();
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button_Search_Click(object sender, EventArgs e)
        {
            string keyword = textbox_Search.Text;
            List<Supplier> slist = supplierDAO.getSupplierBySearchWord(keyword);
            GridView_supplierList.DataSource = slist;
            GridView_supplierList.DataBind();
        }

        protected void Button_Add_Click(object sender, EventArgs e)
        {
            Response.Redirect("SM_AddSupplier.aspx");
        }

        protected void GridView_supplierList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            int i = e.NewEditIndex;
            string supplierID = GridView_supplierList.Rows[i].Cells[1].Text.ToString();
            Response.Redirect("SM_EditSupplier.aspx?supplier=" + supplierID);
        }
    }
}