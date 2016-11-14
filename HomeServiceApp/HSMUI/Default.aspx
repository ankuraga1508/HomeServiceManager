<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HSMMVC.AddDeal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Basic Page Needs
  ================================================== -->
    <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8">--%>
    <title>Real Spaces - Responsive Real Estate Template</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <!-- Mobile Specific Metas
  ================================================== -->
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <!-- CSS
  ================================================== -->
    <!--#include virtual="/includes/globalscript.aspx"-->
</head>
<body class="home">

    <div class="body">
        <!--#include virtual="/includes/header.aspx"-->
        <!-- Site Showcase -->
        <div class="site-showcase">
            <div class="slider-mask overlay-transparent"></div>
            <!-- Start Hero Slider -->
            <div class="hero-slider flexslider clearfix hide" data-autoplay="yes" data-pagination="no" data-arrows="yes" data-style="fade" data-pause="yes">
                <ul class="slides">
                    <li class=" parallax" style="background-image: url(images/banner3.jpg);">
                        <div class="flex-caption">
                            <strong class="title">1671 Grand Avenue, <em>NYC</em></strong>
                            <div class="price"><strong>$</strong><span>100000</span></div>
                            <a href="property-detail.html" class="btn btn-primary btn-block">Details</a>
                            <div class="hero-agent">
                                <img src="http://placehold.it/365x365&amp;text=IMAGE+PLACEHOLDER" alt="" class="hero-agent-pic">
                                <a href="agent-detail.html" class="hero-agent-contact" data-placement="left" data-toggle="tooltip" title="" data-original-title="Contact Agent"><i class="fa fa-envelope"></i></a>
                            </div>
                        </div>
                    </li>
                    <li class="parallax" style="background-image: url(images/banner2.jpg);">
                        <div class="flex-caption">
                            <strong class="title">1671 Grand Avenue, <em>NYC</em></strong>
                            <div class="price"><strong>$</strong><span>100000</span></div>
                            <a href="property-detail.html" class="btn btn-primary btn-block">Details</a>
                            <div class="hero-agent">
                                <img src="http://placehold.it/365x365&amp;text=IMAGE+PLACEHOLDER" alt="" class="hero-agent-pic" />
                                <a href="agent-detail.html" class="hero-agent-contact" data-placement="left" data-toggle="tooltip" title="" data-original-title="Contact Agent"><i class="fa fa-envelope"></i></a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- End Hero Slider -->

        </div>
        <!-- Start Content -->
        <div class="main" role="main">
            <div id="content" class="content full">
                <div id="featured-properties">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="block-heading">
                                    <h4><span class="heading-icon"><i class="fa fa-star"></i></span>Featured Properties</h4>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <asp:Repeater ID="rptFeaturedListing" runat="server">
                                <HeaderTemplate>
                                    <ul class="owl-carousel owl-alt-controls" data-columns="4" data-autoplay="no" data-pagination="no" data-arrows="yes" data-single-item="no">
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li class="item property-block">
                                        <a href="dealpage.aspx?id=<%# Eval("DealId") %>" class="property-featured-image">
                                            <img src='<%# CheckImage(Eval("MainImageUrl")) %>' alt="">
                                            <%--<span class="images-count"><i class="fa fa-picture-o"></i>2</span>--%>
                                            <span class="badges"><%# Eval("Category") %></span>
                                        </a>
                                        <div class="property-info">
                                            <a href="dealpage.aspx?id=<%# Eval("DealId") %>">
                                                <h4><%# Eval("DealTitle") %></h4>
                                                <span class="location"><strong><%# Eval("Area") %></strong>, <%# Eval("City") %></span>
                                                <span class="price"><strong>$</strong><span><%# Eval("DealPrice") %></span></span>
                                                <span style='text-decoration: line-through'><strong>$</strong><span><%# Eval("ActualPrice") %></span></span>
                                            </a>
                                        </div>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>

                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="property-columns" id="latest-properties">
                            <div class="col-md-12">
                                <div class="block-heading">
                                    <h4><span class="heading-icon"><i class="fa fa-leaf"></i></span>Recently Listed</h4>
                                    <a href="simple-listing-fw.html" class="btn btn-primary btn-sm pull-right">View more properties <i class="fa fa-long-arrow-right"></i></a>
                                </div>
                            </div>
                            <asp:Repeater ID="rptListings" runat="server">
                                <HeaderTemplate>
                                    <ul>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li class="col-md-3 col-sm-6 type-rent">
                                        <div class="property-block">
                                            <a href="dealpage.aspx?id=<%# Eval("DealId") %>" class="property-featured-image">
                                                <img src='<%# CheckImage(Eval("MainImageUrl")) %>' alt="">
                                                <%--<span class="images-count"><i class="fa fa-picture-o"></i>2</span>--%>
                                                <span class="badges"><%# Eval("Category") %></span>
                                            </a>
                                            <div class="property-info">
                                                <a href="dealpage.aspx?id=<%# Eval("DealId") %>">
                                                    <h4><%# Eval("DealTitle") %></h4>
                                                    <span class="location"><strong><%# Eval("Area") %></strong>, <%# Eval("City") %></span>
                                                    <span class="price"><strong>$</strong><span><%# Eval("DealPrice") %></span></span>
                                                    <span style='text-decoration: line-through'><span><%# Eval("ActualPrice") %><strong>$</strong></span>
                                                </a>
                                            </div>
                                            <div class="property-amenities clearfix">
                                                <span class="area"><%# Eval("Property1") %></span>
                                                <span class="baths"><%# Eval("Property2") %></span>
                                                <span class="beds"><%# Eval("Property3") %></span>
                                                <span class="parking"><%# Eval("Property4") %></span>
                                            </div>
                                        </div>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>

                
                <div class="container">
                    <div class="block-heading">
                        <h4><span class="heading-icon"><i class="fa fa-users"></i></span>Our Partners</h4>
                        <a href="about.html" class="btn btn-primary btn-sm pull-right">All partners <i class="fa fa-long-arrow-right"></i></a>
                    </div>
                    <div class="row">
                        <ul class="owl-carousel" id="clients-slider" data-columns="6" data-autoplay="yes" data-pagination="no" data-arrows="no" data-single-item="no" data-items-desktop="6" data-items-desktop-small="4" data-items-mobile="2" data-items-tablet="4">
                            <li class="item"><a href="#">
                                <img src="images/partner-1.png" alt=""></a> </li>
                            <li class="item"><a href="#">
                                <img src="images/partner-2.png" alt=""></a> </li>
                            <li class="item"><a href="#">
                                <img src="images/partner-3.png" alt=""></a> </li>
                            <li class="item"><a href="#">
                                <img src="images/partner-4.png" alt=""></a> </li>
                            <li class="item"><a href="#">
                                <img src="images/partner-5.png" alt=""></a> </li>
                            <li class="item"><a href="#">
                                <img src="images/partner-1.png" alt=""></a> </li>
                            <li class="item"><a href="#">
                                <img src="images/partner-2.png" alt=""></a> </li>
                            <li class="item"><a href="#">
                                <img src="images/partner-3.png" alt=""></a> </li>
                            <li class="item"><a href="#">
                                <img src="images/partner-4.png" alt=""></a> </li>
                            <li class="item"><a href="#">
                                <img src="images/partner-5.png" alt=""></a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--#include virtual="/includes/footer.aspx"-->

    </div>
    <script src="js/jquery-2.0.0.min.js"></script>
    <!-- Jquery Library Call -->
    <script src="plugins/prettyphoto/js/prettyphoto.js"></script>
    <!-- PrettyPhoto Plugin -->
    <script src="plugins/owl-carousel/js/owl.carousel.min.js"></script>
    <!-- Owl Carousel -->
    <script src="plugins/flexslider/js/jquery.flexslider.js"></script>
    <!-- FlexSlider -->
    <script src="js/helper-plugins.js"></script>
    <!-- Plugins -->
    <script src="js/bootstrap.js"></script>
    <!-- UI -->
    <script src="js/waypoints.js"></script>
    <!-- Waypoints -->
    <script src="js/init.js"></script>
    <!-- All Scripts -->
    <!--[if lte IE 9]><script src="js/script_ie.js"></script><![endif]-->
</body>
</html>
<script type="text/javascript">
    function bindDeals(categoryid, cityid) {
        $.ajax({
            type: 'GET',
            url: '/listing/all?categoryid=' + categoryid + '&cityid=' + cityid,
            dataType: 'Json',
            success: function (json) {
                alert(json)
                var viewModel = {
                    pqCarMakes: ko.observableArray(json)
                };
                ko.cleanNode(document.getElementById("drpMake"));
                ko.applyBindings(viewModel, document.getElementById("drpMake"));
                bindCommonMakes();

            }
        });


    }


    //bindDeals(1, 1);
</script>
