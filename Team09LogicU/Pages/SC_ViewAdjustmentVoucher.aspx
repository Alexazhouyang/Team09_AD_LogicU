﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/StoreClerk.Master" AutoEventWireup="true" CodeBehind="SC_ViewAdjustmentVoucher.aspx.cs" Inherits="Team09LogicU.Pages.SC_ViewAdjustmentVoucher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    View Adjustment Voucher
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="row">
        <div class="col-lg-10">
            <div class="card">

                <div class="container">

                    <div class="col-lg-3" style="margin-top: 20px">
                        <asp:Label ID="Label1" runat="server" Text=" From:" CssClass="category"></asp:Label>
                        <asp:TextBox ID="txtFrom" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox><br>
                    </div>
                    <div class="col-lg-3" style="margin-top: 20px">
                        <asp:Label ID="lblTo" runat="server" Text=" To:" CssClass="category"></asp:Label><br>
                        <asp:TextBox ID="txtTo" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox><br>
                    </div>
                    <div class="col-lg-3" style="margin-top: 20px">
                        <asp:Label ID="Label2" runat="server" CssClass="category" Text=" Status:"></asp:Label>
                        <asp:DropDownList ID="DropDownList_cat" runat="server" CssClass="form-control" AppendDataBoundItems="True">
                            <asp:ListItem Selected="True">--All--</asp:ListItem>
                            <asp:ListItem>Pending(Supervisor)</asp:ListItem>
                            <asp:ListItem>Approved</asp:ListItem>
                            <asp:ListItem>Rejected</asp:ListItem>
                            <asp:ListItem>Pending(Manager)</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-lg-8" style="margin-bottom: 20px">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-warning btn-fill btn-wd" OnClick="btnSearch_Click" />
                    </div>

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-10">
            <div class="card">
                <asp:GridView ID="GridView_ViewAdjustmentVoucher" runat="server" AllowPaging="true" OnPageIndexChanging="GridView_ViewAdjustmentVoucher_PageIndexChanging" OnRowCommand="GridView_ViewAdjustmentVoucher_RowCommand" PageSize="5" AutoGenerateColumns="False" CssClass="table bootstrap-table table-hover table-striped" HeaderStyle-CssClass=" content text-uppercase  " EmptyDataText="There is no adjustment voucher!" EditRowStyle-CssClass="btn btn-warning btn-fill fa fa-edit" AutoGenerateDeleteButton="false" AutoGenerateEditButton="False" AutoGenerateSelectButton="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="Adjustment Voucher ID" Visible="False">
                            <ItemTemplate>
                                <asp:Label ID="label_ADJVID" runat="server" Text='<%# Bind("adjVID") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="clerkName" HeaderText="Requested Staff" />
                        <asp:BoundField DataField="authorisedBy" HeaderText="Authorised By" />
                        <asp:BoundField DataField="date" HeaderText="Date" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                        <asp:TemplateField HeaderText="Action" ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton_View" runat="server" CausesValidation="False" CommandName="Select" Text="View" CssClass="btn btn-xs btn-primary" OnClick="LinkButton_View_Click"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerTemplate>
                        <br />
                        <div class="col-lg-12 ">
                            <div class="col-lg-3 " style="width: 18%">
                                <asp:Label ID="lblPage" runat="server" Text='<%# "Page:" + (((GridView)Container.NamingContainer).PageIndex + 1)  + "/" + (((GridView)Container.NamingContainer).PageCount)  %> '></asp:Label>
                                <asp:LinkButton ID="lbnFirst" runat="Server" Text="First" CssClass="btn btn-xs btn-default" Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>' CommandName="Page" CommandArgument="First"></asp:LinkButton>
                                <asp:LinkButton ID="lbnPrev" runat="server" Text="<<" CssClass="btn btn-xs btn-default" Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != 0 %>' CommandName="Page" CommandArgument="Prev"></asp:LinkButton>
                            </div>
                            <div class="col-lg-1" style="width: 10%">
                                <asp:TextBox runat="server" CssClass="form-control text-center " ID="inPageNum" Text='<%# ((GridView)Container.NamingContainer).PageIndex +1 %>'></asp:TextBox>
                            </div>
                            <div class="col-lg-3 ">
                                <asp:LinkButton ID="lbnNext" runat="Server" Text=">>" CssClass="btn btn-xs btn-default" Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != (((GridView)Container.NamingContainer).PageCount - 1) %>' CommandName="Page" CommandArgument="Next"></asp:LinkButton>
                                <asp:LinkButton ID="lbnLast" runat="Server" Text="Last" CssClass="btn btn-xs btn-default" Enabled='<%# ((GridView)Container.NamingContainer).PageIndex != (((GridView)Container.NamingContainer).PageCount - 1) %>' CommandName="Page" CommandArgument="Last"></asp:LinkButton>
                                <asp:Button ID="Button1" CommandName="go" CssClass="btn btn-xs btn-default" Text="GO" runat="server" />
                            </div>
                        </div>

                    </PagerTemplate>

                    <HeaderStyle CssClass=" content text-uppercase"></HeaderStyle>
                </asp:GridView>

            </div>
        </div>
    </div>

</asp:Content>
