﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/DepartmentHead.Master" AutoEventWireup="true" CodeBehind="DH_RequisitionHistoryDetail.aspx.cs" Inherits="Team09LogicU.Pages.DH_RequisitionHistoryDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Requisition History Detail
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

   
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-9">
                        <div class="card">
                            <div class="header">
                                <p class="category">
                                    <asp:Label ID="Label_ReqID" runat="server" Text="Requisition ID: "></asp:Label>
                                    <asp:Label ID="lblReqID" runat="server"></asp:Label>

                                <p class="category">
                                    <asp:Label ID="Label_ReqDate" runat="server" Text="Request Date: "></asp:Label>
                                    <asp:Label ID="lblDate" runat="server"></asp:Label>

                                <p class="category">
                                    <asp:Label ID="Label_Name" runat="server" Text="Request Staff: "></asp:Label>
                                    <asp:Label ID="lblStaff" runat="server"></asp:Label>


                                <p class="category">
                                    <asp:Label ID="Label_Remark" runat="server" Text="Remark: "></asp:Label>
                                    <asp:Label ID="lblRemark" runat="server"></asp:Label>
                            </div>
                            <p>


                                <asp:GridView ID="GridView_detailList" runat="server" AllowPaging="true" OnPageIndexChanging="GridView_detailList_PageIndexChanging" OnRowCommand="GridView_detailList_RowCommand" CssClass="table bootstrap-table table-hover table-striped" HeaderStyle-CssClass=" content text-uppercase  " EmptyDataText="There are no record" EditRowStyle-CssClass="btn btn-warning btn-fill fa fa-edit" AutoGenerateDeleteButton="False" AutoGenerateEditButton="False" AutoGenerateSelectButton="False" CellPadding="4" ForeColor="#333333" GridLines="None">

                                     <PagerTemplate>
                                        <br />
                                          <div class="col-lg-12 text-center">
                                         <div class="col-lg-1" style="width:100px">
                                         <asp:Label ID="lblPage" runat="server" Text='<%# "Page:" + (((GridView)Container.NamingContainer).PageIndex + 1)  + "/" + (((GridView)Container.NamingContainer).PageCount)  %> '></asp:Label></div>
                                         <div class="col-lg-1" style="width:40px">
                                         <asp:LinkButton ID="lbnFirst" runat="Server" Text="First" CssClass="btn btn-xs btn-success"   Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>' CommandName="Page" CommandArgument="First" ></asp:LinkButton></div>
                                        <div class="col-lg-1" style="width:40px" >
                                        <asp:LinkButton ID="lbnPrev" runat="server" Text="<<"  CssClass="btn btn-xs btn-success"  Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>' CommandName="Page" CommandArgument="Prev"  ></asp:LinkButton></div>
                                         <div class="col-lg-1" style="width:40px;height:80px;margin-right:-10px;margin-left:-5px;margin-top:-10px" >
                                            <asp:TextBox runat="server" CssClass="form-control text-center " Width="40px"  ID="inPageNum"></asp:TextBox></div>
                                        <div class="col-lg-1" style="width:40px; margin-left:20px" >
                                            <asp:LinkButton ID="lbnNext" runat="Server" Text=">>"  CssClass="btn btn-xs btn-success"  Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != (((GridView)Container.NamingContainer).PageCount - 1) %>' CommandName="Page" CommandArgument="Next" ></asp:LinkButton>
                                         </div><div class="col-lg-1" style="width:40px;margin-left:-10px">
                                            <asp:LinkButton ID="lbnLast" runat="Server" Text="Last"  CssClass="btn btn-xs btn-success"   Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != (((GridView)Container.NamingContainer).PageCount - 1) %>' CommandName="Page" CommandArgument="Last" ></asp:LinkButton></div>
                                              <div class="col-lg-1" style="width:40px">
                                             <asp:Button ID="Button1" CommandName="go"  CssClass="btn btn-xs btn-success"  Text="GO" runat="server" />
                                         </div><br />
                                     </PagerTemplate>

                                    <AlternatingRowStyle BackColor="White" />
                                </asp:GridView>

                            </p>
                        </div>

                    </div>
                </div>
            </div>
        </div>


    


</asp:Content>
