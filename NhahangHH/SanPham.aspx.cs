using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NhahangHH.Class;

namespace NhahangHH
{
    public partial class Menu : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        public int maSP;
        public string anh;
        

        public object LbtenSP { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
      
        
        }
        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            Session["maSP"] = int.Parse(Request.QueryString[0].ToString());
            Session["hinhAnh"] = anh.ToString();      

            Session["add"] = "add";
            //Response.Redirect("GioHang.aspx");

            ScriptManager.RegisterStartupScript(this, this.GetType(), "message",
                    "alert('Bạn vừa thêm sản phẩm vào giỏ hàng!');location.href = 'GioHang.aspx';", true);

        }

    }
}