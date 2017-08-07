<%@ Page Title="網路書店-購物車" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shop_cart.aspx.cs" Inherits="shop_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/shop_cart.css" rel="stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid">
    <div class="row">
    <div class="col-md-12">
    <div id="center">
    <div id="center01">
    </div>
    
    <div id="center02">
    
    <div id="carttitle">
    <span class="glyphicon glyphicon-shopping-cart"></span> 購物車明細
    </div>
   <div class="cart">
    <asp:GridView ID="GridView1" runat="server" 
            Width="100%" onrowdeleting="GridView1_RowDeleting" EnableTheming="True" 
           HorizontalAlign="Center" CssClass="grid" GridLines="None"
            >
           
            <RowStyle CssClass="item" HorizontalAlign="Center" />
            <Columns>
                <asp:CommandField DeleteText="取消" ShowDeleteButton="True"/>
            </Columns>
            <HeaderStyle CssClass="header" HorizontalAlign="Center" />
            <SelectedRowStyle />
            <EditRowStyle VerticalAlign="Bottom" />
        </asp:GridView>
    </div>

        <table class="carttd">
            <tr>
                <td class="style2">
   
        <asp:Button ID="Button4" runat="server" 
            Text="取消所有商品" onclick="Button4_Click"  CssClass="btn btn-default"/>
   
                </td>
                <td class="carttd">
                    購物車內共有<asp:Label ID="Label2" 
                        runat="server" ForeColor="#FF6666">0</asp:Label>
                    項商品，購物金額(未含運費)：NT$<asp:Label ID="Label1" runat="server" ForeColor="#FF6699">0</asp:Label>
                    元</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="carttd">
                    ※單次消費未滿500元需加收100元運費，滿500元免運費</td>
            </tr>
            </table>
            
    </div>
    <div id="center03" class="text-right">
    <asp:Button ID="Button2" runat="server"  onclick="Button2_Click" 
            Text="繼續購物"  CssClass="btn btn-primary" />
        <asp:Button ID="Button3" runat="server"  onclick="Button3_Click" 
            Text="Button"  CssClass="btn btn-primary"/>
    </div>
    </div>


    </div>
    </div>
    </div>
</asp:Content>

