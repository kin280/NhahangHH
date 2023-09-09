using NhahangHH.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NhahangHH.Admin
{
    public partial class ThemSanPham : System.Web.UI.Page
    {

        DataUtil da = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {

            DataBind();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            try
            {
                tblSanPham bo = new tblSanPham();
               
                bo.tenSP = txttenSP.Text;
                bo.donGia = int.Parse(txtdongia.Text);
                bo.khuyenMai = txtKhuyenmai.Text;
                bo.hinhAnh = txtAnhd.FileName;

                da.Them(bo);
                the.Text = "Thêm thành công";
            }
            catch (Exception ex)
            {

                the.Text = "Không thêm được" + ex.Message;

            }
        }
    }
} 
