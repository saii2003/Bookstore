<%@ Page Title="網路書店-修改密碼" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_modifyPw.aspx.cs" Inherits="Member_mem_modifyPw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="../Styles/mem_modifyPw.css" rel="stylesheet" type="text/css" />

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
        <li class="list-group-item"><a href="#" class="active">修改密碼</a></li> 
        <li class="list-group-item"><a href="mem_orderSel.aspx">訂單紀錄查詢</a></li>
        <li class="list-group-item"><a href="mem_orderDel.aspx">取消訂單</a></li>
    </ul>

</div>
</div>
</div>
</div>


<div class="col-md-10">

<div id="right">
<div class="title text-left"><span class="glyphicon glyphicon-lock"></span> 修改密碼</div>
    <table class="style1">
        <tr>
            <td class="left">
                        <asp:Label ID="Label1" runat="server" Text="舊密碼"></asp:Label>
                    </td>
            <td>
            <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span>
                        </span>
                        <asp:TextBox ID="PW" runat="server"  TextMode="Password" CssClass="form-control" placeholder="請輸入舊密碼"></asp:TextBox>
            </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="PW" Display="Dynamic" ErrorMessage="*不可空白"></asp:RequiredFieldValidator>
                        <asp:Label ID="Label5" runat="server" ForeColor="Red"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="left">
                        <asp:Label ID="Label2" runat="server" Text="新密碼"></asp:Label>
                    </td>
            <td>
            <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span>
                        </span>
                        <asp:TextBox ID="newPW" runat="server" TextMode="Password" CssClass="form-control" placeholder="請輸入新密碼"></asp:TextBox>
            </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="newPW" Display="Dynamic" ErrorMessage="*不可空白"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="PW" ControlToValidate="newPW" Display="Dynamic" 
                            ErrorMessage="*不可與舊密碼相同" Operator="NotEqual"></asp:CompareValidator>
                    </td>
        </tr>
        <tr>
            <td class="left">
                        <asp:Label ID="Label3" runat="server" Text="確認新密碼"></asp:Label>
                    </td>
            <td>
            <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span>
                        </span>
                        <asp:TextBox ID="confirm" runat="server" TextMode="Password" CssClass="form-control" placeholder="請輸入確認新密碼"></asp:TextBox>

            </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="confirm" Display="Dynamic" ErrorMessage="*不可空白"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator2" runat="server" 
                            ControlToCompare="newPW" ControlToValidate="confirm" Display="Dynamic" 
                            ErrorMessage="*和新密碼不一致"></asp:CompareValidator>
                    </td>
        </tr>
        <tr>
            <td class="footer" colspan="2">
                        <asp:Label ID="Label4" runat="server" ForeColor="#CC0000"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td class="text-right" colspan="2">
                        <asp:Button ID="Button2" runat="server" Text="確定" CssClass="btn btn-primary" 
                            onclick="Button2_Click" />
                    </td>
        </tr>
    </table>

</div>
</div>
</div>
</div>

</asp:Content>

