<%@ Page Title="網路書店-書籍搜尋" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="pro_search.aspx.cs" Inherits="pro_search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/pro_search.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="Scripts/jquery-1.4.1.js"></script>
    <script type="text/javascript" src="Scripts/JScript.js"></script>
    <script type="text/javascript" src="Scripts/jquery.autocomplete.js"></script>
    <style type="text/css">
    .style2
    {
    width: 97px;
    }
    .style3
    {
    color: #FF0066;
    }
    #left
    {
    padding-bottom: 10px;
    }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" >
    navg();
</script>
<div id ="content20">
    <div class="container-fluid">
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


        <div class="col-md-10">
            <div id="center">
            <div id="center1" class="text-left"><div class="glyphicon glyphicon-search"></div> 查詢結果</div>
            <div id="center2">
            <div id="center3">
                搜尋關鍵字：<asp:Label ID="Label5" runat="server" ForeColor="#FF0066" 
                            style="color: #CC0066"></asp:Label>
                <br />
                搜尋結果共：<asp:Label ID="Label3" runat="server" ForeColor="#CC0066"></asp:Label>筆資料。
             </div>

                <div id="center50">
                <asp:Label ID="Label4" runat="server" Font-Size="14pt" ForeColor="#FF5050"></asp:Label>
                </div>
                <div id="center4">
                <asp:DataList ID="DataList1" runat="server" CssClass="datalist" 
                    onitemcommand="DataList1_ItemCommand" 
                        onitemdatabound="DataList1_ItemDataBound" Width="899px">
                    <ItemTemplate>
                    <div id="datacontent">
                        <table class="data">
                            <tr>
                                <td class="style2" rowspan="6">
                                    <asp:ImageButton ID="ImageButton1" runat="server" BorderColor="#666666" 
                                        BorderStyle="Solid" BorderWidth="1px" Height="135px" 
                                        ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                        PostBackUrl='<%# "product.aspx?book_id="+Eval("bookID") %>' 
                                        />
                                
                                </td>
                                <td class="data">
                                    <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="#FF5050" 
                                        NavigateUrl='<%# "product.aspx?book_id="+Eval("bookID") %>' 
                                        Text='<%# Eval("bookName") %>'></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td class="data">
                                    作者：<asp:HyperLink ID="HyperLink6" runat="server" 
                                        Text='<%# Eval("bookAuthor") %>'></asp:HyperLink>
                                    ，出版社：<asp:HyperLink ID="HyperLink7" runat="server" 
                                        Text='<%# Eval("bookPublisher") %>'></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td class="data">
                                    語言：<asp:HyperLink ID="HyperLink5" runat="server" 
                                        Text='<%# Eval("bookLanguage") %>'></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td class="data">
                                    <span class="style3">8</span>折,NT$<asp:Label ID="Label1" runat="server" 
                                        Text='<%# Convert.ToInt32(Eval("bookPrice","{0:F0}"))*0.8 %>' 
                                        ForeColor="#FF0066"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="data">
                                    <asp:LinkButton ID="LinkButton1" runat="server" 
                                        CommandArgument='<%# Eval("bookID") %>' CommandName="addtocart">放入購物車</asp:LinkButton>
                                    <asp:Label ID="Label6" runat="server" ForeColor="Red" 
                                        Text='<%# Eval("bookAmonet") %>' Visible="False"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="data">
                                    <asp:Label ID="Label2" runat="server" 
                                        Text='<%# Eval("bookContent").ToString().Substring(0,90)+"......" %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                </div>
                <asp:Panel ID="Panel1" runat="server" CssClass="panel">
                </asp:Panel>
            </div>
            </div>
        </div>
        </div>
    </div>
</div>
</asp:Content>

