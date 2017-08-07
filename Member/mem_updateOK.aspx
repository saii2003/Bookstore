<%@ Page Title="網路書店-修改成功" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_updateOK.aspx.cs" Inherits="Member_mem_updateOK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../Styles/mem_index.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        #centerOK
        {
            font-family: 微軟正黑體;
            color: #FF5050;
            text-align: center;
            line-height: 30px;
            padding:50px 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="centerOK">
    修改會員資料成功!<br />
    <asp:LinkButton ID="LinkButton2" runat="server" 
        PostBackUrl="~/Member/mem_index.aspx">回會員中心</asp:LinkButton>
</div>
</asp:Content>

