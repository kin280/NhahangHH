using NhahangHH.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NhahangHH.Admin
{
    public partial class SuaSanPham : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                tblSanPham d = (tblSanPham)Session["sp"];
                txtmaSP.Text = d.maSP.ToString();

                DataBind();

                txttenSP.Text = d.tenSP;
                txtdongia.Text = d.donGia.ToString();
                txtKhuyenmai.Text = d.khuyenMai;
                Txthinhanh.Text = d.hinhAnh;
            }
        }

        protected void btnSua_Click1(object sender, EventArgs e)
        {
            try
            {
                tblSanPham bo = new tblSanPham();
                bo.maSP = int.Parse(txtmaSP.Text);
                bo.tenSP = txttenSP.Text;
                bo.donGia = int.Parse(txtdongia.Text);
                bo.khuyenMai = txtKhuyenmai.Text;
                bo.hinhAnh = Txthinhanh.Text;

                data.Sua(bo);
                the.Text = "Cập nhật thành công! ";
            }
            catch (Exception ex)
            {

                the.Text = "Không sửa được" + ex.Message;

            }
        }
    }
}
