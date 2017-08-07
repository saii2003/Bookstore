<%@ Page Title="網路書店-加入會員" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_new.aspx.cs" Inherits="Member_mem_new" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Styles/mem_new.css" rel="stylesheet" type="text/css" />
    <script src="../Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="../Scripts/jquery-ui.js" type="text/javascript"></script>
    <link href="../Styles/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <link href="../Styles/jquery-ui.theme.min.css" rel="stylesheet" type="text/css" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
    //檢查帳號是否重複
        $(function () {
            $('#checkusername').click(function () {
                $.ajax({
                    type: "post",
                    url: "../WebService.asmx/checkUsername",
                    data: "username=" + $('#<%=username.ClientID %>').val(),

                    success: function (data) {
                        alert($(data).text());
                    }
                });
            });

            //datepicker
            $("#<%=birthday.ClientID %>").datepicker({
            dateFormat: 'yy-mm-dd',
            changeYear: true,
            yearRange: '1911:y-10',
        });

        });
        
    </script>

<div id="center1">
<div id="newcenter" class="text-left">
<span class="glyphicon glyphicon-user"></span> 加入會員
</div>
        
<div id="center2">

    <table cellspacing="0" class="style1">
        <tr>
            <td class="style3">
                

                                  
                                    帳號</td>
            <td>                    
                                    <div class="input-group"> 
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </span>
                                        <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="請輸入8~12字元"></asp:TextBox>
                                        
                                     </div> 
                                       
                                       <asp:Label ID="Label1" runat="server" ForeColor="Red" CssClass="lab"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                            ControlToValidate="username" Display="None" ErrorMessage="請輸入帳號"></asp:RequiredFieldValidator>
                               
                                  

                
                                    </td>
        </tr>
        <tr>
            <td class="style3">
            
                    密碼</td>
            <td>
                    <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-lock"></span>
                    </span>
                    <asp:TextBox 
                        ID="password" runat="server" TextMode="Password" CssClass="form-control" placeholder="請輸入8~12字元"
                        ></asp:TextBox>
                    </div>
                    
                    <asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator6" runat="server" ControlToValidate="password" 
                        Display="None" ErrorMessage="請輸入密碼"></asp:RequiredFieldValidator>
                    
            </td>
        </tr>
        <tr>
            <td class="style3">
            
                   確定密碼</td>
            <td>
             <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-check"></span>
                    </span>

                   <asp:TextBox 
                       ID="confirmPass" runat="server" TextMode="Password" CssClass="form-control" placeholder="輸入必須跟密碼相符"></asp:TextBox>
            </div>
                    <span class="style6">
                    <asp:CompareValidator ID="CompareValidator1" 
                        runat="server" ControlToCompare="password" ControlToValidate="confirmPass" 
                        Display="None" ErrorMessage="確認密碼錯誤，請重新輸入。"></asp:CompareValidator>
                    </span>
            </td>
        </tr>




        <tr>
            <td class="style3">
            
                姓名</td>
            <td >
            <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-user"></span>
                    </span>
                <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="請輸入姓名"></asp:TextBox>
            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="name" Display="None" ErrorMessage="請輸入姓名"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
            
                            性別</td>
            <td >
          
                            <asp:RadioButtonList ID="sex" runat="server" RepeatDirection="Horizontal" 
                                Width="80px" Font-Size="12pt">
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:RadioButtonList>
                
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                ControlToValidate="sex" Display="None" ErrorMessage="請輸入性別"></asp:RequiredFieldValidator>
                            </td>
            
        </tr>
        <tr>
            <td class="style3">
                出生日期</td>
            <td>
            <div class="input-group">
            <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
            <asp:TextBox ID="birthday" runat="server" CssClass="form-control" placeholder="請選擇日期"></asp:TextBox>
           </div>
                
            
        </tr>
        <tr>
            <td class="style3">
                連絡電話</td>
            <td >
            <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-phone-alt"></span>
                    </span>
                            <asp:TextBox ID="phone" runat="server" CssClass="form-control" placeholder="請輸入行動電話"></asp:TextBox>
            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="phone" Display="None" ErrorMessage="請輸入聯絡電話"></asp:RequiredFieldValidator>
                            </td>
        </tr>
        <tr>
            <td class="style3">
                行動電話</td>
            <td>
            <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-phone"></span>
                    </span>
                            <asp:TextBox ID="cellphone" runat="server" CssClass="form-control" placeholder="請輸入行動電話"></asp:TextBox>
                    </div>
                        </td>
        </tr>
        <tr>
            <td class="style3">
                聯絡地址</td>
            <td>
            <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-home"></span>
                    </span>
                            <asp:TextBox ID="address" runat="server" CssClass="form-control"  placeholder="請輸入電子郵件"></asp:TextBox>
                    </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="address" Display="None" ErrorMessage="請輸入聯絡地址"></asp:RequiredFieldValidator>
                            </td>
        </tr>
        <tr>
            <td class="style3">
                電子郵件</td>
            <td>
            <div class="input-group">
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-envelope"></span>
                    </span>
                            <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="請輸入電子郵件"></asp:TextBox>
            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="email" Display="None" ErrorMessage="請輸入電子郵件"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="email" Display="None" ErrorMessage="電子郵件格式錯誤" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
        </tr>
    </table>

<div class=" text-right">
    <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" onclick="Button2_Click" 
        Text="確定" Width="70px" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />

</div>

</div>
</div>
</asp:Content>

