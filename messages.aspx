<%@ Page Title="網路書店-訊息公告" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="messages.aspx.cs" Inherits="messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/messages.css" rel="stylesheet" type="text/css" />
    <style>
    #content
    {
        margin:50px 0px 80px 0px;
    }
    .style3,.td
    {
        padding:10px 0px 0px 0px;

    }
    .style2
    {
        border:none;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">
        <table class="style1">
            <tr>
                <td class="title text-left">
                    訊息公告</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:FormView ID="FormView1" runat="server" CssClass="form" 
                        HorizontalAlign="Left">
                        <ItemTemplate>
                            <table class="style1">
                                <tr>
                                    <td class="style3">
                                        公告類型：</td>
                                    <td class="td">
                                        <asp:Label ID="Label1" runat="server" CssClass="l1" 
                                            Text='<%# Eval("messageType") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        公告標題：</td>
                                    <td class="td">
                                        <asp:Label ID="Label2" runat="server" CssClass="l1" 
                                            Text='<%# Eval("messageTitle") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        發布時間：</td>
                                    <td class="td">
                                        <asp:Label ID="Label3" runat="server" CssClass="l1" 
                                            Text='<%# Eval("messageDate") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3">
                                        內容：</td>
                                    <td class="td">
                                        <asp:Label ID="Label4" runat="server" CssClass="l1" 
                                            Text='<%# Eval("messageContent") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

