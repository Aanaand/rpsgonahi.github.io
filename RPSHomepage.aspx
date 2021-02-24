<%@ Page Title="" Language="C#" MasterPageFile="~/RPSMaster.Master" AutoEventWireup="true" CodeBehind="RPSHomepage.aspx.cs" Inherits="RPSWebsiteCSharp.RPSHomepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="assets/js/jssor.slider-28.0.0.min.js"></script>
    <script type="text/javascript">
        window.jssor_1_slider_init = function () {

            var jssor_1_SlideshowTransitions = [
              { $Duration: 800, x: -0.3, $During: { $Left: [0.3, 0.7] }, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 },
              { $Duration: 800, x: 0.3, $SlideOut: true, $Easing: { $Left: $Jease$.$InCubic, $Opacity: $Jease$.$Linear }, $Opacity: 2 }
            ];

            var jssor_1_options = {
                $AutoPlay: 1,
                $SlideshowOptions: {
                    $Class: $JssorSlideshowRunner$,
                    $Transitions: jssor_1_SlideshowTransitions,
                    $TransitionsOrder: 1
                },
                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$
                },
                $ThumbnailNavigatorOptions: {
                    $Class: $JssorThumbnailNavigator$,
                    $Orientation: 2,
                    $NoDrag: true
                }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*#region responsive code begin*/

            var MAX_WIDTH = 980;

            function ScaleSlider() {
                var containerElement = jssor_1_slider.$Elmt.parentNode;
                var containerWidth = containerElement.clientWidth;

                if (containerWidth) {

                    var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);

                    jssor_1_slider.$ScaleWidth(expectedWidth);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }

            ScaleSlider();

            $Jssor$.$AddEvent(window, "load", ScaleSlider);
            $Jssor$.$AddEvent(window, "resize", ScaleSlider);
            $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
            /*#endregion responsive code end*/
        };
    </script>
    <style>
        /*jssor slider loading skin spin css*/
        .jssorl-009-spin img {
            animation-name: jssorl-009-spin;
            animation-duration: 1.6s;
            animation-iteration-count: infinite;
            animation-timing-function: linear;
        }

        @keyframes jssorl-009-spin {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(360deg);
            }
        }

        .jssora061 {
            display: block;
            position: absolute;
            cursor: pointer;
        }

            .jssora061 .a {
                fill: none;
                stroke: #fff;
                stroke-width: 360;
                stroke-linecap: round;
            }

            .jssora061:hover {
                opacity: .8;
            }

            .jssora061.jssora061dn {
                opacity: .5;
            }

            .jssora061.jssora061ds {
                opacity: .3;
                pointer-events: none;
            }

        .button-wrapper {
            position: relative;
            width: 100%;
            /*max-width: 300px;*/
        }

        .btn {
            position: absolute;
            width: 100%;
            max-width: 100px;
            cursor: pointer;
            transform: translate(-50%, -53%);
            top: 50%;
            left: 50%;
            /*opacity: .7;*/
            clip-path: circle(33% at 50% 50%);
            -webkit-clip-path: circle(33% at 50% 50%);
        }

        .title {
            text-align: center;
            color: blue;
        }
    </style>
    <div class="container no-padding" style="background: #242424">
        <!-- === END HEADER === -->
        <!-- === BEGIN CONTENT === -->
        <div class="row">
            <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 980px; height: 300px; overflow: hidden; visibility: hidden;">
                <!-- Loading Screen -->
                <div data-u="loading" class="jssorl-009-spin" style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; text-align: center; background-color: rgba(0,0,0,0.7);">
                    <img style="margin-top: -19px; position: relative; top: 50%; width: 38px; height: 38px;" src="img/spin.svg" />
                </div>
                <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 980px; height: 380px; overflow: hidden;">
                    <div>
                        <img data-u="image" src="assets/img/slideshow/school.jpg" />
                        <div u="thumb">
                            Slide Description 001
                        </div>
                    </div>
                    <div>
                        <img data-u="image" src="assets/img/slideshow/assembly.jpg" />
                        <div u="thumb">
                            Slide Description 002
                        </div>
                    </div>
                    <div>
                        <img data-u="image" src="assets/img/slideshow/carousel2.jpg" />
                        <div u="thumb">
                            Slide Description 003
                        </div>
                    </div>
                    <div>
                        <img data-u="image" src="assets/img/slideshow/carousel4.jpg" />
                        <div u="thumb">
                            Slide Description 004
                        </div>
                    </div>
                    <div>
                        <img data-u="image" src="assets/img/slideshow/slide2.jpg" />
                        <div u="thumb">
                            Slide Description 005
                        </div>
                    </div>
                    <div>
                        <img data-u="image" src="assets/img/slideshow/slide3.jpg" />
                        <div u="thumb">
                            Slide Description 006
                        </div>
                    </div>
                    <div>
                        <img data-u="image" src="assets/img/slideshow/slide4.jpg" />
                        <div u="thumb">
                            Slide Description 007
                        </div>
                    </div>
                    <div>
                        <img data-u="image" src="assets/img/slideshow/slide3.jpg" />
                        <div u="thumb">
                            Slide Description 008
                        </div>
                    </div>
                    <div>
                        <img data-u="image" src="assets/img/slideshow/slide2.jpg" />
                        <div u="thumb">
                            Slide Description 009
                        </div>
                    </div>
                    <div>
                        <img data-u="image" src="assets/img/slideshow/slide1.jpg" />
                        <div u="thumb">
                            Slide Description 010
                        </div>
                    </div>
                </div>
                <a data-scale="0" href="https://www.jssor.com" style="display: none; position: absolute;">image gallery</a>
                <!-- Thumbnail Navigator -->
                <div u="thumbnavigator" style="position: absolute; bottom: 0px; left: 0px; width: 980px; height: 50px; color: #FFF; overflow: hidden; cursor: default; background-color: rgba(0,0,0,.5);">
                    <div u="slides">
                        <div u="prototype" style="position: absolute; top: 0; left: 0; width: 980px; height: 50px;">
                            <div u="thumbnailtemplate" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; font-family: arial,helvetica,verdana; font-weight: normal; line-height: 50px; font-size: 16px; padding-left: 10px; box-sizing: border-box;"></div>
                        </div>
                    </div>
                </div>
                <!-- Arrow Navigator -->
                <div data-u="arrowleft" class="jssora061" style="width: 55px; height: 55px; top: 0px; left: 25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
                    <svg viewbox="0 0 16000 16000" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                        <path class="a" d="M11949,1919L5964.9,7771.7c-127.9,125.5-127.9,329.1,0,454.9L11949,14079"></path>
                    </svg>
                </div>
                <div data-u="arrowright" class="jssora061" style="width: 55px; height: 55px; top: 0px; right: 25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
                    <svg viewbox="0 0 16000 16000" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
                        <path class="a" d="M5869,1919l5984.1,5852.7c127.9,125.5,127.9,329.1,0,454.9L5869,14079"></path>
                    </svg>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade videopopup" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
                <div class="modal-dialog modal-md" role="document" style="background: Black;">
                    <div class="modal-content">
                        <div class="modal-body" style="padding: 5px;">
                            <video id="recap" width="100%" controls controlslist="nodownload" autoplay="">
                                <source src="#" type="video/mp4"/>
                                <!-- <source src="" type="video/ogg"> -->
                                Your browser does not support the video tag.
                            </video>
                        </div>
                    </div>
                </div>
            </div>
        
            <div class="container no-padding gridgallery">
                <div class="row">
                    <div class="margin-top-20">
                        <div class="col-md-4">
                            <div class="well" style="background: #06009b">
                                <a href="../PrincipalMessage.aspx" style="color: white; font-size: 20px;" target="_blank">"Message From the Principal"</a>
                            </div>
                            <div class="img-responsive">
                                <img style="width: 100%; height: 200px; border: 2px solid #fff" src="assets/img/school.jpg" alt="filler image" />
                            </div>
                            <div class="img-responsive button-wrapper">
                                <a href="!#" data-toggle="modal" data-target=".videopopup">
                                    <img src="Videos/saraswati.jpg" data-src="videos/Saraswati_Vandana.mp4" style="width: 100%; min-height: 200px; border: 2px solid #fff" alt="filler image" />
                                    <img id="playSound" src="https://u.jimcdn.com/cms/o/s64e01451c5929131/userlayout/font/sc-playbtn.svg" alt="play" title="Play Video" class="btn" name="playSound" />
                                    <div class="title">Saraswati Bandana by Trishala Gurung</div>
                                </a>
                            </div>
                        </div>

                        <!-- Modal -->


                        <div class="col-md-4">
                            <h4>ABOUT RAUTAHAT PUBLIC SCHOOL</h4>
                            <p style="text-align: justify; font-size: 14px;">
                                The Rautahat Public School (RPS) which is started in 2075 BS in the
                                peace land of Rautahat district under Dewahi Gonahi Municipality-8 
                               has reached a new level of intensity in Rautaht. With the advent of
                                radical transformation in this post-modern education system we also
                                have to update ourselves to become contemporary to present world's
                                education system. "Educating the mind without educating the heart is
                                no education at all." A world of peace, dignity, justice and equality 
                               depends on many factors, education is central among them. Rautahat 
                               Public School, has carved a niche for itself in the Rautahat School
                                fraternity. The school has established a special place for itself by 
                               its exceptional and commendable achievements. The need of the hour 
                               is not just academic excellence but also personality development 
                               and inclusion of discipline and moral values in order to make better
                                citizens of tomorrow. Our school is doing a laudable job by grooming
                                self assured dynamic and virtuous citizens of tomorrow.
                            </p>
                        </div>
                        <div class="col-md-4">
                            <div class="well" style="background: #ff0000">
                                <a href="#" style="color: white; font-size: 20px;">"Upcoming Events"</a>
                            </div>

                            <h2 class="subtitle text-center" style="color: #1a1818">The Wise Word</h2>
                            <h4 class="wisewords text-center" style="color: #1a1818">"Confidence and Hard-work is the best
                            medicine to kill the disease called
                            falilure. It will make you a successful
                            person."<br />

                                -A.P.J. Abdul Kalam
                            </h4>
                            Dear Parents/Guardians and Students,
                            We are proud to present you our school website. Please check 
                            the links to view!




                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <script src="http://khaalipaper.com/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">jssor_1_slider_init();
    </script>
      <script type="text/javascript">
          $(document).ready(function () {
              $('#myModal').on('show.bs.modal', function (event) {
                  var button = $(event.relatedTarget);
                  var imgposter = button.find("img").attr("src");
                  var vidsrc = button.find("img").attr("data-src");

                  //$(this).find('video#recap').attr('poster', imgposter);
                  $(this).find('video#recap source').attr('src', '');
                  $(this).find('video#recap source').attr('src', vidsrc);

                  $(this).find('video#recap')[0].load();
              }).on('hidden.bs.modal', function () {
                  $(this).find('video')[0].pause();
              });
          });
            </script>
</asp:Content>
