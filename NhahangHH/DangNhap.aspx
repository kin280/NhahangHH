<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="NhahangHH.DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style4 {
            display: inline-block;
            font-weight: 600;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            font-size: 14px;
            line-height: 23px;
            border-radius: 0px;
            transition: all 0.3s ease 0s;
            color: #ffffff;
            height: 50px;
            text-transform: uppercase;
            position: relative;
            -webkit-transition: all 0.3s ease 0s;
            -o-transition: all 0.3s ease 0s;
            left: 0px;
            top: 0px;
            border: 1px solid transparent;
            padding: 10px 25px;
            background-color: #cea679;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Login Register section start-->
    <div class="login-register-section section pt-100 pt-lg-80 pt-md-70 pt-sm-60 pt-xs-50  pb-70 pb-lg-50 pb-md-40 pb-sm-30 pb-xs-20">
        <div class="container">
            <%-- <div class="row">--%>
            <!--Login Form Start-->

            <%-- <div class="col-md-6 col-sm-6">--%>
            <center>
                <div class="customer-login-register">

                    <div class="form-login-title">
                        <h2>Đăng Nhập</h2>
                        <br />
                    </div>
                    <img style="width: 100px; height: 100px;" src="Anh/logohh.png" />
                    <div class="login-form" style="width: 500px; height: 400px;">

                        <form action="#">
                            <div class="form-fild">
                                <p>
                                    <label>Tên Đăng Nhập <span class="required">*</span></label>
                                </p>
                                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-fild">
                                <p>
                                    <label>Mật Khẩu <span class="required">*</span></label>
                                </p>
                                <%--<input name="password" value="" type="password">--%>
                                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="login-submit">
                                <center>
                                    <%-- <button type="submit" class="btn">--%>
                                    <asp:Button ID="btnlogin" CssClass="auto-style4" runat="server" Text="Login" OnClick="btnlogin_Click" />
                                    <asp:Label ID="lbID" runat="server"></asp:Label>

                                    <asp:Label ID="lbMessage" runat="server"
                                        Style="font-weight: 700; color: #FF0000; font-size: small"></asp:Label>
                                </center>
                            </div>
                            <center>
                                <h5><a href="DangKi.aspx">Tạo tài khoản</a></h5>
                            </center>

                        </form>

                    </div>

                </div>
            </center>
        </div>

        <!--Login Form End-->
        <!--Register Form Start-->

    </div>

    <!--Login Register section end-->
</asp:Content>
