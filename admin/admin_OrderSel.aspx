<%@ Page Title="網路書店後端管理-訂單查詢" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin_OrderSel.aspx.cs" Inherits="admin_OrderSel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">

.panel-heading .form-group
    {
        margin:0px;
        text-align:right;
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

    padding:5px 0px 5px 0px;
    text-indent:25px;
    
}
.item1
{
    border:1px solid ##808080;
    width:800px;
    padding:5px 0px 5px 0px;

}

 .page td
 {
     font-size:14px;
     text-indent:8px;
    border:1px solid ##808080;
     margin:8px 0px 0xp 10px;
     line-height:30px;
     
 }
 .inputform
 {
     padding:0px 0px 0px 550px;
 }
 .dheader1
 {
     text-align:right;
     padding:10px 10px 10px 0px
 }
 .ditem1
 {
     padding:10px 0px 10px 10px
 }
 div.panel-body
 {
     padding:0px;
 }
 .detail
 {
     margin:0px;
 }
.page
{
    font-size:18px;
}
.detailv
{
    margin-bottom:30px;
}
.detailv .header
{
    width:100px;
}
.detailv .item
{
    text-align:left;
    padding:0px 0px 0px 20px;
}
.grid2
{
    margin:20px auto 0px auto;
   
}
.detailv .header
{
    width:100px;
}
.grid2 .item
{
    padding:10px 0px;
    m
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-default">
<div class="panel-heading">

 

    <table>
    <tr>
    <td class="ttitle">
    訂單查詢
    </td>
    <td class="inputform">
    <div class="form-group-sm form-inline">
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
            <asp:ListItem Selected="True" Value="0">請選擇查詢項目</asp:ListItem>
            <asp:ListItem Value="2">尚未付款</asp:ListItem>
            <asp:ListItem Value="3">尚未出貨</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="搜尋" CssClass="form-control"/>
&nbsp;<asp:LinkButton ID="LinkButton1" runat="server"
            onclick="LinkButton1_Click" CssClass="form-control">顯示所有訂單</asp:LinkButton>
    </div>
    </td>
    </tr>  
    </table>
    </div>




    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="orderID,mID" 
        onpageindexchanging="GridView1_PageIndexChanging" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" Width="100%" 
            HorizontalAlign="Center" 
        onrowcancelingedit="GridView1_RowCancelingEdit" onrowediting="GridView1_RowEditing" 
            onrowupdating="GridView1_RowUpdating" EnableViewState="False" 
        CssClass="g2" BorderColor="#EEEEEE">
        <Columns>
            <asp:TemplateField HeaderText="訂單編號">
                <EditItemTemplate>
                    <asp:Label ID="Label19" runat="server" Text='<%# Eval("orderID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("orderID") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="會員編號">
                <EditItemTemplate>
                    <asp:Label ID="Label20" runat="server" Text='<%# Eval("mID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("mID") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="訂單日期">
                <EditItemTemplate>
                    <asp:Label ID="Label21" runat="server" 
                        Text='<%# Convert.ToDateTime(Eval("orderDate")).ToString("yyyy/MM/dd") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label14" runat="server" 
                        Text='<%# Convert.ToDateTime(Eval("orderDate")).ToString("yyyy/MM/dd") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="付款方式">
                <EditItemTemplate>
                    <asp:Label ID="Label22" runat="server" Text='<%# Eval("payment") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("payment") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="金額">
                <EditItemTemplate>
                    <asp:Label ID="Label23" runat="server" Text='<%# Eval("totalPrice") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("totalPrice") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="數量">
                <EditItemTemplate>
                    <asp:Label ID="Label24" runat="server" Text='<%# Eval("productAmount") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("productAmount") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="付款">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("pay") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# Bind("pay") %>' />
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="出貨">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("ship") %>' />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox4" runat="server" Checked='<%# Eval("ship") %>' />
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:CommandField SelectText="訂單明細" ShowSelectButton="True">
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:CommandField>
            <asp:CommandField ShowEditButton="True">
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:CommandField>
        </Columns>
        <SelectedRowStyle BackColor="#FFF2E6" />
    </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        Width="80%" CssClass="grid2" HorizontalAlign="Center" 
        BorderColor="Gainsboro" Caption="訂單明細">
            <Columns>
                <asp:TemplateField HeaderText="明細編號">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("orderDetaileID") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                      <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="書籍名稱">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("bookName") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                      <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="數量">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("amount") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                      <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="單價">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("unitPrice") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                      <ItemStyle CssClass="item" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        Width="80%" CssClass="detailv" HorizontalAlign="Center" 
        BorderColor="Gainsboro" Caption="收件人資料">
            <Fields>
                <asp:TemplateField HeaderText="收件姓名">
                    <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="連絡電話">
                    <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("phone") %>'></asp:Label>

                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="行動電話">
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("cellphone") %>'></asp:Label>
                    </ItemTemplate>
                     <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="收件地址">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                    </ItemTemplate>
                     <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="電子郵件">
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                     <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
</div>

</asp:Content>

