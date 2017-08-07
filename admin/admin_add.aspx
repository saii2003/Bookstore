<%@ Page Title="網路書店後端管理-新增管理者帳戶" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin_add.aspx.cs" Inherits="admin_admin_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../Styles/admin.css" rel="stylesheet" type="text/css" />
<style>
.left
{
    width:150px;
    padding:10px 10px 10px 0px;
    text-align:right;
}
.adminadd
{
    width:800px;
}
table .form-group
{
    padding:10px 10px 0px 0px;
    
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
<div class="panel panel-default">
<div class="panel-heading">
    新增管理者帳戶
  </div>
<div class="panel-body">
     <table class="adminadd">
         <tr>
             <td class="left">
                 管理者帳號</td>
             <td >
             <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="請輸入要登錄帳號"></asp:TextBox>
            </div>
             </td>
         </tr>
         <tr>
             <td class="left">
                 管理者密碼</td>
             <td>
             <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                 <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" CssClass="form-control" placeholder="請輸入要登錄密碼"></asp:TextBox>
            </div>
             </td>
         </tr>
         <tr>
             <td class="left">
                 名稱</td>
             <td>
             <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                 <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="請輸入要登錄名稱"></asp:TextBox>
              </div>
             </td>
         </tr>
         <tr>
             <td class="left">
                 權限</td>
             <td>
             <div class="form-group">
                 <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="100px">
                     <asp:ListItem Value="1">1</asp:ListItem>
                     <asp:ListItem Value="2">2</asp:ListItem>
                 </asp:DropDownList>
            </div>
             </td>
         </tr>
         <tr>
             <td colspan="2" class="footer text-right">
                 <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="新增帳戶" CssClass="btn btn-primary"/>
             </td>
         </tr>
     </table>
</div>
    </div>


</asp:Content>

