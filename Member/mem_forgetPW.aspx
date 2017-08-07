<%@ Page Title="網路書店-忘記密碼" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_forgetPW.aspx.cs" Inherits="Member_mem_forgetPW" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../Styles/mem_forgetPw.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 80px;
        padding:5px 0px;
    }
    .title
    {
        padding:8px 0px;;
    }
    #Div1
    {
        margin:50px auto 100px auto;
        width:600px;
    }
    .forgettitle
    {
        font-family:@微軟正黑體;
        padding:0px 0px 20px 10px;
        font-size:20px;
        font-weight:900;
        color:#666666;
    }
    .footer
    {
       padding:15px 0px 0px 0px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="Div1">
<div class="forgettitle text-left">
<span class="glyphicon glyphicon-lock"></span> 忘記密碼
</div>

    <table class="style1">
        <tr>
            <td class="style2" style="text-align: right">
                會員帳號：</td>
            <td >
            <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="請輸入帳號"></asp:TextBox>
            </div>
            </td>
        </tr>
        <tr>
            <td class="style2">
                出生日期：</td>
            <td>
            <div class=" form-inline text-left">
            <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                <asp:DropDownList ID="year" runat="server" CssClass="form-control">
                </asp:DropDownList>
                <span class="input-group-addon">
                        年</span>
            </div>
               <div class="input-group">
                <asp:DropDownList ID="month" runat="server" CssClass="form-control">
                </asp:DropDownList>
                    <span class="input-group-addon">
                        月</span>
                </div>
                <div class="input-group">
                <asp:DropDownList ID="day" runat="server" CssClass="form-control">
                </asp:DropDownList>
                  <span class="input-group-addon">
                        日</span>
                </div>
            </div>  
            </td>
        </tr>
        <tr>
            <td class="style2">
                電子郵件：</td>
            <td >
            <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="請輸入電子郵件"></asp:TextBox>
            </div>
            </td>
        </tr>
        <tr>
            <td class="footer text-right" colspan="2">
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="確定送出" CssClass="btn btn-primary"  />
            </td>
        </tr>
    </table>

</div>
</asp:Content>

