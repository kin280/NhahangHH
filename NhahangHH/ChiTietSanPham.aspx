<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="NhahangHH.ChiTietSanPham" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Single Product Section Start -->
    <div class="single-product-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50 pb-100 pb-lg-80 pb-md-70 pb-sm-30 pb-xs-20">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <!-- Product Details Left -->
                    <div class="product-details-left">
                        <div class="product-details-images-2 slider-lg-image-1 tf-element-carousel" data-slick-options='{
                                "slidesToShow": 1,
                                "slidesToScroll": 1,
                                "infinite": true,
                                "asNavFor": ".slider-thumbs-1",
                                "arrows": false,
                                "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
                                "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
                                }'>
                            <div class="lg-image">
                                <asp:Image ID="anhsp" runat="server" />
                                <a href="Anh/AnhSp/Chanel .jpg" class="popup-img venobox" data-gall="myGallery"><i class="fa fa-expand"></i></a>
                            </div>
                            <div class="lg-image">
                                <img src="Anh/Logo/LogoSapJQKNho.jpg" alt="">
                                <a href="Anh/Logo/LogoSapJQKNho.jpg" class="popup-img venobox" data-gall="myGallery"><i class="fa fa-expand"></i></a>
                            </div>
                            <%--<div class="lg-image">
                                    <img src="assets/images/product/large-product/l-product-3.jpg" alt="">
                                    <a href="assets/images/product/large-product/l-product-3.jpg" class="popup-img venobox" data-gall="myGallery"><i class="fa fa-expand"></i></a>
                                </div>--%>
                            <%-- <div class="lg-image">
                                    <img src="assets/images/product/large-product/l-product-4.jpg" alt="">
                                    <a href="assets/images/product/large-product/l-product-4.jpg" class="popup-img venobox" data-gall="myGallery"><i class="fa fa-expand"></i></a>
                                </div>
                                <div class="lg-image">
                                    <img src="assets/images/product/large-product/l-product-5.jpg" alt="">
                                    <a href="assets/images/product/large-product/l-product-5.jpg" class="popup-img venobox" data-gall="myGallery"><i class="fa fa-expand"></i></a>
                                </div>--%>
                        </div>
                        <div class="product-details-thumbs-2 mt-0 mt-xs-20 slider-thumbs-1 tf-element-carousel" data-slick-options='{
                                "slidesToShow": 4,
                                "slidesToScroll": 1,
                                "infinite": true,
                                "focusOnSelect": true,
                                "asNavFor": ".slider-lg-image-1",
                                "arrows": false,
                                "vertical": true,
                                "prevArrow": {"buttonClass": "slick-btn slick-prev", "iconClass": "fa fa-angle-left" },
                                "nextArrow": {"buttonClass": "slick-btn slick-next", "iconClass": "fa fa-angle-right" }
                                }'
                            data-slick-responsive='[
                                {"breakpoint":991, "settings": {
                                    "slidesToShow": 3
                                }},
                                {"breakpoint":767, "settings": {
                                    "slidesToShow": 4
                                }},
                                {"breakpoint":479, "settings": {
                                    "slidesToShow": 2
                                }}
                            ]'>
                            <div class="sm-image">
                                <asp:Image ID="anhsp1" runat="server" />
                            </div>
                            <%--<asp:Literal ID="ltImage" runat="server"></asp:Literal>--%>
                            <%-- <div class="sm-image"><img src="assets/images/product/small-product/s-product-3.jpg" alt="product image thumb"></div>--%>
                        </div>
                    </div>
                    <!--Product Details Left -->
                </div>
                <div class="col-md-6">
                    <!--Product Details Content Start-->
                    <div class="product-details-content">
                        <!--Product Nav Start-->
                        <div class="product-nav">
                            <a href="#"><i class="fa fa-angle-left"></i></a>
                            <a href="#"><i class="fa fa-angle-right"></i></a>
                        </div>
                        <!--Product Nav End-->
                        <h2>
                            <asp:Label ID="LbtenSP" runat="server" Text='<%# Eval("tenSP") %>' /></h2>
                        <div class="single-product-price">
                            <span class="price new-price">
                                <asp:Label ID="lbdonGia" runat="server" Text='<%# Eval("donGia") %>' />
                                đ</span>
                            <span class="regular-price">
                                <asp:Label ID="LbkhuyenMai" runat="server" Text='<%# Eval("khuyenMai") %>' />
                                đ</span>
                        </div>
                        <div class="single-product-quantity">
                            <form class="add-quantity" action="#">
                                <label>Số Lượng</label>
                                <div class="product-quantity">
                                    <%--<input value="1" type="number">--%>
                                    <asp:TextBox ID="txtOrderQuantity" CssClass="cart-plus-minus-box" runat="server"
                                        Text="1"></asp:TextBox>
                                </div>
                                <%--<asp:Button ID="btnCheckQuantity" runat="server" 
                                                Text="Kiểm tra hàng trong kho" CssClass="btn-check" OnClick="GetValue" OnClientClick="return true;" />--%>
                                <div style="margin-top: 15px;">
                                    <p>
                                        &#9989; &nbsp;Còn &#160;<asp:Label ID="lbQuantityStatus" CssClass="add-to-cart" runat="server"></asp:Label>
                                        &#160; sản phẩm
                                    </p>
                                </div>
                                <div class="add-to-link">
                                    <%--<button class="product-add-btn" data-text="add to cart">--%>
                                    <asp:Button ID="btnAddToCart" CssClass="product-add-btn" Text="Add to cart" runat="server"
                                        OnClick="btnAddToCart_Click" />
                                    <%--<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="GioHang.aspx?action">Add To Cart</asp:HyperLink>--%>
                                    <%--</button> --%>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--Product Details Content End-->
                </div>
            </div>
        </div>
    </div>
    <!-- Single Product Section End -->

    <!--Product Description Review Section Start-->
    <div class="product-description-review-section section">
        <div class="container">
            <div class="row">
                <div class="auto-style6">
                    <div class="product-review-tab">
                        <!--Review And Description Tab Menu Start-->
                        <!--Review And Description Tab Menu End-->
                        <!--Review And Description Tab Content Start-->
                        <div class="tab-content product-review-content-tab" id="myTabContent-4">
                            <div class="tab-pane fade" id="reviews">
                                <div class="review-page-comment">
                                    <ul>
                                        <li>
                                            <div class="product-comment">
                                                <img src="assets/images/icons/author.png" alt="">
                                                <div class="product-comment-content">
                                                    <div class="product-reviews">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                    <p class="meta">
                                                        <strong>admin</strong> - <span>November 22, 2018</span>
                                                        <div class="description">
                                                            <p>Good Product</p>
                                                        </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="review-form-wrapper">
                                        <div class="review-form">
                                            <span class="comment-reply-title">Add a review </span>
                                            <form action="#">
                                                <p class="comment-notes">
                                                    <span id="email-notes">Your email address will not be published.</span>
                                                    Required fields are marked
                                                        <span class="required">*</span>
                                                </p>
                                                <div class="comment-form-rating">
                                                    <label>Your rating</label>
                                                    <div class="rating">
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <i class="fa fa-star-o"></i>
                                                    </div>
                                                </div>
                                                <div class="input-element">
                                                    <div class="comment-form-comment">
                                                        <label>Comment</label>
                                                        <textarea name="message" cols="40" rows="8"></textarea>
                                                    </div>
                                                    <div class="review-comment-form-author">
                                                        <label>Name </label>
                                                        <input required="required" type="text">
                                                    </div>
                                                    <div class="review-comment-form-email">
                                                        <label>Email </label>
                                                        <input required="required" type="text">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Product Description Review Section Start-->

    <!--Product section start-->
    <!--Product section end-->

</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style6 {
            position: relative;
            width: 100%;
            min-height: 1px;
            -ms-flex: 0 0 100%;
            flex: 0 0 100%;
            max-width: 100%;
            left: -1px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>


