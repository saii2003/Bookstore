<%@ Page Title="網路書店-最後確認" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="confirm.aspx.cs" Inherits="confirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="Styles/confirm.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid">
    <div class="row">
    <div class="col-md-12">
<div id="pcontainer">
    <div id="center">
    </div>
<div id="center01">
<div class="confirmtitle">
   <span class="glyphicon glyphicon-shopping-cart"></span> 購物明細</div>
    <asp:GridView ID="GridView1" runat="server" GridLines="None" Width="100%" CssClass="grid" >
        <RowStyle CssClass="item" />
        <HeaderStyle CssClass="header" />
    </asp:GridView>
    <table cellpadding="0" cellspacing="0" class="style1">
        <tr>
            <td class="td">
                購物車內共有<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                項商品，購物金額：NT$<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                元</td>
        </tr>
        <tr>
            <td class="td">
                運費金額：NT$<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                元</td>
        </tr>
        <tr>
            <td class="td">
                金額總計：NT$<asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Label"></asp:Label>
                元</td>
        </tr>
    </table>
</div>
<div id="center02">
<div class="confirmtitle">
 <span class="glyphicon glyphicon-user"></span> 寄件資料</div>
        <table cellpadding="0" cellspacing="0" class="style2">
            <tr>
                <td class="style3">
                    付款方式：</td>
                                <td class="td2">
                                    <asp:Label ID="Label5" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    收件人：</td>
                                <td class="td2">
                                    <asp:Label ID="Label6" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    連絡電話：</td>
                <td class="td2">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    聯絡手機：</td>
                <td class="td2">
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    電子郵件：</td>
                                <td class="td2">
                                    <asp:Label ID="Label8" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    收件地址：</td>
                <td class="td2">
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                                </td>
            </tr>
    </table>
</div>
<div id="center03" class="text-right">

    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" 
        ImageUrl="~/images/payment.gif" onclick="ImageButton1_Click" Width="130px" />

</div>
</div>
</div>
</div>
</div>
</asp:Content>

