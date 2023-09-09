using NhahangHH.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace NhahangHH
{
    public partial class DangKi : System.Web.UI.Page
    {
        DataUtil da = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataBind();
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            if(txtTendangnhap.Text == "" || txtEmail.Text == "" || txtDiachi.Text == "" || txtsdt.Text == "" || txtMatkhau.Text== "")
            {
                 
                the.Text = "Bạn không được bỏ trống";
                txtTendangnhap.Text = "";
                txtEmail.Text = "";
                 txtDiachi.Text ="";
                 txtsdt.Text = "";
                txtMatkhau.Text = "";
                txtTendangnhap.Focus();

            }
            else
            {
                Users bo = new Users();
                bo.tenDN = txtTendangnhap.Text;
                bo.email = txtEmail.Text;
                bo.diaChi = txtDiachi.Text;
                bo.sdt = txtsdt.Text;
                bo.matkhauDN = txtMatkhau.Text;
                da.themUser(bo);
                the.Text = "Bạn đã đăng kí thành công tài khoản! ";
                Response.Redirect("DangNhap.aspx");

            }

        }
    }
}