<%@ Page Title="網路書店-會員登入" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_login.aspx.cs" Inherits="Member_mem_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/mem_login.css" rel="stylesheet" type="text/css" />

    <style type="text/css">
        .style1
        {
            width:490px;
            margin:0px 0px 0px 10px;
            
        }
        .style2
        {
            width: 153px;
        }
        .style4
        {
           padding:10px 0px;
            
        }
        .style3
        {
            font-family: 微軟正黑體;
            font-size: 14px;
            padding:10px 10px 10px 0px;
            width: 80px;
            text-align:right;
        }
        .panel
        {
            width:550px;
            padding:0px;
        }
        .panel-heading
        {
            font-family: 微軟正黑體;
            font-size:18px;
      
          
        }
        .alert-danger
        {
            width:490px;
        }
        .col-md-12
        {
            margin:0px auto;
        }
        .logincontainer
        {
            margin:30px 0px 30px 0px;
        }
        .container-fluid
        {
            margin:0px auto;
        }
        .center {
          width: auto;
          display: table;
          margin:30px auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="center">
<div class="container-fluid">
<div class="row">
    <div class="col-md-12">
        
        <div class="panel panel-default">
            <div class ="panel-heading text-left">
               <span class="glyphicon glyphicon-log-in"></span> 會員登入
            </div>
            <div class="panel-body">
                <table class="style1">
                <tr>
                    <td class="style3">
                        會員帳號
                     </td>
                    <td class="style4">
                    <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                    </span>
                        <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="請輸入帳號"></asp:TextBox>
                    </div>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        會員密碼
                     </td>
                    <td class="style4">
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span>
                        </span>
                        <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="form-control" placeholder="請輸入密碼"></asp:TextBox>
                    </div>
                    
                    </td>
                </tr>

                <tr>
                    <td class="style3">
                        驗證碼
                     </td>
                    <td class="style4">
                    <div class="form-group form-inline text-left">
                    
                        <asp:TextBox ID="code" runat="server" CssClass="form-control" placeholder="以大寫輸入驗證碼"></asp:TextBox>
                        <asp:Image ID="Image1" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" 
                            ImageUrl="~/code.aspx"  CssClass="img-thumbnail" height="34px" />
                    </div>
                        
                        
                   </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center danger">
                       
                            <asp:Label ID="Label2" runat="server" Font-Size="12pt" ForeColor="#FF0066"></asp:Label>
                      
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="loginfooter text-right">
                        <asp:CheckBox ID="CheckBox1" runat="server" Text="記住帳號密碼" />
                        <asp:Button ID="Button2" runat="server" Text="登入" 
                            onclick="Button2_Click" CssClass="btn btn-primary" Width="100px"/>
                    </td>
                </tr>
                 <tr>
                    <td colspan="2" class="loginfooter text-right">
                        忘記密碼?，<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#FF6666" 
                            NavigateUrl="~/Member/mem_forgetPw.aspx">請點選取得密碼</asp:HyperLink>
                    </td>
                </tr>

                
                <tr>
                    <td colspan="2" class="loginfooter text-right">
                        如果還沒加入會員，<asp:HyperLink ID="HyperLink6" runat="server" ForeColor="#FF6666" 
                            NavigateUrl="~/Member/mem_new.aspx">加入會員</asp:HyperLink>
                    </td>
                </tr>
            </table>
            
            </div>
        

           </div> 
        </div>
        </div>
    </div>
</div>
</asp:Content>

