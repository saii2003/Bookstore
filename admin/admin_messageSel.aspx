<%@ Page Title="網路書店後端管理-訊息查詢" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin_messageSel.aspx.cs" Inherits="admin_admin_messageSel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


  <style type="text/css">

.panel-heading .form-group
    {
        
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




 .inputform
 {
     padding:0px 0px 0px 370px;
 }
 .g2
 {
     margin:20px atuo 20px auto;
     text-align:center;
 }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel panel-default">
<div class="panel-heading">

 

    <table>
    <tr>
    <td class="ttitle">
    訊息查詢
    </td>
    <td class="inputform">
    <div class="form-group-sm form-inline">
     <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
        <asp:ListItem Value="2">時間範圍</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="請輸入起始時間"></asp:TextBox>
        - <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="請輸入到期時間"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="搜尋"  CssClass="form-control"/>
      </div>
    </td>
    </tr>  
    </table>
    </div>



    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" 
        onpageindexchanging="GridView1_PageIndexChanging" Width="100%" 
            HorizontalAlign="Center" onrowcommand="GridView1_RowCommand" 
        CssClass="g2" BorderColor="Gainsboro">
        <Columns>
            <asp:TemplateField HeaderText="編號">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("messageID") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="類型">
                <ItemTemplate>
                    <asp:Label ID="Label18" runat="server" Text='<%# Eval("messageType") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="標題">
                <ItemTemplate>
                    <asp:Label ID="Label14" runat="server" 
                        Text='<%# Eval("messageTitle") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="登錄時間">
                <ItemTemplate>
                    <asp:Label ID="Label15" runat="server" 
                        Text='<%# Convert.ToDateTime(Eval("messageDate")).ToString("yyyy/MM/dd") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="登錄者">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("messager") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" 
                        CommandArgument='<%# Eval("messageID") %>' CommandName="deletes" Text="刪除訊息" />
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
        </Columns>
        <SelectedRowStyle BackColor="#FFF2E6" />
    </asp:GridView>

</div>
</asp:Content>

