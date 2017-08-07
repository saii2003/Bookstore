<%@ Page Title="網路書店-書籍短評" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/message.css" rel="stylesheet" type="text/css" />
        <style type="text/css">
            .新增樣式1
            {
                color: #FFFFFF;
                font-family: 微軟正黑體;
                font-size: 18px;
                font-weight: 900;
            }
            .message
            {
                border-radius:3px;
                
            }
            .style1
            {
                padding:12px 0px 12px 20px;
                font-size:14px;
            }
            #center
            {
                margin:20px auto;
            }
            .title
            {
                text-indent:20px;
            }
            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="center">
        <table cellpadding="0" cellspacing="0" class="message">
            <tr>
                <td class="title">
                    書籍短評</td>
            </tr>
            <tr>
                <td class="style1">
                    發表人：<asp:Label ID="Label1" runat="server" style="color: #FF6666"></asp:Label>
&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    發表日期：<asp:Label ID="Label2" runat="server" style="color: #FF6666"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">

                                    標題： <asp:TextBox ID="TextBox3" runat="server" Width="600px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style1">
                                    短評內容(限300個中文字)<br />
                    <asp:TextBox ID="TextBox2" runat="server" Height="200px" MaxLength="300" 
                        TextMode="MultiLine" Width="700px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-right">
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="確認送出"  CssClass="btn btn-primary"/>
                </td>
            </tr>
        </table>
    </div>

</asp:Content>

