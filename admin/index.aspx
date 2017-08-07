<%@ Page Title="網路書店後端管理" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/admin.css" rel="stylesheet" type="text/css" />
 <style>
  .gbody
  {
      padding:0px 0px 3px 0px;
     
  }
  .iditem
  {
    
      padding:5px 0px;
      width:85px;
      text-align:center;
  }
 .item
 {
      padding:3px 0px 0px 0px;
      text-indent:12px;
     
 }
 .header
 {
    text-indent:12px;
    line-height:30px;
 }
 .page
 {
     font-size:14px;
     text-indent:8px;
     border:none;
     margin:8px 0px 0xp 10px;
     line-height:30px;

 }
 .title
 {
     margin:0px 0px 15px 0px;
 }

 
 </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="Div1">
   <div class="panel panel-default">
<div class="panel-heading">
<span class="glyphicon glyphicon-user"></span> 總會員數：<asp:Label ID="Label5" runat="server"
            Text="Label"></asp:Label>
</div>
      
      </div>  
    </div>
<div id="Div2">
<div class="panel panel-default">
<div class="panel-heading">
<span class="glyphicon glyphicon-book"></span> 訂單管理訊息
</div>
<div class="panel-body">
 你目前有 <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
    筆訂單尚未處理，請至<asp:HyperLink ID="HyperLink1" runat="server" 
        NavigateUrl="~/admin/admin_OrderSel.aspx">訂單管理</asp:HyperLink>
    中處理
</div>
</div>

     
                       
</div>

<div class="panel panel-default">
<div class="panel-heading">
<span class="glyphicon glyphicon-book"></span> 書籍管理訊息
</div>
<div class="panel-body text-left">
 目前有 <asp:Label ID="Label4" runat="server" ForeColor="#FF3300"></asp:Label>
                        本書籍無庫存，請至<asp:HyperLink ID="HyperLink2" runat="server" 
        NavigateUrl="~/admin/admin_bookinquire.aspx">書籍管理</asp:HyperLink>
                        中處理
<div class="title"></div>

<div class="gbody text-left">
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        Width="100%" AllowPaging="True"
        onpageindexchanging="GridView1_PageIndexChanging">
                            <Columns>
                                <asp:TemplateField HeaderText="書籍編號">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("bookID") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle CssClass="header"  />
                                    <ItemStyle CssClass="iditem"  />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="書籍名稱">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("bookName") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle CssClass="header"  />
                                    <ItemStyle CssClass="item"  />
                                </asp:TemplateField>
                            </Columns>
                            <PagerStyle CssClass="page" />
                        </asp:GridView>

</div>

</div>
</div>




</asp:Content>

