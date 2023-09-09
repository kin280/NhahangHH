<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="NhahangHH.TimKiem" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Shop Section Start -->
    <div class="shop-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50 pb-70 pb-lg-50 pb-md-40 pb-sm-60 pb-xs-50">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 order-lg-1 order-2">
                    <!-- Single Sidebar Start  -->
                    <%--<div class="common-sidebar-widget">
                            <h3 class="sidebar-title">Color</h3>
                        </div>--%>
                    <!-- Single Sidebar End  -->
                    <!-- Single Sidebar Start  -->
                    <!-- Single Sidebar End  -->
                    <!-- Single Sidebar Start  -->
                    <!-- Single Sidebar End  -->
                    <!-- Single Sidebar Start  -->
                    <div class="common-sidebar-widget">
                        <div class="single-banner">
                            <a href="#">
                                <img src="Anh/hinh1.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    <!-- Single Sidebar End  -->
                </div>
                <div class="col-lg-9 order-lg-2 order-1">
                    <div class="row">
                        <div class="col-12">
                            <div class="shop-banner-title">
                                <h3>Bạn đang cần tìm là:</h3>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <!-- Grid & List View Start -->

                            <!-- Grid & List View End -->
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="shop-product">
                                <div id="myTabContent-2" class="tab-content">
                                    <div id="grid" class="tab-pane fade active show">
                                        <div class="product-grid-view">
                                            <div class="row">


                                                <asp:Repeater ID="Rspt" runat="server" DataSourceID="SqlDataSource1">
                                                    <ItemTemplate>
                                                        <div class="col-lg-4 col-md-6 col-sm-6">
                                                            <!-- Single Product Start -->
                                                            <div class="single-product mb-30">
                                                                <div class="product-img">
                                                                    <a title='<%#:Eval("tenSP") %> <%#:Eval("maSP") %>' href='/ChiTietSanPham.aspx?maSP=<%#:Eval("maSP") %>'>
                                                                        <img style="height: 350px" alt="" src='./Anh/<%#:Eval("hinhAnh") %>' />
                                                                    </a>

                                                                    <span class="sticker">New</span>
                                                                    <div class="product-action d-flex justify-content-between">
                                                                        <a class="product-btn" href="#">Add to Cart</a>

                                                                    </div>
                                                                </div>
                                                                <div class="product-content">
                                                                    <h3><a href='/ChiTietSanPham.aspx?maSP=<%#:Eval("maSP") %>'><%#Eval("tenSP")%></a></h3>
                                                                    <div class="ratting">
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </div>
                                                                    <h4 class="price"><span class="new"><%#Eval("khuyenMai")%></span>
                                                                        <span class="old"><%#Eval("donGia")%> đ</span></h4>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>


                                            </div>
                                            <div id="list" class="tab-pane fade">
                                                <div class="product-list-view">
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
            <!-- Shop Section End -->


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nhahanghhConnectionString %>" SelectCommand="SELECT * FROM [SanPham] WHERE ([tenSP] LIKE '%' + @tenSP + '%')">
                <SelectParameters>
                    <asp:SessionParameter Name="tenSP" SessionField="tukhoa" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
</asp:Content>
