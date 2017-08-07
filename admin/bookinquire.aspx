<%@ Page Title="網路書店後端管理-書籍查詢" Language="C#" MasterPageFile="~/admin/admin.master" EnableEventValidation = "false" AutoEventWireup="true" CodeFile="admin_bookinquire.aspx.cs" Inherits="admin_admin_bookinquire" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


<style>

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
     padding:0px 0px 0px 350px;
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
 .dbtn
 {
     padding:10px 20px 20px 0px;
     text-align:right;
 }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-default">
<div class="panel-heading">

 

    <table>
    <tr>
    <td class="ttitle">
    書籍查詢
    </td>
    <td class="inputform">
    <div class="form-group-sm form-inline">
    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                <asp:ListItem Selected="True">請選擇查詢</asp:ListItem>
                <asp:ListItem Value="1">全部書籍</asp:ListItem>
                <asp:ListItem Value="2">書籍名稱</asp:ListItem>
                <asp:ListItem Value="3">ISBN</asp:ListItem>
                <asp:ListItem Value="4">庫存小於</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="搜尋" CssClass="form-control"/>
    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
        <asp:ListItem Selected="True">匯出檔案格式</asp:ListItem>
        <asp:ListItem>Excel</asp:ListItem>
        <asp:ListItem>Word</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="Button7" runat="server" onclick="Button7_Click1" Text="匯出" CssClass="form-control"/>
    </div>
    </td>
    </tr>  
    </table>
</div>


<div class="panel-body">
            
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="bookID" width="100%"
            onpageindexchanging="GridView2_PageIndexChanging" 
            onselectedindexchanged="GridView2_SelectedIndexChanged" 
            onrowcommand="GridView2_RowCommand" CssClass="grid"
        onrowdatabound="GridView2_RowDataBound" HorizontalAlign="Center" 
            BorderColor="WhiteSmoke">
            <Columns>
                <asp:TemplateField HeaderText="編號">
                    <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("bookID") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                    <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="書籍名稱">
                    <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("bookName") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                    <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ISBN">
                    <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("bookISBN") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                    <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="售價">
                    <ItemTemplate>
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("bookPrice") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                    <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="庫存">
                    <ItemTemplate>
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("bookAmonet") %>'></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                    <ItemStyle CssClass="item" />
                </asp:TemplateField>
                <asp:CommandField SelectText="明細" ShowSelectButton="True">
                    <HeaderStyle CssClass="header" />
                    <ItemStyle CssClass="item" />
                </asp:CommandField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("bookID") %>' 
                            CommandName="bookDel" Height="25px" Text="刪除書籍" />
                    </ItemTemplate>
                    <HeaderStyle CssClass="header" />
                    <ItemStyle CssClass="item" />
                </asp:TemplateField>
            </Columns>
            <PagerStyle CssClass="page" />
        </asp:GridView>

</div>
</div>

<div class="panel panel-default">
<div class="panel-heading">
書籍明細
</div>
<div class="panel-body">


        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CssClass="detail" onitemcommand="DetailsView1_ItemCommand" 
            Width="100%" DataKeyNames="bookID" BorderColor="WhiteSmoke">
            <Fields>
                <asp:TemplateField HeaderText="書籍編號">
                    <ItemTemplate>
                        <asp:Label ID="Label16" runat="server" Text='<%# Eval("bookID") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="Label26" runat="server" Text='<%# Eval("bookID") %>'></asp:Label>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="書籍名稱">
                    <ItemTemplate>
                        <asp:Label ID="Label17" runat="server" Text='<%# Eval("bookName") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("bookName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="作者">
                    <ItemTemplate>
                        <asp:Label ID="Label18" runat="server" Text='<%# Eval("bookAuthor") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("bookAuthor") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="出版社">
                    <ItemTemplate>
                        <asp:Label ID="Label19" runat="server" Text='<%# Eval("bookPublisher") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("bookPublisher") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="出版日期">
                    <ItemTemplate>
                        <asp:Label ID="Label20" runat="server" 
                            Text='<%# Convert.ToDateTime(Eval("bookDate")).ToString("yyyy/MM/dd") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox18" runat="server" 
                            Text='<%# Bind("bookDate","{0:yyyy/MM/dd}") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ISBN">
                    <ItemTemplate>
                        <asp:Label ID="Label21" runat="server" Text='<%# Eval("bookISBN") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("bookISBN") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="裝訂">
                    <ItemTemplate>
                        <asp:Label ID="Label22" runat="server" Text='<%# Eval("bookBinding") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("bookBinding") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="語言">
                    <ItemTemplate>
                        <asp:Label ID="Label23" runat="server" Text='<%# Eval("bookLanguage") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox21" runat="server" Text='<%# Bind("bookLanguage") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="售價">
                    <ItemTemplate>
                        <asp:Label ID="Label24" runat="server" Text='<%# Eval("bookPrice") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox22" runat="server" Text='<%# Bind("bookPrice") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="庫存">
                    <ItemTemplate>
                        <asp:Label ID="Label25" runat="server" Text='<%# Eval("bookAmonet") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox23" runat="server" Text='<%# Bind("bookAmonet") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="封面">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox27" runat="server" Text='<%# Bind("bookImage") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" BorderColor="#666666" BorderStyle="Solid" 
                            BorderWidth="1px" Height="180px" 
                            ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' />
                    </ItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="簡介">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox13" runat="server" Height="150px" ReadOnly="True" 
                            Text='<%# Convert.ToString(Eval("bookIntroduction")) %>' TextMode="MultiLine" 
                            Width="550px"></asp:TextBox>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox25" runat="server" Height="150px" 
                            Text='<%# Bind("bookIntroduction") %>' TextMode="MultiLine" Width="600px"></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="內容">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox14" runat="server" Height="200px" ReadOnly="True" 
                            Text='<%# Convert.ToString(Eval("bookContent")) %>' TextMode="MultiLine" 
                            Width="549px"></asp:TextBox>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox26" runat="server" Text='<%# Bind("bookContent") %>' 
                            Height="200px" TextMode="MultiLine" Width="600px"></asp:TextBox>
                    </EditItemTemplate>
                    <HeaderStyle CssClass="dheader1" />
                    <ItemStyle CssClass="ditem1" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="Button6" runat="server" CommandArgument='<%# Eval("bookID") %>' 
                            CommandName="Edits" Text="編輯" CssClass="btn btn-primary"/>
                        <asp:Button ID="Button4" runat="server" CommandName="Updates" Text="更新" 
                            Visible="False" CssClass="btn btn-primary"/>
                        <asp:Button ID="Button5" runat="server" CommandArgument='<%# Eval("bookID") %>' 
                            CommandName="Cancels" Text="取消" Visible="False"  CssClass="btn btn-primary"/>
                    </ItemTemplate>
                    <HeaderStyle CssClass="dbtn" />
                    <ItemStyle CssClass="dbtn" />
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
    
</div>
</div>
</asp:Content>

