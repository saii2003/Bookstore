<%@ Page Title="網路書店後端管理-會員查詢" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin_mem.aspx.cs" Inherits="admin_mem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
    .panel-heading .form-group
    {
        margin:0px;
        text-align:right;
    }
    table
    {
        width:100%;
    }
    .header
    {
        border-bottom-style: solid;
        border-bottom-width: 1px;
        border-bottom-color: #CCCCCC;
        padding-top: 8px;
        padding-bottom: 8px;
        font-family: 微軟正黑體;
        background-color:#5A809C;
        color:white;
        
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
.header1
{
    border:1px solid #666666;
    width:100px;
    padding:5px 10px 5px 0px;
    text-indent:25px;
    
}
.item1
{
    border:1px solid #666666;
    width:800px;
    padding:5px 0px 5px 10px;
    text-align:left;
}
.datav
{
    background-color:#5A809C;
    color:white; 
    width:100%;
    margin:20px 0px 0px 0px;
    padding:8px 0px 8px 25px;
    font-size:14;
    font-family: 微軟正黑體;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-default">
<div class="panel-heading">
    <table>
    <tr>
    <td class="ttitle">
    會員查詢
    </td>
    <td>
     <div class="form-group form-inline">
     
     
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
            
            <asp:ListItem Selected="True">請選擇項目</asp:ListItem>
            
            <asp:ListItem Value="1">會員帳號</asp:ListItem>
            <asp:ListItem Value="2">姓名</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="請輸入查詢項目"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="查詢" CssClass="form-control"  Width="70px"/>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="12pt" 
            onclick="LinkButton1_Click">顯示所有會員</asp:LinkButton>
    </div> 
    </td>  
    </table>
    </tr>
  </div>
<div class="panel-body">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="mID" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%" 
         HorizontalAlign="Center">
        <Columns>
            <asp:TemplateField HeaderText="會員編號">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("mID") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="會員帳號">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="會員密碼">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("password") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="會員等級">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("level") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:CommandField SelectText="會員資料" ShowSelectButton="True">
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>

<div class="datav">
會員基本資料
</div>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="mID" GridLines="None" 
        HorizontalAlign="Center">
        <Fields>
            <asp:TemplateField HeaderText="姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header1" />
                <ItemStyle CssClass="item1" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;別">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("sex") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header1" />
                <ItemStyle CssClass="item1" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="出生日期">
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" 
                        Text='<%# Convert.ToDateTime(Eval("birthday")).ToString("yyyy/MM/dd") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header1" />
                <ItemStyle CssClass="item1" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="連絡電話">
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("phone") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header1" />
                <ItemStyle CssClass="item1" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="行動手機">
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("cellphone") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header1" />
                <ItemStyle CssClass="item1" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="聯絡地址">
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header1" />
                <ItemStyle CssClass="item1" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="電子郵件">
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header1" />
                <ItemStyle CssClass="item1" />
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>


    
    
    </div>
    
</div>
</div>
</div>
</div>
</asp:Content>

