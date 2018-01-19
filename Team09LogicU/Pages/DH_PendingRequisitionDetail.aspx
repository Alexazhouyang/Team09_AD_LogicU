﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/DepartmentHead.Master" AutoEventWireup="true" CodeBehind="DH_PendingRequisitionDetail.aspx.cs" Inherits="Team09LogicU.Pages.DH_PendingRequisitionDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   PendingRequisitionDetail
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id ="form1" runat="server">
         <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-9">
                        <div class="card">
                            <div class="header">
                             <p class="category">
                                  <asp:Label ID="label1" runat="server" Text="Request Date: "></asp:Label>
                                   <asp:Label ID="label_RequestedDated" runat="server" ></asp:Label>  </p> 
                              <p class="category">   
                                  <asp:Label ID="label2" runat="server" Text=" Requested By:"></asp:Label>
                                    <asp:Label ID="label_Employee" runat="server" ></asp:Label> </p> <%--此处传值--%>
         
                              <p class="category">    
                                  <asp:Label ID="Label3" runat="server" Text="Remarks "></asp:Label>
                                 <asp:Label ID="label_Remarks" runat="server" ></asp:Label></p>   <%--此处传值--%>
                            </div> 
                            <p>
                        

                                  <asp:GridView ID="GridView1" runat="server" CssClass="table bootstrap-table table-hover table-striped" HeaderStyle-CssClass=" content text-uppercase  "  AllowPaging="True" EditRowStyle-CssClass="btn btn-warning btn-fill fa fa-edit" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" CellPadding="4" ForeColor="#333333" GridLines="None" >


                                     <AlternatingRowStyle BackColor="White" />
                                </asp:GridView>

                            </p>

                             <p class="category">   
                                  <asp:Label ID="label4" runat="server" Text=" Remarks:"></asp:Label>
                                 <asp:TextBox ID="TextBox_Remarks" runat="server"></asp:TextBox>
                                 </p> 
                     </div>
         
        </div>
     </div>
   </div>
 </div>                         
                          
  
    <asp:Button ID="Btn_Approve"  runat="server" Text="Approve" CssClass="btn btn-primary btn-fill btn-wd " /> <%--此处点击事件--%>
    <asp:Button ID="Btn_Reject"  runat="server" Text="Reject"  CssClass="btn btn-danger btn-fill btn-wd " /><%--此处点击事件--%>

  
        </form>

</asp:Content>
