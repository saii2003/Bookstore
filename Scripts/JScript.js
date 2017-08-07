function memcheck() {
    $(function () {
        $('.mem').focus(function () {
            var $this = $(this);
            $this.addClass("membox");
        }).blur(function () {
            $(this).removeClass("membox");
        });
    });
}
function memtable() {
    $(function () {

        $('.user').focus(function () {
            $('#usertitle').hide();
            $(this).blur(function () {
                if ($('.user').val().length == 0) {
                    $('#usertitle').show();
                }
                else {
                    $('#usertitle').hide();
                }

            });
        });
        $('.pass1').focus(function () {
            $('#pass1').hide();
        }).blur(function () {
            if ($('.pass1').val().length == 0) {
                $('#pass1').show();
            }
            else {
                $('#pass1').hide();
            }
        });
        $('.pass2').focus(function () {
            $('#pass2').hide();
        }).blur(function () {
            if ($('.pass2').val().length == 0) {
                $('#pass2').show();
            }
            else {
                $('#pass2').hide();
            }
        });
        $('.name1').focus(function () {
            $('#name1').hide();
        }).blur(function () {
            if ($('.name1').val().length == 0) {
                $('#name1').show();
            }
            else {
                $('#name1').hide();
            }
        });
        $('.phone1').focus(function () {
            $('#phone1').hide();
        }).blur(function () {
            if ($('.phone1').val().length == 0) {
                $('#phone1').show();
            }
            else {
                $('#phone1').hide();
            }
        });
        $('.cellphone1').focus(function () {
            $('#cellphone1').hide();
        }).blur(function () {
            if ($('.cellphone1').val().length == 0) {
                $('#cellphone1').show();
            }
            else {
                $('#cellphone1').hide();
            }
        });
        $('.address1').focus(function () {
            $('#address1').hide();
        }).blur(function () {
            if ($('.address1').val().length == 0) {
                $('#address1').show();
            }
            else {
                $('#address1').hide();
            }
        });
        $('.email1').focus(function () {
            $('#email1').hide();
        }).blur(function () {
            if ($('.email1').val().length == 0) {
                $('#email1').show();
            }
            else {
                $('#email1').hide();
            }
        });

    });
}
function ajax_response() {
    $(function () {
        var prm = Sys.WebForms.PageRequestManager.getInstance();
        prm.add_pageLoaded(BindEvents);
        function BindEvents() {
            $('#Button5').click(function () {
                $('#aa').load("index.aspx");
            });
        }
    });
}
function index() {
    $(function () {
        $(' ul li img').mousemove(function () {
            $this = $(this);
            $('h3').html($this.attr('alt'));
            $('#titleimg').attr('src', $this.attr('src'));

        });
        $('ul li a').mousemove(function () {
            $this = $(this);
            $('#titleUrl').attr('href', $this.attr('href'));
        });

        $('#divtab ul.tab li').eq(0).addClass('active');
        $('#divtab #container div.mytab').eq(0).show();
        $('#divtab #container div.mytab').eq(1).hide();
        $('#divtab #container div.mytab').eq(2).hide();
        $('#divtab ul.tab li').mousemove(function () {
            $(this).addClass('active').siblings('.active').removeClass('active');
            switch ($(this).attr('id')) {
                case "ch":
                    $('#divtab #container div.mytab').eq(0).show();
                    $('#divtab #container div.mytab').eq(1).hide();
                    $('#divtab #container div.mytab').eq(2).hide();
                    break;
                case "en":
                    $('#divtab #container div.mytab').eq(0).hide();
                    $('#divtab #container div.mytab').eq(1).show();
                    $('#divtab #container div.mytab').eq(2).hide();
                    break;
                case "chs":
                    $('#divtab #container div.mytab').eq(0).hide();
                    $('#divtab #container div.mytab').eq(1).hide();
                    $('#divtab #container div.mytab').eq(2).show();
                    break;
            }
        });

        $('#right4 ul.tab li').eq(0).addClass('active');
        $('#right4 #container1 div.mytab').eq(0).show();
        $('#right4 #container1 div.mytab').eq(1).hide();
        $('#right4 #container1 div.mytab').eq(2).hide();
        $('#right4 ul.tab li').mousemove(function () {
            $(this).addClass('active').siblings('.active').removeClass('active');
            switch ($(this).attr('id')) {
                case "Li1":
                    $('#right4 #container1 div.mytab').eq(0).show();
                    $('#right4 #container1 div.mytab').eq(1).hide();
                    $('#right4 #container1 div.mytab').eq(2).hide();
                    break;
                case "Li2":
                    $('#right4 #container1 div.mytab').eq(0).hide();
                    $('#right4 #container1 div.mytab').eq(1).show();
                    $('#right4 #container1 div.mytab').eq(2).hide();
                    break;
                case "Li3":
                    $('#right4 #container1 div.mytab').eq(0).hide();
                    $('#right4 #container1 div.mytab').eq(1).hide();
                    $('#right4 #container1 div.mytab').eq(2).show();
                    break;
            }




        });



    });

}
function navg() {
    $(function () {
        $('#list1').click(function () {
            $('#tw0 .style1').slideToggle();
        });
        $('#list2').click(function () {
            $('#tw0 .style2').slideToggle();
        });
        $('#list3').click(function () {
            $('#tw0 .style3').slideToggle();
        });
        $('#list4').click(function () {
            $('#tw0 .style4').slideToggle();
        });
        $('#list5').click(function () {
            $('#tw0 .style5').slideToggle();
        });
        $('#list6').click(function () {
            $('#tw0 .style6').slideToggle();
        });
        $('#list7').click(function () {
            $('#tw0 .style7').slideToggle();
        });
        $('#list8').click(function () {
            $('#tw0 .style8').slideToggle();
        });


        $('#P1').click(function () {
            $('#en0 .style1').slideToggle();
        });
        $('#P2').click(function () {
            $('#en0 .style2').slideToggle();
        });
        $('#P3').click(function () {
            $('#en0 .style3').slideToggle();
        });
        $('#P4').click(function () {
            $('#en0 .style4').slideToggle();
        });
        $('#P5').click(function () {
            $('#en0 .style5').slideToggle();
        });

        $('#P6').click(function () {
            $('#ch0 .style1').slideToggle();
        });
        $('#P7').click(function () {
            $('#ch0 .style2').slideToggle();
        });
        $('#P8').click(function () {
            $('#ch0 .style3').slideToggle();
        });
        $('#P9').click(function () {
            $('#ch0 .style4').slideToggle();
        });
        $('#P10').click(function () {
            $('#ch0 .style5').slideToggle();
        });

    });
}
