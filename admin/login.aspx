<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login.aspx.cs" Inherits="admin_admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>網路書店後端管理-管理者登入</title>
    <link href="../Styles/admin_login.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/bootstrap.min.js" type="text/javascript"></script>
    <link href="../Styles/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-family: 微軟正黑體;
            color: #333333;
            line-height: 35px;
            font-weight: 900;
            text-align: right;
            width:100px;
            padding:8px 10px 8px 0px;
        }
        .thumbnail,.code
        {
            margin:10px 0px 0px 0px;
        }
        footer i
        {
            font-size:20px;
            line-height:50px;
        }
        .panel-heading
        {
            font-weight:800;
            font-size:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="body">
    <div id="title">
        <h1><strong>網路書店後端管理</strong></h1></div>
    <div id="centent">
    <div class="panel panel-default">
    <div class="panel-heading">
        <span class="glyphicon glyphicon-log-in"></span> 管理者登入
        
       
    
    </div>
    <div class="panel-body">
        <table class="style1">
  
            <tr>
                <td class="style2">
                    管理者帳號</td>
                <td>
                <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Width="310px" placeholder="請輸入管理者帳號"></asp:TextBox>
                </div>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    管理者密碼</td>
                <td>
                <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                    <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password" Width="310px" CssClass="form-control" placeholder="請輸入管理者密碼"></asp:TextBox>
                </div>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    驗證碼</td>
                <td class="style3">

                       <div class="form-group">
                           <div class="form-inline">
                                <asp:TextBox ID="TextBox3" runat="server" Width="120px" CssClass="form-control code" placeholder="請輸入驗證碼"></asp:TextBox>
                                <asp:Image ID="Image1" runat="server" BorderColor="#466393" BorderStyle="Solid" 
                                     CssClass="thumbnail form-control" ImageUrl="~/code.aspx" />
                            </div>
                        </div>
                          
                        

                </td>
            </tr>
            <tr>
                <td class="footer" colspan="2">
                    <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="footer" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="登入" Height="30px" Width="80px" 
                        onclick="Button1_Click" CssClass="btn btn-primary"/>
                    <asp:Button ID="Button2" runat="server" Text="取消" Height="30px" Width="80px" 
                        onclick="Button2_Click" CausesValidation="False" CssClass="btn btn-primary"/>
                </td>
            </tr>
        </table>
    </div>
    </div>
    </div>
    
    </div>

    <footer class="container-fluid text-center">
                    Copyright©2015 saii2003@hotmail.com All Rights Reserved<br/>
                    本網頁為作品並無任何商業行為。</br>
                    如有問題請來 <a href="mailto:saii2003@hotmail.com"><i class="glyphicon glyphicon-envelope"></i></a>。
                </footer>
    </form>
    </form>

</body>
</html>

