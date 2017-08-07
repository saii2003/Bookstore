<%@ Page Title="網路書店後端管理-訊息登錄" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin_message.aspx.cs" Inherits="admin_message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">

        .style2
        {
            width:120px;
            text-align:right;
            padding:5px 20px 5px 0px;
        }
        .left
        {
            width:750px;
            text-align:left;
            padding:8px 0px 8px 0px;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-default">
<div class="panel-heading">
    訊息登錄
</div>
<div class="panel-body">
<div class="form-group">
                        <table class="style1">
                            <tr>
                                <td class="style2">
                                    訊息類型</td>
            
            <td class="left">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control ">
                    <asp:ListItem Selected="True">請選擇類型</asp:ListItem>
                    <asp:ListItem>公告</asp:ListItem>
                    <asp:ListItem>新書</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                訊息標題</td>
            <td class="left">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="請輸入標題"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                登錄者</td>
            <td class="left">
                <asp:Label ID="Label19" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                訊息內容</td>
            <td class="left">
                <asp:TextBox ID="TextBox2" runat="server" Height="200px" TextMode="MultiLine" 
                    CssClass="form-control" placeholder="請輸入內容"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="footer text-right" colspan="2">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登錄" CssClass="btn btn-primary"/>
            </td>
        </tr>
    </table>
</div>
</div>

</div>
</asp:Content>

