<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_open.aspx.cs" Inherits="mem_open" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        #content02
        {
            font-family: 微軟正黑體;
            color: #FF6699;
            font-weight: 900;
            text-align: center;
            line-height: 30px;
            margin-top: 10px;
            margin-bottom: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content02">
    您的帳號已經啟動現在是正式會員了<br />
    <asp:HyperLink ID="HyperLink5" runat="server" 
        NavigateUrl="~/Member/mem_index.aspx">回會員專區</asp:HyperLink>
</div>
</asp:Content>

