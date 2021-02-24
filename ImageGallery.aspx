<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageGallery.aspx.cs" Inherits="RPSWebsiteCSharp.ImageGallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RPS Photo Gallery</title>


    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <script src="fancybox/lib/jquery-1.10.2.min.js"></script>


    <!-- Add fancyBox main JS and CSS files -->
    <script src="fancybox/source/jquery.fancybox.pack.js"></script>
    <link href="fancybox/source/jquery.fancybox.css" rel="stylesheet" />
    <link href="fancybox/source/helpers/jquery.fancybox-buttons.css" rel="stylesheet" />
    <script src="fancybox/source/helpers/jquery.fancybox-buttons.js"></script>


    <script type="text/javascript">
        $(document).ready(function () {
            /*
			 *  Simple image gallery. Uses default settings
			 */

            $('.fancybox').fancybox();

            /*
			 *  Different effects
			 */

            // Change title type, overlay closing speed
            $(".fancybox-effects-a").fancybox({
                helpers: {
                    title: {
                        type: 'outside'
                    },
                    overlay: {
                        speedOut: 0
                    }
                }
            });

            // Disable opening and closing animations, change title type
            $(".fancybox-effects-b").fancybox({
                openEffect: 'none',
                closeEffect: 'none',

                helpers: {
                    title: {
                        type: 'over'
                    }
                }
            });

            // Set custom style, close if clicked, change title type and overlay color
            $(".fancybox-effects-c").fancybox({
                wrapCSS: 'fancybox-custom',
                closeClick: true,

                openEffect: 'none',

                helpers: {
                    title: {
                        type: 'inside'
                    },
                    overlay: {
                        css: {
                            'background': 'rgba(238,238,238,0.85)'
                        }
                    }
                }
            });

            // Remove padding, set opening and closing animations, close if clicked and disable overlay
            $(".fancybox-effects-d").fancybox({
                padding: 0,

                openEffect: 'elastic',
                openSpeed: 150,

                closeEffect: 'elastic',
                closeSpeed: 150,

                closeClick: true,

                helpers: {
                    overlay: null
                }
            });

            /*
			 *  Button helper. Disable animations, hide close button, change title type and content
			 */

            $('.fancybox-buttons').fancybox({
                openEffect: 'none',
                closeEffect: 'none',

                prevEffect: 'none',
                nextEffect: 'none',

                closeBtn: false,

                helpers: {
                    title: {
                        type: 'inside'
                    },
                    buttons: {}
                },

                afterLoad: function () {
                    this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
                }
            });

            /*
			 *  Open manually
			 */

            $("#fancybox-manual-a").click(function () {
                $.fancybox.open('1_b.jpg');
            });

            $("#fancybox-manual-b").click(function () {
                $.fancybox.open({
                    href: 'iframe.html',
                    type: 'iframe',
                    padding: 5
                });
            });

            $("#fancybox-manual-c").click(function () {
                $.fancybox.open([
					{
					    href: '1_b.jpg',
					    title: 'My title'
					}, {
					    href: '2_b.jpg',
					    title: '2nd title'
					}, {
					    href: '3_b.jpg'
					}
                ], {
                    helpers: {
                        thumbs: {
                            width: 75,
                            height: 50
                        }
                    }
                });
            });
        });
	</script>

    <style>
        #content {
            background: #fff;
            padding: 40px 40px;
        }

        .thumbnail {
            background: #3e3e3e;
            width: 100%;
            height: 180px;
            -webkit-transition: all 0.5s linear;
            -moz-transition: all 0.5s linear;
            -o-transition: all 0.5s linear;
            transition: all 0.5s linear;
            -moz-box-shadow: 2px 2px 4px 0px #006773;
            -webkit-box-shadow: 2px 2px 4px 0px #006773;
            box-shadow: 2px 2px 4px 0px #006773;
            -moz-border-radius: 7px 7px 7px 7px;
            -webkit-border-radius: 7px 7px 7px 7px;
            border-radius: 7px 7px 7px 7px;
        }

            .thumbnail:hover {
                -webkit-box-shadow: 15px 15px 20px rgba(0,0, 0, 0.4);
                -moz-box-shadow: 15px 15px 20px rgba(0,0, 0, 0.4);
                box-shadow: 15px 15px 20px rgba(0,0, 0, 0.4);
                -webkit-transform: scale(1.05);
                -moz-transform: scale(1.05);
                transform: scale(1.05);
                text-decoration: none;
            }

        .thumbnail {
            opacity: 0.3;
            border: 1px solid #fff;
        }

            .thumbnail p {
                color: #fff;
                text-align: center;
                padding: 10px 0;
            }

        .fancybox-custom .fancybox-skin {
            box-shadow: 0 0 50px #222;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="content">
            <div class="row">
                <h3 style="text-align:center; color: #ff6a00; font-weight: bold;"> Photo Gallery of Rautahat Public School</h3>               
            </div>

            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                            <div class="thumbnail">
                                <a class="fancybox-buttons" data-fancybox-group="button" href="images/<%#Eval("name")%>">
                                    <img src="images/<%#Eval("name")%>" alt="" class="img-responsive"/></a>
                                <p><%#Eval("description")%></p>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>

    </form>
</body>
</html>
