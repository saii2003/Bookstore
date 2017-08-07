<%@ Page Title="網路書店後端管理-管理者帳戶查詢" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin_adminSel.aspx.cs" Inherits="admin_admin_adminSel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="../Styles/admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

.header
{
    
    padding-top: 8px;
    padding-bottom: 8px;
    font-family: 微軟正黑體;
    color:White;
    text-align:center;
}

.item
{
    
    font-family: 微軟正黑體;
    color: #666666;
    font-weight: 16px;
    padding-top: 5px;
    padding-bottom: 5px;
    
    text-align:center;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-default">
<div class="panel-heading">
    管理者帳戶管理
  </div>
<div class="panel-body">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" 
    onpageindexchanging="GridView1_PageIndexChanging" 
    onrowcommand="GridView1_RowCommand" onrowdatabound="GridView1_RowDataBound" 
         Width="100%" BorderStyle="Solid" BorderWidth="1px">
    <Columns>
        <asp:TemplateField HeaderText="編號">
            <ItemTemplate>
                <asp:Label ID="Label6" runat="server" Text='<%# Eval("id") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="header" />
            <ItemStyle CssClass="item" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="帳號">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("account") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="header" />
            <ItemStyle CssClass="item" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="密碼">
            <ItemTemplate>
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("password") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="header" />
            <ItemStyle CssClass="item" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="名稱">
            <ItemTemplate>
                <asp:Label ID="Label5" runat="server" Text='<%# Eval("name") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="header" />
            <ItemStyle CssClass="item" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="權限">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("level") %>'></asp:Label>
            </ItemTemplate>
            <HeaderStyle CssClass="header" />
            <ItemStyle CssClass="item" />
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("id") %>' 
                    CommandName="Del" Text="刪除帳號" />
            </ItemTemplate>
            <HeaderStyle CssClass="header" />
            <ItemStyle CssClass="item" />
        </asp:TemplateField>
    </Columns>
        <HeaderStyle BackColor="#5A809C" />
</asp:GridView>
</div>
</div>
</div>
</div>
</asp:Content>

