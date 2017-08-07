<%@ Page Title="網路書店-加入成功" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_newOK.aspx.cs" Inherits="Member_mem_newOK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../Styles/mem_new.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="centerOK">
    已經註冊成功<br />
    認證信件已經傳送到您的電子郵件中請點選啟動帳號!<br />
    <br />
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/index.aspx">請按這去購物</asp:HyperLink>

</div>
</asp:Content>

