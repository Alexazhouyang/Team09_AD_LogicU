﻿<%@ Page Title="" Language="C#" MasterPageFile="~/pages/DepartmentHead.Master" AutoEventWireup="true" CodeBehind="DH_ViewPendingRequisition.aspx.cs" Inherits="Team09LogicU.pages.DH_ViewPendingRequisition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    View Pending Requisition
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="form1" runat="server">
      
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">View Pending Requisition</h4>
                                <p class="category"></p>
                            </div> <div class="content">
                                                <asp:Label ID="lblMessage" runat="server" Text="" CssClass="category"></asp:Label>
                                                <asp:GridView ID="GridView_PendingReqList" runat="server" AutoGenerateColumns="False" CssClass="table bootstrap-table table-hover table-striped" HeaderStyle-CssClass=" content text-uppercase  " AllowPaging="True" EditRowStyle-CssClass="btn btn-warning btn-fill fa fa-edit" AutoGenerateDeleteButton="false" AutoGenerateEditButton="False" AutoGenerateSelectButton="False" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                                                        <asp:TemplateField HeaderText="Approve/ Reject" ShowHeader="False">
                                                            <ItemTemplate>
                                                                <asp:LinkButton ID="LinkButton_Select" runat="server" CausesValidation="False" CommandName="Select" Text="Select" OnClick="LinkButton_View_Click"></asp:LinkButton>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <HeaderStyle CssClass=" content text-uppercase"></HeaderStyle>
                                                </asp:GridView>
                                            </div>
                                        </div>
                    </div>
                </div>
    </form>


</asp:Content>
