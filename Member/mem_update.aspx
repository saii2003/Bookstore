<%@ Page Title="網路書店-修改基本資料" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_update.aspx.cs" Inherits="Member_mem_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../Styles/mem_update.css" rel="stylesheet" type="text/css" />

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
        <li class="list-group-item"><a href="#" class="active">會員資料修改</a></li>
        <li class="list-group-item"><a href="mem_modifyPw.aspx">修改密碼</a></li>
        <li class="list-group-item"><a href="mem_orderSel.aspx">訂單紀錄查詢</a></li>
        <li class="list-group-item"><a href="mem_orderDel.aspx">取消訂單</a></li>
    </ul>

</div>
</div>
</div>
</div>


<div class="col-md-10">
<div id="right">
<div class="title text-left"><span class="glyphicon glyphicon-user"></span> 修改基本資料</div>
    <table class="style1">
        <tr>
            <td class="left">
                會員帳號</td>
            <td class="text-left">
                            <asp:Label ID="username" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td class="left">
                姓名</td>
            <td>
            <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                <asp:TextBox ID="name" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
                        </td>
        </tr>
        <tr>
            <td class="left">
                性別</td>
            <td class="text-left">
            <span id="rsex">
            <asp:RadioButtonList ID="sex" runat="server" RepeatDirection="Horizontal" 
                                >
                                <asp:ListItem Selected="True">男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
             </span>
                            

        </tr>
        <tr>
            <td class="left">
                出生日期</td>
            <td class="text-left">
                            <asp:Label ID="birthday" runat="server"></asp:Label>
                        </td>
        </tr>
        <tr>
            <td class="left">
                聯絡電話</td>
            <td >
            <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-phone-alt"></span></span>
                            <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
                        </td>
        </tr>
        <tr>
            <td class="left">
                行動電話</td>
            <td>
            <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-phone"></span></span>
                            <asp:TextBox ID="cellphone" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
                        </td>
        </tr>
        <tr>
            <td class="left">
                聯絡地址</td>
            <td>
            <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-home"></span></span>
                            <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </td>
        </tr>
        <tr>
            <td class="left">
                電子郵件</td>
            <td>
            <div class="input-group">
            <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
                            <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </td>
        </tr>
        <tr>
            <td class="footer text-right" colspan="2">
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="確認修改" 
                                CssClass="btn btn-primary" />
                        </td>
        </tr>
    </table>

</div>
</div>
</div>

</asp:Content>

