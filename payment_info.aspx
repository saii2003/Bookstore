<%@ Page Title="網路書店-付款方式" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment_info.aspx.cs" Inherits="payment_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/payment_infot.css" rel="stylesheet" type="text/css" />
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid">
    <div class="row">
    <div class="col-md-12">
    <div id="center">
    <div id="center01">

    </div>
    
    <div id="center02">
    
    <div class="paytitle">
    <span class="glyphicon glyphicon-shopping-card"></span> 付款方式
    </div>
                        <table class="style1">
                            <tr>
                                <td class="td1">
                                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" Width="20px" />
                                </td>
                                <td class="td2">
                                    <img src="images/pay.png" />
                                </td>
                            </tr>
                        </table>
<div class="paytitle">
    <span class="glyphicon glyphicon-user"></span> 收件人資料
    </div>
<div class="form-group">
    <table class="style1">
        <tr>
            <td class="style2">
                收件人</td>
                
                                <td class="td">
                                    <asp:TextBox ID="TextBox2" runat="server"  CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    連絡電話</td>
                                <td class="td">
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    聯絡手機</td>
                                <td class="td">
                                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    電子郵件</td>
                                <td class="td">
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    收件地址</td>
                                <td class="td">
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                </td>
                            </tr>
                            </table>
                </div>
 <div id="center03" class="text-right">
 <asp:Button ID="Button3" runat="server"  onclick="Button3_Click" 
        Text="返回購物車" CssClass="btn btn-primary" Width="100px"  />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="下一步" 
        CssClass="btn btn-primary" Width="100px" />
</div>    
 </div>
 </div>
 </div>
 </div>   






</asp:Content>

