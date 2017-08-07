<%@ Page Title="網路書店-書籍列表" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="book_list.aspx.cs" Inherits="book_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link href="Styles/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <script type="text/javascript" src="Scripts/JScript.js"></script>
    <link href="Styles/booklist.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

    .image1
    {
	    padding: 5px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript">
    navg();
</script>
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-2 col-xs-2 col-sm-2">
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
    
    

    <div class ="col-md-10 col-xs-10 col-sm-10">
    <div class="text-left ">
       <h3><span class="glyphicon glyphicon-book "></span> <strong>書籍列表</strong></h3>

    <asp:DataList ID="DataList1" runat="server" 
                        HorizontalAlign="Center" RepeatColumns="3" 
            RepeatDirection="Horizontal" onitemdatabound="DataList1_ItemDataBound" 
            onitemcommand="DataList1_ItemCommand1" CssClass="datalist" Width="900px">
                        <AlternatingItemStyle VerticalAlign="Top" />
                        <ItemStyle VerticalAlign="Top" HorizontalAlign="Center" />
                        <ItemTemplate>
                            <table class="datalist">
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#666666" 
                                            BorderStyle="Solid" BorderWidth="1px" CssClass="image1" Height="150px" Width="110px"
                                            ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                            PostBackUrl='<%# "product.aspx?book_id="+Eval("bookID") %>'  />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:HyperLink ID="HyperLink5" runat="server" 
                                            NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                            Text='<%# Eval("bookName") %>' CssClass="hyper42"></asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="style2">作者：</span><asp:Label ID="Label3" runat="server" 
                                            ForeColor="#666666" Text='<%# Eval("bookAuthor") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        出版社：<asp:Label ID="Label1" runat="server" ForeColor="#666666" 
                                            Text='<%# Eval("bookPublisher") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="style6">8</span><span class="style7">折,NT$</span><span 
                                            class="style4"><span class="style5"><span class="style6"><asp:Label 
                                            ID="Label2" runat="server" ForeColor="#FF0066" 
                                            
                                            Text='<%# Math.Truncate(Convert.ToInt32(Eval("bookPrice", "{0:F0}"))*0.8) %>'></asp:Label>
                                        </span></span></span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" runat="server" 
                                            CommandArgument='<%# Eval("bookID") %>' CommandName="addtocart">放入購物車</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label5" runat="server" ForeColor="Red" 
                                            Text='<%# Eval("bookAmonet") %>' Visible="False"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
    <div class ="text-center">
    <ul class="pagination">
        <asp:Panel ID="Panel1" runat="server" CssClass="panel">
        </asp:Panel>
    </ul>

    </div>

    </div>
    </div>
    </div>

</asp:Content>

