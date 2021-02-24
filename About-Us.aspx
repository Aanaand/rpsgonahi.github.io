<%@ Page Title="" Language="C#" MasterPageFile="~/RPSMaster.Master" AutoEventWireup="true" CodeBehind="About-Us.aspx.cs" Inherits="RPSWebsiteCSharp.About_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="primary-container-group">
        <!-- Background -->
        <div class="primary-container-background">
            <div class="primary-container"></div>
            <div class="clearfix"></div>
        </div>
        <!--End Background -->


        <div class="container">
            <!-- === END HEADER === -->
            <!-- === BEGIN CONTENT === -->
            <div class="row margin-vert-30">
                <div class="col-md-12">
                    <h2><strong>About Us</strong></h2>
                    <div class="row">
                        <div class="col-md-6">
                            <p style="text-align:justify">
                                The journey of the Rautahat Public School is started in 2075BS from a rented building in the 
                                heart of the Rautahat district, has now reached a new level of 
                                intensity in Prempur Gonahi under Dewahi Gonahi Municipality-8.
                            </p>
                            <p style="text-align:justify">
                                Donec ornare mattis suscipit. Praesent fermentum accumsan vulputate. 
                            Sed velit nulla, sagittis non erat id, dictum vestibulum ligula. 
                            Maecenas sed enim sem. Etiam scelerisque gravida purus nec interdum. Phasellus
                           venenatis ligula in faucibus consequat. Aliquam dictum nulla eu varius porta. 
                            Maecenas congue dui id posuere fermentum. Morbi at iaculis nibh, at semper augue.
                            </p>
                            <ul class="icon-list list-unstyled">
                                <li>
                                    <i class="fa-check"></i>Lorem ipsum dolor sit amet, consectetur</li>
                                <li>
                                    <i class="fa-check"></i>Suspendisse tristique velit vel ligula mattis</li>
                                <li>
                                    <i class="fa-check"></i>Curabitur tincidunt iaculis est posuere</li>
                                <li>
                                    <i class="fa-check"></i>Vestibulum vitae nibh elit phasellus sed</li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <!-- Carousel -->
                            <div id="carousel-example-1" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-1" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-1" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-1" data-slide-to="2"></li>
                                </ol>
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img src="assets/img/portfolio/image1.jpg">
                                    </div>
                                    <div class="item">
                                        <img src="assets/img/portfolio/image2.jpg">
                                    </div>
                                    <div class="item">
                                        <img src="assets/img/portfolio/image3.jpg">
                                    </div>
                                </div>
                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-example-1" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-1" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>
                            <!-- End Carousel -->
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
