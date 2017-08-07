<%@ Page Title="網路書店後端管理-書籍登錄" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin_bookadd.aspx.cs" Inherits="admin_admin_bookadd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../Styles/admin.css" rel="stylesheet" type="text/css" />
<style>
.style3
{
    padding:8px 8px 8px 0px;
}
.td
{
    padding:8px 8px 8px 0px;
}



</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-default">
<div class="panel-heading">
    書籍登錄
  </div>
<div class="panel-body">
<div class="form-group">
        <table class="bookadd">
            <tr>
                <td class="style3">
                    書籍名稱</td>
                <td class="td">
                    <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="請輸入書籍名稱"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    書籍作者</td>
                <td class="td">
                    <asp:TextBox ID="author" runat="server" CssClass="form-control" placeholder="請輸入書籍作者"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    出版社</td>
                <td class="td">
                    <asp:TextBox ID="publisher" runat="server" CssClass="form-control" placeholder="請輸入書籍出版社"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    出版日期</td>
                <td class="td">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="請輸入書籍出版日期 ex 2015/02/10"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    書籍ISBN</td>
                <td class="td">
                    <asp:TextBox ID="ISBN" runat="server" CssClass="form-control" placeholder="請輸入書籍ISBN碼"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    裝訂</td>
                <td class="td">
                    <asp:TextBox ID="binding" runat="server" CssClass="form-control" placeholder="請輸入書籍裝訂" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    書籍分類</td>
                <td class="td">
                <div class="form-inline">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
                        <asp:ListItem Selected="True" Value="0">請選擇類型</asp:ListItem>
                        <asp:ListItem Value="1">中文書</asp:ListItem>
                        <asp:ListItem Value="2">外文書</asp:ListItem>
                        <asp:ListItem Value="3">雜誌</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged" CssClass="form-control">
                    </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" CssClass="form-control">
                    </asp:DropDownList>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    書籍語言
                <td class="td">
                    <asp:TextBox ID="language" runat="server" CssClass="form-control" placeholder="請輸入書籍語言"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    書籍售價</td>
                <td class="td">
                    <asp:TextBox ID="price" runat="server" CssClass="form-control" placeholder="請輸入書籍售價"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    書籍庫存</td>
                <td class="td">
                    <asp:TextBox ID="amonet" runat="server" CssClass="form-control" placeholder="請輸入書籍庫存"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    書籍封面</td>
                <td class="td">
                    <asp:FileUpload ID="imagesUpload" runat="server"/>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    書籍簡介</td>
                <td class="td">
                    <asp:TextBox ID="introduction" runat="server" Height="80px" TextMode="MultiLine" 
                         CssClass="form-control" placeholder="請輸入書籍簡介"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    書籍內容</td>
                <td class="td">
                    <asp:TextBox ID="content" runat="server" Height="250px" TextMode="MultiLine" 
                         CssClass="form-control" placeholder="請輸入書籍簡介"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        Text="新增書籍"  CssClass="btn btn-primary"/>
                </td>
            </tr>
        </table>
</div>
</div>
</div>
</div>
</div>
</asp:Content>

