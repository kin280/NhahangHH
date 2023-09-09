<%@ Page Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="NhahangHH.Admin.ThemSanPham" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- partial -->
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">Thêm Sản Phẩm </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Điền Form</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Thêm</li>
                </ol>
            </nav>
        </div>
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Thêm Sản Phẩm</h4>
                        <form class="forms-sample">
                            <div class="form-group">
                                <label for="exampleInputName1">Mã Sản Phẩm</label>
                                <asp:TextBox ID="txtmaSP" class="form-control" Enabled="false" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputName1">Tên Sản Phẩm</label>
                                <asp:TextBox ID="txttenSP" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail3">Đơn Giá</label>
                                <asp:TextBox ID="txtdongia" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword4">Khuyến Mãi</label>
                                <asp:TextBox ID="txtKhuyenmai" class="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputCity1">Hình Ảnh</label>
                                <asp:FileUpload CssClass="file-upload-browse btn btn-gradient-primary" ID="txtAnhd" runat="server" />
                            </div>
                            <%--<button type="submit" class="btn btn-gradient-primary mr-2">Submit</button>
                      <button class="btn btn-light">Cancel</button>--%>
                            <asp:Label ID="the" runat="server"></asp:Label>
                            <asp:Button ID="btnThem" CssClass="btn btn-gradient-primary btn-sm" CommandName="them" Text="Thêm" runat="server" OnClick="btnThem_Click" /><br />
                            <br />
                            <asp:Button ID="btds" CssClass="btn btn-gradient-primary btn-fw" PostBackUrl="~/Admin/QuanLySanPham.aspx" runat="server" Text="Danh Sách Sản Phẩm" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../../assets/js/off-canvas.js"></script>
    <script src="../../assets/js/hoverable-collapse.js"></script>
    <script src="../../assets/js/misc.js"></script>
    <script src="../../assets/js/file-upload.js"></script>
</asp:Content>
