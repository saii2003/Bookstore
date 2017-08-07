<%@ Page Title="網路書店-書籍資訊" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <link href="Styles/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <script type="text/javascript" src="Scripts/JScript.js"></script>
    <link href="Styles/product.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

    .style2
    {
    font-size: 15px;
    font-family: 微軟正黑體;
    }
    .style2
    {
    color: #666666;
    }       
    .style3
    {
        color: #FF6666;
    }
    #tabs,#tabs2
    {
        
        border-color:#3174AE;
    }
    #tabs ul,#tabs2 ul
    {
        border-color:#3174AE;
        background-color:#3174AE;
    }
    .cart
    {
        width:155px;
        
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/zh_TW/sdk.js#xfbml=1&version=v2.5";
            fjs.parentNode.insertBefore(js, fjs);
        } (document, 'script', 'facebook-jssdk'));

          $(function() {
            $( "#tabs" ).tabs();
        });
        $(function () {
            $("#tabs2").tabs();
        });
    </script>

<div class="container">
    <div class="row">
        <div class="col-md-2">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                  <div class="panel panel-primary">
                    <div class="panel-heading" role="tab" id="headingOne">
                      <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                          中文書
                        </a>
                      </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <ul class="list-group">
                                <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 文學</li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=1&amp;list=1">中文現代文學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=1&amp;list=2">日本現代文學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=1&amp;list=3">歐美現代文學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=1&amp;list=4">世界文學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=1&amp;list=5">推理/科幻小說</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=1&amp;list=6">科幻/恐怖小說</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=1&amp;list=7">武俠/歷史小說</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=1&amp;list=8">其他</a></li>
                         
                                <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 心靈勵志</li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=2&amp;list=1">勵志</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=2&amp;list=2">心理學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=2&amp;list=3">其他</a></li>
                            
                                <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 藝術設計</li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=3&amp;list=1">美術設計</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=3&amp;list=2">商業設計</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=3&amp;list=3">歐美現代文學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=3&amp;list=4">室內設計</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=3&amp;list=5">電影</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=3&amp;list=6">音樂</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=3&amp;list=7">攝影</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=1&amp;class_id=3&amp;list=8">其他</a></li>
                            </ul>
                    </div>
                  </div>
                  <div class="panel panel-primary">
                    <div class="panel-heading" role="tab" id="headingTwo">
                      <h4 class="panel-title">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                          外文書
                        </a>
                      </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                            <ul class="list-group">
                                <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 文學</li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=1&amp;list=1">大眾文學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=1&amp;list=2">西洋文學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=1&amp;list=3">世界文學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=1&amp;list=4">世界文學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=1&amp;list=5">中國文學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=1&amp;list=6">其他文學</a></li>
  

                                <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 藝術設計</li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=2&amp;list=1">美術設計</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=2&amp;list=2">建築設計</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=2&amp;list=3">電影</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=2&amp;list=4">音學</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=2&amp;list=5">攝影</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=2&amp;list=6">其他設計</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=3&amp;list=1">程式語言</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=3&amp;list=2">作業系統</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=3&amp;list=3">網路通訊</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=3&amp;list=4">文書應用</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=3&amp;list=5">其他資訊</a></li>
                                
                                <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 電腦資訊</li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=4&amp;list=1">投資理財</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=4&amp;list=2">商業行銷</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=4&amp;list=3">企業管理</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=4&amp;list=4">企業管理</a></li>
                                
                         
                                <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 財經企管</li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=4&amp;list=1">投資理財</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=4&amp;list=2">商業行銷</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=4&amp;list=3">企業管理</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=4&amp;list=4">企業管理</a></li>


                                <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 語言學習</li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=5&amp;list=1">英文學習</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=5&amp;list=2">日文學習</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=5&amp;list=3">中文學習</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=5&amp;list=4">字典</a></li>
                                <li class="list-group-item"><a href="book_list.aspx?type=2&amp;class_id=5&amp;list=4">其他語言學習</a></li>
                            </ul>




                    </div>
                  </div>
                  <div class="panel panel-primary">
                    <div class="panel-heading" role="tab" id="headingThree">
                      <h4 class="panel-title">
                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                          簡體書
                        </a>
                      </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">

                        <ul class="list-group">
                        <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 文學</li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=1&amp;list=1">大眾文學</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=1&amp;list=2">西洋文學</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=1&amp;list=3">世界文學</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=1&amp;list=4">世界文學</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=1&amp;list=5">中國文學</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=1&amp;list=6">其他文學</a></li>


                        <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 藝術設計</li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=2&amp;list=1">美術設計</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=2&amp;list=2">建築設計</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=2&amp;list=3">電影</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=2&amp;list=4">音學</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=2&amp;list=5">攝影</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=2&amp;list=6">其他設計</a></li>
                        

                        
                        <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 電腦資訊</li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=3&amp;list=1">程式語言</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=3&amp;list=2">作業系統</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=3&amp;list=3">網路通訊</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=3&amp;list=4">文書應用</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=3&amp;list=5">其他資訊</a></li>

                        <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 財經企管</li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=4&amp;list=1">投資理財</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=4&amp;list=2">商業行銷</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=4&amp;list=3">企業管理</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=4&amp;list=4">企業管理</a></li>
                     

                         <li class="list-group-item"><span class="glyphicon glyphicon-book"></span> 語言</li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=5&amp;list=1">英文學習</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=5&amp;list=2">日文學習</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=5&amp;list=3">中文學習</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=5&amp;list=4">字典</a></li>
                        <li class="list-group-item"><a href="book_list.aspx?type=3&amp;class_id=5&amp;list=5">其他語言學習</a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>



        <div class ="col-md-10">
        <div id="pcenter">
            <div id="pcenter1" class="text-left">
                <div id="tabs">
	                <ul>
		                <li><a href="#tabs-1">商品資訊</a></li>
		                <li><a href="#tabs-2">作者書籍</a></li>
		            
	                </ul>
	                <div id="tabs-1">
                            <asp:FormView ID="FormView1" runat="server" 
                                OnDataBound="FormView1_DataBound" OnItemCommand="FormView1_ItemCommand" 
                                HorizontalAlign="Center">
                                <ItemTemplate>
                                    <table class="fromview">
                                        <tr>
                                            <td class="image" rowspan="12">
                                              <div id="newimage">
                                                    <asp:Image ID="Image3" runat="server" />
                                                </div>

                                                <div id="pro">
                                                <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail" Height="250px" 
                                                    ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' Width="200px" />
                                                    </div>
                                            </td>
                                            <td class="style2">
                                                <asp:Label ID="Label1" runat="server" Font-Names="微軟正黑體" Font-Size="14pt" 
                                                    ForeColor="#344C64" Text='<%# Eval("bookName") %>' Font-Bold="True"></asp:Label>
                                            </td>
                                            <td  class="cart" rowspan="2" >

                                              商品庫存：<asp:Label ID="Label6" runat="server" ForeColor="#FF0066" 
                                                    Text='<%# Eval("bookAmonet") %>'></asp:Label>
                                                <br />
                                                <asp:Label ID="Label9" runat="server" ForeColor="Red"></asp:Label>
                                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                                    CommandArgument='<%# Eval("bookID") %>' CommandName="addtocart">放入購物車</asp:LinkButton>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                                作者：<asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#6383BA" 
                                                    Text='<%# Eval("bookAuthor") %>'></asp:HyperLink>
                                            </td>
                                            
                                        </tr>
                                        <tr>
                                            <td class="style2" >
                                                出版社：<asp:HyperLink ID="HyperLink5" runat="server" ForeColor="#6383BA" 
                                                    Text='<%# Eval("bookPublisher") %>'></asp:HyperLink>
                                            </td>
                                            <td class="facebook" rowspan="2">
                                             <div class="fb-like" data-href="http://saii2004-001-site1.atempurl.com/product.aspx?book_id=<%=HttpContext.Current.Server.UrlEncode(HttpContext.Current.Request.QueryString["book_id"].ToString())%>" data-layout="button_count"></div>
                                                 <div class="fb-share-button" data-href="http://saii2004-001-site1.atempurl.com/product.aspx?book_id=<%=HttpContext.Current.Server.UrlEncode(HttpContext.Current.Request.QueryString["book_id"].ToString())%>" data-layout="button_count"></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                                出版日期：<asp:Label ID="Label2" runat="server" 
                                                    Text='<%# Eval("bookDate", "{0:D}") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                                商品語言：<asp:Label ID="Label3" runat="server" Text='<%# Eval("bookLanguage") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                                裝訂：<asp:Label ID="Label10" runat="server" Text='<%# Eval("bookBinding") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                                ISBN碼：<asp:Label ID="Label7" runat="server" Text='<%# Eval("bookISBN") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                                定價：NT$<asp:Label ID="Label4" runat="server" 
                                                    Text='<%# Eval("bookPrice", "{0:F0}") %>' Font-Strikeout="True" 
                                                    Font-Underline="False"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style2">
                                                售價：<span class="style4">8</span>折,NT$<asp:Label 
                                                    ID="Label5" runat="server" 
                                                    Text='<%# Math.Truncate(Convert.ToInt32(Eval("bookPrice", "{0:F0}"))*0.8) %>' 
                                                    ForeColor="#FF0066"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style3">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:FormView>
                    
                
                    </div>
	                <div id="tabs-2">
                        <table cellpadding="0" cellspacing="0" class="style1">
                                <tr>
                                    <td class="author">
                                        作者：<asp:Label ID="Label15" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
                                RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    <table class="datalist">
                                        <tr>
                                            <td>
                                                <asp:HyperLink ID="HyperLink6" runat="server" CssClass="hyper6" 
                                                    NavigateUrl='<%# "product.aspx?book_id="+Eval("bookID") %>' 
                                                    Text='<%# Eval("bookName") %>'></asp:HyperLink>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Image ID="Image2" runat="server" BorderColor="#666666" BorderStyle="Solid" 
                                                    BorderWidth="1px" Height="130px" 
                                                    ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' Width="100px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label16" runat="server" CssClass="hyper7" 
                                                    Text='<%# Eval("bookPublisher") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                NT$<asp:Label ID="Label17" runat="server" CssClass="hyper7" 
                                                    Font-Strikeout="True" Text='<%# Eval("bookPrice") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span class="style3">8</span>折NT$<asp:Label ID="Label18" runat="server" 
                                                    style="color: #FF6666" 
                                                    Text='<%# Convert.ToInt32(Eval("bookPrice"))*0.8 %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                
                    </div>
                </div>
            </div>
            <div id="pcenter2" class="text-left">
             <div id="tabs2">
	            <ul>
		            <li><a href="#tabs-1">書籍簡介</a></li>
		            <li><a href="#tabs-2">試讀內容</a></li>
		            <li><a href="#tabs-3">網友推薦</a></li>
	            </ul>
	            <div id="tabs-1">
                    <asp:FormView ID="FormView3" runat="server" 
                                Width="700px"><ItemTemplate>
                                <asp:Label ID="Label14" runat="server" 
                                        
                                    
                                    
                                    Text='<%# Convert.ToString(Eval("bookIntroduction")).Replace("\r","<br/>") %>'></asp:Label></ItemTemplate></asp:FormView>
                </div>
	            <div id="tabs-2">
               
                <asp:FormView ID="FormView2" runat="server">
                            <ItemTemplate>
                                <table cellpadding="0" cellspacing="0" 
                                    class="content"><tr>
                                    <td>
                            <asp:Label ID="Label8" runat="server" 
                                                    
                                Text='<%# Convert.ToString(Eval("bookContent")).Replace("\r","<br/>") %>'></asp:Label></td></tr></table></ItemTemplate></asp:FormView>
                
                </div>
	            <div id="tabs-3">
                <table cellpadding="0" cellspacing="0" class="td">
                                <tr>
                                    <td style="background-color: #F3F3F3">
                                        <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                                            onclick="Button2_Click" Text="我要寫短評" />
                                    </td>
                                </tr>
                            </table>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" GridLines="None" 
                                ShowHeader="False" onpageindexchanging="GridView1_PageIndexChanging">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <table cellpadding="0" cellspacing="0" class="message">
                                                <tr>
                                                    <td class="message1">
                                                        發表人：<asp:Label ID="Label19" runat="server" Text='<%# Eval("username") %>'></asp:Label>
                                                    </td>
                                                    <td class="messageright">
                                                        發表時間：<asp:Label ID="Label20" runat="server" 
                                                            Text='<%# Eval("date") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="message1" colspan="2">
                                                        標題：<asp:Label ID="Label22" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="message2" colspan="2">
                                                        短評內容：<br />
                                                        <asp:Label ID="Label21" runat="server" 
                                                            Text='<%# Convert.ToString(Eval("contents")).Replace("\r","<br/>") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                
                
                
                
                </div>
            </div>   







            </div>
        </div>
        </div>
    </div>
</div>
</asp:Content>

