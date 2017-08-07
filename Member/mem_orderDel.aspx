<%@ Page Title="網路書店-取消訂單" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_orderDel.aspx.cs" Inherits="Member_mem_orderDel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">

        .g2
        {
            text-align: center;
        }
        .header
        {
            padding:7px 0px;
            text-align:center;
            color:White;
            background-color:#4989C1;
        }
        #left
        {
            width: 200px;
            float: left;
            margin-top: 20px;
            margin-bottom: 20px;
        }
        #right
        {
            float: left;
            width: 80%;
            margin-top: 20px;
            margin-bottom: 80px;
            margin-left:100px;
        }
        .title1
        {
            text-align:left;
            ont-family:@微軟正黑體;
            padding:0px 0px 10px 10px;
            font-size:18px;
            font-weight:900;
            color:#666666;
            
        }
        .item
        {
            padding:5px 0px;
        }
         li.list-group-item a
        {
            display:block;
            padding:5px;
        }
        li.list-group-item
        {
            padding:0px;
        }
        li a.active
        {
            background-color:Silver;
            color:White;
        }
        li a
        {
            color:Black;
        }
        li a:hover
        {
            text-decoration:none;
            color:#3175AF;
        }
      
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
<div class="row">
<div class="col-md-2">
<div id="left">
<div class="panel panel-primary">
                    <div class="panel-heading">
                    會員專區
                     </div>
<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
    <ul class="list-group">
        <li class="list-group-item"><a href="mem_update.aspx">會員資料修改</a></li>
        <li class="list-group-item"><a href="mem_modifyPw.aspx">修改密碼</a></li>
        <li class="list-group-item"><a href="mem_orderSel.aspx">訂單紀錄查詢</a></li>
        <li class="list-group-item"><a href="#" class="active">取消訂單</a></li>
    </ul>
</div>
</div>
</div>
    

</div>

<div class="col-md-10">

<div id="right">
<div class="title1">
   <span class="glyphicon glyphicon-file"></span> 取消訂單 - 你目前共有 <asp:Label ID="Label10" runat="server"></asp:Label>
    筆訂單。
    </div>

   

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        HorizontalAlign="Center" Width="800px" GridLines="Horizontal" 
        onrowcommand="GridView2_RowCommand" 
        onrowdatabound="GridView2_RowDataBound">
        <Columns>
            <asp:TemplateField HeaderText="訂單編號">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("orderID") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="付款方式">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("payment") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="金額">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("totalPrice") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="數量">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("productAmount") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="付款">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("pay") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="出貨">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("ship") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="Button2" runat="server" 
                        CommandArgument='<%# Eval("orderID") %>' CommandName="orderDel"  CssClass="btn btn-primary btn-sm" 
                        Text="取消訂單" />
                </ItemTemplate>
                <HeaderStyle CssClass="header" />
                <ItemStyle CssClass="item" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </div>
</div>
</div>
</div>
</asp:Content>

