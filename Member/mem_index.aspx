<%@ Page Title="網路書店-會員專區" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mem_index.aspx.cs" Inherits="Member_mem_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../Styles/mem_index.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container-fluid">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12">
<div id="center1">
<div id="content1">
    <asp:Label ID="Label2" runat="server" Font-Size="18pt" Text="會員專區"></asp:Label>
    您好!歡迎來到網路書店</div>
<div id="content2">
<div id="centent2title">
    訊息公告</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            GridLines="None" HorizontalAlign="Center" ShowHeader="False" 
            CssClass="grid1" Width="800px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("messageType") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle CssClass="type" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink12" runat="server" 
                            NavigateUrl='<%# "~/messages.aspx?id="+Eval("messageID") %>' 
                            Text='<%# Eval("messageTitle") %>'></asp:HyperLink>
                    </ItemTemplate>
                    <ItemStyle CssClass="gridtitle" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("messageDate") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle CssClass="date" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

</div>
<div id="content3">
    <table class="style1">
        <tr>
            <td class="title12" colspan="3">
                個人專區</td>
        </tr>
        <tr>
            <td class="title">
                加入會員</td>
            <td class="title">
                會員資料</td>
            <td class="title">
                訂單資料</td>
        </tr>
        <tr>
            <td class="style8">
                <asp:HyperLink ID="HyperLink5" runat="server" 
                    NavigateUrl="~/Member/mem_login.aspx">會員登入</asp:HyperLink>
            </td>
            <td class="style8">
                <asp:HyperLink ID="HyperLink7" runat="server" 
                    NavigateUrl="~/Member/mem_update.aspx">修改會員資料</asp:HyperLink>
            </td>
            <td class="style8">
                <asp:HyperLink ID="HyperLink10" runat="server" 
                    NavigateUrl="~/Member/mem_orderSel.aspx">訂單查詢</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:HyperLink ID="HyperLink6" runat="server" 
                    NavigateUrl="~/Member/mem_new.aspx">加入會員</asp:HyperLink>
            </td>
            <td class="style8">
                <asp:HyperLink ID="HyperLink8" runat="server" 
                    NavigateUrl="~/Member/mem_modifyPw.aspx">修改密碼</asp:HyperLink>
            </td>
            <td class="style8">
                <asp:HyperLink ID="HyperLink11" runat="server" 
                    NavigateUrl="~/Member/mem_orderDel.aspx">取消訂單</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td class="style8">
                <asp:HyperLink ID="HyperLink9" runat="server" 
                    NavigateUrl="~/Member/mem_forgetPW.aspx">忘記密碼</asp:HyperLink>
            </td>
            <td class="style8">
                &nbsp;</td>
        </tr>
    </table>
</div>
</div>
</div>
</div>
</div>

</asp:Content>

