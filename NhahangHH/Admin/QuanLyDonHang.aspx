<%@ Page Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="QuanLyDonHang.aspx.cs" Inherits="NhahangHH.Admin.QuanLyDonHang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- partial -->
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">Bảng Đơn Hàng </h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Quản Lý Đơn Hàng</a></li>
                    <li class="breadcrumb-item active">Bảng Đơn Hàng</li>
                </ol>
            </nav>
        </div>
        <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="card-title">Đơn Hàng</h4>

                        <asp:GridView ID="grOrders" runat="server" DataKeyNames="ID" AutoGenerateColumns="False" Height="377px" Width="1044px"
                            OnRowDataBound="grOrders_RowDataBound">
                            <Columns>
                                <asp:BoundField DataField="tenDN" HeaderText="" />
                                <asp:BoundField DataField="ID" HeaderText="ID" />
                                <asp:BoundField DataField="IDDN" HeaderText="ID Khách hàng" />
                              
                                <asp:BoundField DataField="sdt" HeaderText="Số điện thoại" />
                                <asp:BoundField DataField="ngayDat" HeaderText="Ngày đặt" />
                                <asp:BoundField DataField="diaChiNhan" HeaderText="Địa chỉ nhận" />
                                <asp:BoundField DataField="tongTien" HeaderText="Tổng tiền" />
                                <asp:BoundField DataField="trangThai" HeaderText="Trạng Thái" />


                                <asp:TemplateField HeaderText="Chi tiết" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbView" CommandName="select" OnCommand="lbView_Command" CssClass="lbfunction"
                                            runat="server" CommandArgument='<%# Bind("ID") %>' Text="Xem" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Huỷ Đơn" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px">
                                    <ItemTemplate>
                                        <asp:Button ID="buXoa" CssClass="btn btn-gradient-primary btn-sm" CommandName="xoa" CommandArgument='<%# Bind("ID") %>' Text="Huỷ"
                                            OnCommand="Xoa_click" runat="server" OnClientClick="return confirm('Bạn có muốn xóa không!')" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Duyệt Đơn" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px">
                                    <ItemTemplate>
                                        <asp:Button ID="btnSua" CommandName="sua" CssClass="btn btn-gradient-primary btn-sm"
                                            Text="Duyệt" CommandArgument='<%# Bind("ID") %>'
                                            OnCommand="Sua_click" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:nhahanghhConnectionString %>" SelectCommand="SELECT * FROM [HoaDon]"></asp:SqlDataSource>

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
                                        <asp:Image ID="img1" runat="server" Width="150px" Height="115px" ImageUrl='<%# "~/Anh/" + Eval("hinhAnh") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="soLuong" HeaderText="Số lượng" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />
                                <asp:BoundField DataField="donGia" HeaderText="Đơn giá" HeaderStyle-BackColor="#cfc6c6" HeaderStyle-BorderColor="#ebebeb" HeaderStyle-BorderWidth="1px" />

                            </Columns>

                        </asp:GridView>

                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="../../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../../assets/js/off-canvas.js"></script>
    <script src="../../assets/js/hoverable-collapse.js"></script>
    <script src="../../assets/js/misc.js"></script>
</asp:Content>
