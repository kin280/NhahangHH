<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="My Account.aspx.cs" Inherits="NhahangHH.My_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Banner Section Start -->
    <div class="page-banner-section section bg-gray">
        <div class="container">
            <div class="row">
                <div class="col">

                    <div class="page-banner text-center">
                        <h1>Tài Khoản Của Tôi</h1>
                        <ul class="page-breadcrumb">
                            <li><a href="index.html">Home</a></li>
                            <li>Tài Khoản Của Tôi</li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- Page Banner Section End -->

    <!--My Account section start-->
    <div class="my-account-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50  pb-100 pb-lg-80 pb-md-70 pb-sm-60 pb-xs-50">
        <div class="container">
            <div class="row">

                <div class="col-12">
                    <div class="row">
                        <!-- My Account Tab Menu Start -->
                        <div class="col-lg-3 col-12">
                            <div class="myaccount-tab-menu nav" role="tablist">
                                <a href="#dashboad" class="active" data-toggle="tab"><i class="fa fa-dashboard"></i>
                                    Giới Thiệu</a>

                                <a href="#orders" data-toggle="tab"><i class="fa fa-cart-arrow-down"></i>Đơn Hàng</a>




                                <%--<a href="#" data-toggle="tab">--%><%--<i class="fa fa-sign-out"></i>--%>
                                <li>
                                    <asp:LinkButton ID="urlLogin" runat="server" CssClass="fa fa-sign-out" Text="Đăng Xuất" OnClick="urlLogin_Click"></asp:LinkButton></li>
                                <%--</a>--%>
                            </div>
                        </div>
                        <!-- My Account Tab Menu End -->

                        <!-- My Account Tab Content Start -->
                        <div class="col-lg-9 col-12">
                            <div class="tab-content" id="myaccountContent">
                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade show active" id="dashboad" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Giới thiệu</h3>

                                        <div class="welcome mb-20">
                                            <p>
                                                Hello, <strong>
                                                    <h2>
                                                        <asp:Label ID="lbName" runat="server"></asp:Label>
                                                    </h2>
                                                </strong>Chào mừng bạn đến my account <strong>Nhà Hàng HH&nbsp;!</strong><a href="login-register.html" class="logout"> Logout</a>
                                            </p>
                                        </div>

                                    </div>
                                </div>
                                <!-- Single Tab Content End -->

                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="orders" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Đơn Hàng</h3>

                                        <div class="myaccount-table table-responsive text-center">
                                            <table class="table table-bordered">

                                                <asp:GridView ID="grOrders" CssClass="table" runat="server" DataKeyNames="ID" OnRowDataBound="grOrders_RowDataBound"
                                                    AutoGenerateColumns="false">
                                                    <Columns>
                                                        <asp:BoundField DataField="ID" HeaderText="Order ID" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <asp:BoundField DataField="IDDN" HeaderText="ID Users" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <asp:BoundField DataField="sdt" HeaderText="Phone" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <asp:BoundField DataField="ngayDat" HeaderText="Ngày đặt" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <asp:BoundField DataField="diaChiNhan" HeaderText="địa chỉ nhận" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <asp:BoundField DataField="tongTien" HeaderText="Tổng tiền" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <asp:BoundField DataField="trangThai" HeaderText="Trạng Thái" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <%--<asp:TemplateField HeaderText="Trang thái" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px">
                            <ItemTemplate>
                                 <asp:CheckBox ID="cbBoard"  Checked='<%# Convert.ToBoolean(Eval("trangThai")) %>' runat="server" Enabled="false"/>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                                                        <asp:TemplateField HeaderText="Chi tiết" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px"></asp:TemplateField>



                                                    </Columns>
                                                </asp:GridView>

                                                <asp:Label ID="lbDetailTitle" runat="server" Text="" Font-Size="20px" Font-Bold="true" ForeColor="#29b279"></asp:Label>
                                                <br />
                                                <asp:GridView ID="grvDetails" CssClass="table" runat="server"
                                                    AutoGenerateColumns="false"
                                                    ShowHeaderWhenEmpty="true">
                                                    <Columns>
                                                        <asp:BoundField DataField="IDHD" HeaderText="ID" Visible="false" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <asp:BoundField DataField="maSP" HeaderText="mã sp" Visible="false" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <asp:BoundField DataField="tenSP" HeaderText="tên sp" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <asp:TemplateField HeaderText="Ảnh" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb"
                                                            HeaderStyle-BorderWidth="1px" HeaderStyle-Width="200px" ControlStyle-CssClass="imag">
                                                            <ItemTemplate>
                                                                <asp:Image ID="img1" ImageUrl='<%# "~/Anh/AnhSP/" + Eval("hinhAnh") %>' runat="server" Width="150px" Height="115px" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="soLuong" HeaderText="Số lượng" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                                        <asp:BoundField DataField="donGia" HeaderText="Đơn giá" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />


                                                    </Columns>
                                                </asp:GridView>


                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->

                                <!-- Single Tab Content Start -->

                                <!-- Single Tab Content End -->

                                <!-- Single Tab Content Start -->
                                <div class="tab-pane fade" id="payment-method" role="tabpanel">
                                    <div class="myaccount-content">
                                        <h3>Payment Method</h3>

                                        <p class="saved-message">You Can't Saved Your Payment Method yet.</p>
                                    </div>
                                </div>
                                <!-- Single Tab Content End -->




                            </div>
                            <!-- Single Tab Content End -->
                        </div>
                    </div>
                    <!-- My Account Tab Content End -->
                </div>

            </div>

        </div>
    </div>
    </div>
    <!--My Account section end-->
</asp:Content>
