using NhahangHH.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NhahangHH.Admin
{
    public partial class Themusers : System.Web.UI.Page
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
                Users bo = new Users();
               
                bo.IDDN = int.Parse(txtIDDN.Text);
                bo.tenDN = txtTendangnhap.Text;
                bo.email = txtEmail.Text;
                bo.diaChi = txtDiachi.Text;
                bo.sdt = txtsdt.Text;
                bo.matkhauDN = txtMatkhau.Text;
                string quyen = ddlQuyen.SelectedValue;
                if (quyen == "1")
                {
                    bo.quyen = Convert.ToByte(true);
                }
                else if (quyen == "0")
                {
                    bo.quyen = Convert.ToByte(false);
                };

                da.themUser(bo);
                the.Text = "Thêm Thành Công";
            }
            catch (Exception ex)
            {

                the.Text = "không thêm được" + ex.Message;
            }

        }
    }
}