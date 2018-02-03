﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pages/DepartmentHead.Master" AutoEventWireup="true" CodeBehind="DH_ViewPendingRequisition.aspx.cs" Inherits="Team09LogicU.pages.DH_ViewPendingRequisition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    View Pending Requisition
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
                <div class="row">
                     <div class="col-lg-10">
                        <div class="card">
                        
                                                <asp:GridView ID="GridView_PendingReqList" runat="server" AllowPaging="true" OnPageIndexChanging="GridView_PendingReqList_PageIndexChanging" OnRowCommand="GridView_PendingReqList_RowCommand"  AutoGenerateColumns="False" CssClass="table table-hover table-striped" HeaderStyle-CssClass=" content " EmptyDataText="There is no record!" EditRowStyle-CssClass="btn btn-warning btn-fill fa fa-edit" AutoGenerateDeleteButton="false" AutoGenerateEditButton="False" AutoGenerateSelectButton="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="Requisition ID" Visible="False">
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblReqId" runat="server" Text='<%# Bind("requisitionID") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="staffName" HeaderText="Requested Staff" />
                                                        <asp:BoundField DataField="requisitionDate" HeaderText="Date Submitted" />
                                                        <asp:BoundField DataField="status" HeaderText="Status" />
                                                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton_Select" runat="server" CausesValidation="False" CommandName="Select" Text="View" OnClick="LinkButton_View_Click" ControlStyle-CssClass=" text-center btn btn-xs btn-primary"  ></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                     <HeaderStyle CssClass=" content text-uppercase  "></HeaderStyle>
                                                     <PagerTemplate>
                                                        <br />
                                                          <div class="col-lg-10 text-center">
                                                         <div class="col-lg-1" style="width:100px">
                                                         <asp:Label ID="lblPage" runat="server" Text='<%# "Page:" + (((GridView)Container.NamingContainer).PageIndex + 1)  + "/" + (((GridView)Container.NamingContainer).PageCount)  %> '></asp:Label></div>
                                                         <div class="col-lg-1" style="width:40px">
                                                         <asp:LinkButton ID="lbnFirst" runat="Server" Text="First" CssClass="btn btn-xs btn-success"   Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>' CommandName="Page" CommandArgument="First" ></asp:LinkButton></div>
                                                        <div class="col-lg-1" style="width:40px" >
                                                        <asp:LinkButton ID="lbnPrev" runat="server" Text="<<"  CssClass="btn btn-xs btn-success"  Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>' CommandName="Page" CommandArgument="Prev"  ></asp:LinkButton></div>
                                                        <div class="col-lg-1" style="width:40px;height:80px;margin-right:-5px;margin-left:-5px;margin-top:-10px" >
                                                          <asp:TextBox runat="server" CssClass="form-control text-center " Width="45px"  ID="inPageNum" Text='<%#(((GridView)Container.NamingContainer).PageIndex + 1)%>'></asp:TextBox></div>
                                                        <div class="col-lg-1" style="width:40px; margin-left:20px" >
                                                            <asp:LinkButton ID="lbnNext" runat="Server" Text=">>"  CssClass="btn btn-xs btn-success"  Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != (((GridView)Container.NamingContainer).PageCount - 1) %>' CommandName="Page" CommandArgument="Next" ></asp:LinkButton>
                                                         </div><div class="col-lg-1" style="width:40px;margin-left:-10px">
                                                            <asp:LinkButton ID="lbnLast" runat="Server" Text="Last"  CssClass="btn btn-xs btn-success"   Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != (((GridView)Container.NamingContainer).PageCount - 1) %>' CommandName="Page" CommandArgument="Last" ></asp:LinkButton></div>
                                                              <div class="col-lg-1" style="width:40px">
                                                             <asp:Button ID="Button1" CommandName="go"  CssClass="btn btn-xs btn-success"  Text="GO" runat="server" />
                                                         </div><br />
                                                     </PagerTemplate>
                                                </asp:GridView>
                                           
                                        </div>
                                 
                            </div>
                      </div>
              
           
      
  


</asp:Content>
