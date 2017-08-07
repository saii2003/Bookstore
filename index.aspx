<%@ Page Title="網路書店" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Styles/StyleSheet.css" rel="stylesheet" type="text/css" />
    <link href="Styles/jquery-ui.min.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
    <script type="text/javascript" src="Scripts/JScript.js"></script>
    <style>
    #tabs
    {
        margin:10px 0px 20px 0px;
    }
    .fbcontent
    {
        margin:0px 0px 20px 0px;
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

index();
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
    




        <div class="col-md-8 col-xs-8 col-sm-8">
            <div id="ad">
    
            <div id="imgtitle">
            <h3>桃花井</h3>
            <a id="titleUrl" href="#"><img id="titleimg" src="productImages/5f4487bd-53e0-4fc5-a2f3-5c319f8c0b3a1.jpg" width="100%" /></a>
            </div>
            <ul>
            <li><a href="product.aspx?book_id=16"><img src="productImages/5f4487bd-53e0-4fc5-a2f3-5c319f8c0b3a1.jpg"  alt="桃花井"  /></a></li>
            <li><a href="product.aspx?book_id=17"><img src="productImages/f163c73e-941a-414e-8d68-e6e0cb1ecc081.jpg"  alt="文學博士踹共大學的生命體驗" /></a></li>
            <li><a href="product.aspx?book_id=18"><img src="productImages/e62e0d91-8b7e-4cb2-9d78-4825ea571ecb1.jpg"  alt="惡欲森林" /></a></li>
            <li><a href="product.aspx?book_id=19"><img src="productImages/457f9914-a09e-4aa5-8736-3b747f50f1051.jpg" alt="Bringing Light to Twilight: Perspectives on a Pop"  /></a></li>
            <li><a href="product.aspx?book_id=20"><img src="productImages/dec31647-b2ef-4f69-8734-d4a3169394ba1.jpg"  alt="My Dead Dad Was in ZZ Top" /></a></li>
            <li><a href="product.aspx?book_id=21"><img src="productImages/fe99fe90-28c6-48fb-a9ec-edb8c08e803c1.jpg"  alt="The Little Prince" /></a></li>
            </ul>

            </div>





            
            <!-- Tabs -->
            <div id="tabs">
	            <ul>
		            <li><a href="#tabs-1">中文書</a></li>
		            <li><a href="#tabs-2">外文書</a></li>
		            <li><a href="#tabs-3">簡體書</a></li>
	            </ul>
	            <div id="tabs-1">
                <asp:FormView runat="server" ID="FormView2" Width="100%"><ItemTemplate>
                            <table class="text-left">
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="ImageButton4" runat="server"  
                                            CssClass="image10 thumbnail" Height="150px"  Width="130px"
                                            ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                            PostBackUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' />
                                        <asp:HyperLink ID="HyperLink18" runat="server" CssClass="hyper2" 
                                            NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                            Text='<%# Eval("bookName")+"<br/>" %>'></asp:HyperLink>
                                        <asp:HyperLink ID="HyperLink11" runat="server" CssClass="hyperl" 
                                            NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                            Text='<%# Eval("bookIntroduction").ToString().Substring(0,120)+"..." %>'>
                                            </asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        
                </ItemTemplate>
                </asp:FormView>
                
                </div>
	            <div id="tabs-2">
                <asp:FormView runat="server" ID="FormView5" Width="100%">
                <ItemTemplate>
                    <table class="text-left">
                        <tr>
                            <td >
                                <asp:ImageButton ID="ImageButton7" runat="server" 
                                            CssClass="image10 thumbnail" Height="150px"
                                            ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                            PostBackUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                            Width="130px" />
                                <asp:HyperLink ID="HyperLink17" runat="server" CssClass="hyper2" 
                                            NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                            Text='<%# Eval("bookName")+"<br/>" %>'></asp:HyperLink>
                                <asp:HyperLink ID="HyperLink16" runat="server" CssClass="hyperl" 
                                            NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                            
                                    Text='<%# Eval("bookIntroduction").ToString().Substring(0,120)+"..." %>'>
                                            </asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:FormView>
                
                
                </div>
	            <div id="tabs-3">
                <asp:FormView runat="server" ID="FormView7" Width="100%">
                <ItemTemplate>
                    <table class="text-left">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton9" runat="server"
                                            CssClass="image10 thumbnail" Height="150px" Width="130px"
                                            ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                            PostBackUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' />
                                <asp:HyperLink ID="HyperLink47" runat="server" CssClass="hyper2" 
                                            NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                            Text='<%# Eval("bookName")+"<br/>" %>'></asp:HyperLink>
                                <asp:HyperLink ID="HyperLink48" runat="server" CssClass="hyperl" 
                                            NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                            Text='<%# Eval("bookIntroduction")+"..." %>'></asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:FormView>
                
                
                
                
                </div>
            </div>





            <!------------------------------------grid---------------------------------------------->
        <div class="panel panel-primary text-left">
        <div class="panel-heading">訊息公告</div>
        <div class="panel-body">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            GridLines="None" HorizontalAlign="Center" ShowHeader="False" Width="100%" 
            >
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("messageType") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle CssClass="type" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink5" runat="server" 
                            NavigateUrl='<%# "~/messages.aspx?id="+Eval("messageID") %>' 
                            Text='<%# Eval("messageTitle") %>'></asp:HyperLink>
                    </ItemTemplate>
                    <ItemStyle CssClass="title" />
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
    </div>



    <!--------------------------------------------------new------------------------------------------------->

    <div class="panel panel-primary text-left">
   
        <div class="panel-heading">中文書上架</div>
        <div class="panel-body">
        <asp:DataList ID="DataList1" runat="server" CssClass="datalist" 
            HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" 
                Width="100%">
            <ItemStyle VerticalAlign="Top" />
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="img-thumbnail" 
                                Height="150px" ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                PostBackUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="datalist_td">
                            <asp:HyperLink ID="HyperLink6" runat="server" 
                                NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                Text='<%# Eval("bookName") %>'></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink7" runat="server" 
                                Text='<%# Convert.ToString(Eval("bookIntroduction")).Substring(0,30) %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
    </div>
   
   
    <div class="panel panel-primary text-left">
   
        <div class="panel-heading">外文書上架</div>
        <div class="panel-body">
        <asp:DataList ID="DataList2" runat="server" CssClass="datalist" 
            HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" 
            onselectedindexchanged="DataList2_SelectedIndexChanged" Width="100%">
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            <asp:ImageButton ID="ImageButton1" runat="server"  CssClass="img-thumbnail" 
                                Height="150px" ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                PostBackUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="datalist_td">
                            <asp:HyperLink ID="HyperLink6" runat="server" 
                                NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                Text='<%# Eval("bookName") %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
      </div>
    </div>


    


    

 
    
    </div>
           <!----------------------------------------facebook---------------------------------------------------------------->
        <div class="col-md-2 col-xs-2 col-sm-2">
        <div class="fbcontent">
        <div class="fb-page" 

          data-href="https://www.facebook.com/網路書店-1498910307077806/"
        

          data-hide-cover="false">
          </div>
          </div>
        <div class="panel panel-primary">
              <div class="panel-heading">推薦書</div>
              <div class="panel-body">
                <asp:FormView ID="FormView1" runat="server" HorizontalAlign="Center" Width="100%">
            <ItemTemplate>
                <table>
                    <tr>
                        <td  colspan="2">
                            <asp:HyperLink ID="HyperLink8" runat="server" CssClass="hyperl" 
                                Font-Size="12pt" NavigateUrl='<%# "product.aspx?book_id="+Eval("bookID") %>' 
                                Text='<%# Eval("bookName") %>'></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td  colspan="2">
                            <asp:ImageButton ID="ImageButton3" runat="server" 
                                BorderStyle="Solid" BorderWidth="1px" CssClass="image2 thumbnail" Height="150px" 
                                ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                PostBackUrl='<%# "product.aspx?book_id="+Eval("bookID") %>' Width="130px" />
                        </td>
                    </tr>
                    <tr>
                        <td >
                            &nbsp;</td>
                        <td >
                            <asp:HyperLink ID="HyperLink7" runat="server" CssClass="hyperl" 
                                NavigateUrl='<%# "product.aspx?book_id="+Eval("bookID") %>' 
                                Text='<%# Eval("bookContent").ToString().Substring(0,50)+"...." %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>
              </div>
            </div>


            <div class ="hit">
             <div class="panel panel-primary">
              <div class="panel-heading">排行榜</div>
              <div class="panel-body">

                <div id="right4">
    <ul class="tab">
    <li id="Li1">中文書</li>
    <li id="Li2">外文書</li>
    <li id="Li3">簡體書</li>
    </ul>
    <div id="container1">
        <div class="mytab">

                    <table align="center" cellpadding="0" 
                        cellspacing="0" class="num" >
                    <tr ><td class="top1" colspan="2" >
                    1</td></tr><tr><td class="num1" colspan="2" >
                        <asp:FormView runat="server" HorizontalAlign="Center" 
                                Width="100%" ID="FormView4" BorderColor="#DDDDDD"><ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="ImageButton6" runat="server"
                                                
                                                ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                                PostBackUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                                Width="120px" height="140px" BorderStyle="Solid" BorderColor="#666666" BorderWidth="1" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="HyperLink14" runat="server" 
                                                NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                                Text='<%# Eval("bookName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" 
                                                Text='<%# Eval("bookAuthor") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            
</ItemTemplate>
</asp:FormView>

                        </td></tr><tr ><td class="numr">2</td>
                        <td class="numleft">
                            <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink19">HyperLink</asp:HyperLink>

                        </td>
                    </tr><tr ><td class="numr">3</td>
                        <td class="numleft">
                            <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink20">HyperLink</asp:HyperLink>

                        </td>
                    </tr><tr><td class="numr" >4</td>
                        <td class="numleft">
                            <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink21">HyperLink</asp:HyperLink>

                        </td>
                    </tr><tr><td class="numr">5</td>
                        <td class="numleft" >
                            <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink22">HyperLink</asp:HyperLink>

                        </td>
                    </tr><tr><td class="numr" >6</td>
                        <td class="numleft">
                            <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink23">HyperLink</asp:HyperLink>

                        </td>
                    </tr><tr><td class="numr">7</td>
                        <td class="numleft" >
                            <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink24">HyperLink</asp:HyperLink>

                        </td>
                    </tr><tr ><td class="numr">8</td>
                        <td class="numleft" >
                            <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink25">HyperLink</asp:HyperLink>

                        </td>
                    </tr><tr><td class="numr" >9</td>
                        <td class="numleft" >
                            <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink26">HyperLink</asp:HyperLink>

                        </td>
                    </tr><tr><td class="numr">10</td>
                        <td class="numleft">
                            <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink27">HyperLink</asp:HyperLink>

                        </td>
                    </tr></table>

                    </div>
        <div class="mytab">

            <table align="center" cellpadding="0" 
                        cellspacing="0" class="num">
                <tr >
                    <td class="top1" colspan="2" >
                        1</td>
                </tr>
                <tr >
                    <td class="num1" colspan="2" >
                        <asp:FormView runat="server" HorizontalAlign="Center" Width="100%" 
                            ID="FormView3">
                            <ItemTemplate>
                                <table>
                                    <tr>
                                        <td class="form">
                                            <asp:ImageButton ID="ImageButton5" runat="server" Width="120px" height="140px" BorderStyle="Solid" BorderColor="#666666" BorderWidth="1"
                                                        ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                                        
                                    PostBackUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="form">
                                            <asp:HyperLink ID="HyperLink12" 
                                        runat="server" CssClass="hyper12" 
                                                        NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                                        Text='<%# Eval("bookName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="form">
                                            <asp:Label ID="Label5" runat="server" 
                                                        Text='<%# Eval("bookAuthor") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:FormView>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        2</td>
                    <td class="numleft1" >
                        <asp:HyperLink runat="server" ID="HyperLink28">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        3</td>
                    <td class="numleft1" >
                        <asp:HyperLink runat="server" ID="HyperLink29">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        4</td>
                    <td class="numleft1">
                        <asp:HyperLink runat="server" ID="HyperLink30">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr" >
                        5</td>
                    <td class="numleft1">
                        <asp:HyperLink runat="server" ID="HyperLink31">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        6</td>
                    <td class="numleft1" >
                        <asp:HyperLink runat="server" ID="HyperLink32">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        7</td>
                    <td class="numleft1" >
                        <asp:HyperLink runat="server" ID="HyperLink33">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        8</td>
                    <td class="numleft1" >
                        <asp:HyperLink runat="server" ID="HyperLink34">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="numr">
                        9</td>
                    <td class="numleft1" >
                        <asp:HyperLink runat="server" ID="HyperLink35">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr" >
                        10</td>
                    <td class="numleft1" >
                        <asp:HyperLink runat="server" ID="HyperLink36">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td colspan="2" >
                        &nbsp;</td>
                </tr>
            </table>

        </div>
        <div class="mytab">

            <table align="center" cellpadding="0" cellspacing="0" class="num" 
                       ">
                <tr >
                    <td class="top1" colspan="2" >
                        1</td>
                </tr>
                <tr >
                    <td class="num1" colspan="2">
                        <asp:FormView runat="server" HorizontalAlign="Center" CssClass="form1" 
                            Width="100%" ID="FormView6">
                            <ItemTemplate>
                                <table class="style1">
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="ImageButton8" runat="server" BorderColor="#666666" 
                                                        BorderStyle="Solid" BorderWidth="1px" 
                                                        ImageUrl='<%# "~/productImages/"+Eval("bookImage") %>' 
                                                        PostBackUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                                        Width="120px" height="140px"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="HyperLink37" runat="server" 
                                                        NavigateUrl='<%# "~/product.aspx?book_id="+Eval("bookID") %>' 
                                                        Text='<%# Eval("bookName") %>'></asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("bookAuthor") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:FormView>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        2</td>
                    <td class="numleft" >
                        <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink38">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr" >
                        3</td>
                    <td class="numleft">
                        <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink39">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="numr">
                        4</td>
                    <td class="numleft">
                        <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink40">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        5</td>
                    <td class="numleft" >
                        <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink41">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr" >
                        6</td>
                    <td class="numleft" >
                        <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink42">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        7</td>
                    <td class="numleft" >
                        <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink43">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        8</td>
                    <td class="numleft" >
                        <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink44">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="numr" >
                        9</td>
                    <td class="numleft">
                        <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink45">HyperLink</asp:HyperLink>
                    </td>
                </tr>
                <tr >
                    <td class="numr">
                        10</td>
                    <td class="numleft">
                        <asp:HyperLink runat="server" CssClass="h12" ID="HyperLink46">HyperLink</asp:HyperLink>
                    </td>
                </tr>
            </table>

        </div>
    </div>



    </div>
                
              </div>
            </div>
            </div>
        </div>

    
    </div>

    </div>

 


    
 
</asp:Content>

