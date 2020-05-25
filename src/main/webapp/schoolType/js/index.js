$(function() {
    // 有道样式
    if(window.location.search.indexOf("fromcoop=youdao")!=-1){
        document.documentElement.classList.add("youdao")
    }
    $('#search').focus(function() {
        $('.search-but').addClass('focus');
        $('#searchimg').attr('src', '//www.eol.cn/e_images/index/2018/search2.png');
    });
    $('#search').blur(function() {
        $('.search-but').removeClass('focus');
        $('#searchimg').attr('src', '//www.eol.cn/e_images/index/2018/search.png');
    });
    $('.search').hover(function() {
        $('.search-but').addClass('focus');
        $('#searchimg').attr('src', '//www.eol.cn/e_images/index/2018/search2.png');
    }, function() {
        $('.search-but').removeClass('focus');
        $('#searchimg').attr('src', '//www.eol.cn/e_images/index/2018/search.png');
    });
    $('.search-but').click(function(event) {
        var word = $('#search').val();
        eolsearch(word);
    });
    var fbloo = false;
    $("#search").focus(function() {
        fbloo = true;
    });
    $("#search").blur(function() {
        fbloo = false;
    });
    $(document).keypress(function(event) {
        var keynum = (event.keyCode ? event.keyCode : event.which);
        if (keynum == '13' && fbloo) {
            var word = $('#search').val();
            eolsearch(word);
        }
    });

    function eolsearch(word) {
        window.open("http://search.eol.cn/cse/search?q=" + word + "&click=1&s=5684435554596442487");
    }

    $('.gj-li').mouseover(function() {
        $(this).css('background', '#2f6fef');
        var imgsrc = '//www.eol.cn/e_html/zt/gxmd/images/icon' + ($(this).index() + 1) + '-w' + '.png';
        $(this).find('img').attr('src', imgsrc);
        $(this).find('a').css('color', '#fff');
    }).mouseout(function() {
        $(this).css('background', '#fff');
        var imgsrc = '//www.eol.cn/e_html/zt/gxmd/images/icon' + ($(this).index() + 1) + '.png';
        $(this).find('img').attr('src', imgsrc);
        $(this).find('a').css('color', '#333');
    });

    var ua = window.navigator.userAgent;
    if (/Mobile|iP(hone|ad)|Android|BlackBerry|IEMobile/.test(ua)) {
        $('body').click(function(event) {
            $('.menu-bg').hide();
        });
    } else {
        //
    }

    function gethtml(area) {
        var name = $("#pselect option[value='" + area + "']").text();
        $('.province').each(function(index, el) {
            $(el).removeClass('active');
            if ($(el).attr('data-id') == area) {
                $(el).addClass('active');
            }
        });
        $("#pselect option:contains('" + name + "')").prop("selected", true);
        let url = 'html/html_' + area + '.html';
        $.ajax({
            url: url,
            dataType: 'html'
        }).done(function(res) {
            $('.con-table').html(res);
        }).fail(function() {
            alert('获取数据失败！')
        });
    }

    function init() {
        var area = hasParameter('area');
        if (area) {
            gethtml(area);
        } else {
            gethtml(1);
        }
    }
    // init();


    $('.provincebox-pc>.province').click(function(event) {
        var id = $(this).attr('data-id');
        $('.province').each(function(index, el) {
            $(el).removeClass('active');
            if ($(el).attr('data-id') == id) {
                $(el).addClass('active');
            }
        });
        var url = window.location;
        // window.location.href =  url.origin+url.pathname + '?area='+id;
        window.location.href = url.origin + url.pathname + '#' + id;
    });

    $('#pselect').change(function(e) {
        var id = e.currentTarget.value;
        $('.province').each(function(index, el) {
            $(el).removeClass('active');
            if ($(el).attr('data-id') == id) {
                $(el).addClass('active');
            }
        });
        var url = window.location;
        // window.location.href =  url.origin+url.pathname + '?area='+id;
        window.location.href = url.origin + url.pathname + '#' + id;
    });

    function hasParameter(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return decodeURI(r[2]);
        return null;
    }
    $('body').on('click', '.mzk', function(event) {
        $(this).toggleClass('up')
    });

    $('.mtop-right').click(function(event) {
        event.stopPropagation();
        event.preventDefault();
        $('.menu-bg').toggle();
    });

});
