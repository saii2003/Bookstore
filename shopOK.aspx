<%@ Page Title="網路書店-購物完成" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="shopOK.aspx.cs" Inherits="shopOK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
    <style type="text/css">
    #center03
    {
        font-family: 微軟正黑體;
        color:Red;
        font-size: 18px;
        line-height: 30px;
        text-align: center;
        margin:0px 0px 20px 0px;
    }
    #title10
    {
        background-image: url('images/cart4.jpg');
        background-repeat: no-repeat;
    }
    #title10
    {
        margin:0px auto;
        height: 70px;
        width: 900px;
    }
    #title10
    {
        margin-bottom: 20px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
    <div class="row">
        <div id="col-md-12">
            <div id="title10">
                </div>
                <div id="center03">
          
                    
                    <br />
                    購買成功，謝謝您的購買!<br />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/index.aspx" >返回首頁</asp:LinkButton>
                
                </div>
        </div>
    </div>
</div>
</asp:Content>

