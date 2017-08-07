<%@ Page Title="網路書店-新密碼" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_forgetPwOK.aspx.cs" Inherits="mem_forgetPwOK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../Styles/mem_forgetPw.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="center1">

        您的新密碼已寄送到<asp:Label ID="Label1" runat="server"></asp:Label>
            信箱!<br />
    <br />
            <asp:Button ID="Button2" runat="server" Height="25px" onclick="Button2_Click" 
                Text="回首頁" Width="100px" />
            <asp:Button ID="Button3" runat="server" Height="25px" onclick="Button3_Click" 
                Text="回會員專區" Width="100px" />

</div>
</asp:Content>

