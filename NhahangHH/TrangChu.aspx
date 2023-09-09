<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="NhahangHH.TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1379px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="hero-section section position-relative">

        <div class="tf-element-carousel slider-nav" data-slick-options='{
        "slidesToShow": 1,
        "slidesToScroll": 1,
        "infinite": true,
        "arrows": true,
        "dots": true
        }'
            data-slick-responsive='[
        {"breakpoint":768, "settings": {
        "slidesToShow": 1
        }},
        {"breakpoint":575, "settings": {
        "slidesToShow": 1,
        "arrows": false,
        "autoplay": true
        }}
        ]'>
            <!--Hero Item start-->
            <div class="hero-item image-height bg-image" data-bg="./assets/images/hero/hero-7.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-12">

                            <!--Hero Content start-->
                            <div class="hero-content-4 center">

                                <img alt="" src="Anh/nhahang1.jpg" />

                            </div>
                            <!--Hero Content end-->

                        </div>
                    </div>
                </div>
            </div>
            <!--Hero Item end-->

            <!--Hero Item start-->
            <div class="hero-item image-height bg-image" data-bg="./assets/images/hero/hero-8.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-12">

                            <!--Hero Content start-->
                            <div class="hero-content-2 color-1 center">
                                <img alt="" src="Anh/hinh1.jpg" />
                            </div>
                            <!--Hero Content end-->

                        </div>
                    </div>
                </div>
            </div>
            <!--Hero Item end-->
        </div>

    </div>
    <!--slider section end-->

    <!--Banner section start-->
    <div class="banner-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <!-- Single Banner Start -->
                    <div class="single-banner mb-30">
                        <a href="#">
                            <img src="Anh/hinh2.jpg" alt="">
                        </a>
                    </div>
                    <!-- Single Banner End -->
                </div>
                <div class="col-lg-3 col-md-3">
                    <!-- Single Banner Start -->
                    <div class="single-banner mb-30">
                        <a href="#">
                            <img src="Anh/hinh3.jpg" alt="">
                        </a>
                    </div>
                    <!-- Single Banner End -->
                    <!-- Single Banner Start -->
                    <div class="single-banner mb-30">
                        <a href="#">
                            <img src="Anh/hinh4.jpg" alt="">
                        </a>
                    </div>
                    <!-- Single Banner End -->
                </div>
                <div class="col-lg-3 col-md-3">
                    <!-- Single Banner Start -->
                    <div class="single-banner mb-30">
                        <a href="#">
                            <img src="Anh/hinh5.jpg" alt="">
                        </a>
                    </div>
                    <!-- Single Banner End -->
                    <!-- Single Banner Start -->
                    <div class="single-banner mb-30">
                        <a href="#">
                            <img src="Anh/hinh1.jpg" alt="">
                        </a>
                    </div>
                    <!-- Single Banner End -->
                </div>
            </div>
        </div>
    </div>
    <!--Banner section end-->
    <!----content new---->

    <!----end content new---->
    <!--Product section start-->
    <!--Product section end-->

    <!-- Feature Section Start -->
    <div class="feature-section section pt-70 pt-lg-50 pt-md-35 pt-sm-30 pt-xs-20">
        <div class="container">
            <div class="row">
            </div>
        </div>
    </div>
    <!-- Feature Section End -->

    <!--Blog section start-->
    <!--Blog section end-->

</asp:Content>

