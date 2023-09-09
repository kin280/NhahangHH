using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Text.RegularExpressions;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using NhahangHH.Class;

namespace NhahangHH
{
    public partial class My_Account : System.Web.UI.Page
    {
        DataUtil data = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //lbDetailTitle.Text = "";
                if (Session["username"] != null)
                {
                    lbName.Text = Session["username"].ToString();
                }
                else
                {
                    lbName.Text = "";
                }
                showList();

            }
        }
        private void showList()
        {
            if (Session["userlogin"] != null)
            {
                int IDDN = Convert.ToInt32(Session["userlogin"].ToString());
                string sqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\kienb\source\repos\NhahangHH\NhahangHH\App_Data\nhahanghh.mdf;Integrated Security=True";

                SqlConnection con = new SqlConnection(sqlCon);
                string query = "select * from HoaDon where IDDN=@IDDN";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("IDDN", IDDN);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                grOrders.DataSource = dt;
                grOrders.DataBind();
            }

        }
        protected void grOrders_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string days = e.Row.Cells[6].Text;
                if (days == "False")
                {
                    e.Row.Cells[6].Text = "Chưa thanh toán";
                }
                else if (days == "True")
                {
                    e.Row.Cells[6].Text = "Đã thanh toán";
                }
            }

        }
        private void showdetail(int IDHD)
        {
            string sqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\kienb\source\repos\NhahangHH\NhahangHH\App_Data\nhahanghh.mdf;Integrated Security=True";

            SqlConnection con = new SqlConnection(sqlCon);
            string query = "select IDHD, ChiTietHoaDon.maSP, ChiTietHoaDon.donGia, soLuong, tenSP, hinhAnh " +
                "from ChiTietHoaDon inner join SanPham on SanPham.maSP = ChiTietHoaDon.maSP" +
                " where ChiTietHoaDon.IDHD=@IDHD";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("IDHD", IDHD);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            grvDetails.DataSource = dt;
            grvDetails.DataBind();
        }

      
     
        protected void lbView_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "select")
            {
                int m = Convert.ToInt32(e.CommandArgument);
                Session["IDHD"] = m;

                if (Session["IDHD"] != null)
                {
                    grOrders.Visible = false;
                    string IDHD = Session["IDHD"].ToString();
                    showdetail(Convert.ToInt32(IDHD));
                    grvDetails.Visible = true;
                    lbDetailTitle.Text = "Chi tiết order #" + m;

                }
            }

        }
        protected void urlLogin_Click(object sender, EventArgs e)
        {

            if (Session["userlogin"] == null)
            {
                urlLogin.Text = "Đăng Xuất";
                Response.Redirect("DangNhap.aspx");
            }
            else if (Session["userlogin"] != null)
            {
                Session.Remove("userlogin");
                Session.Remove("username");
                Session.Remove("useremail");
                Response.Cookies.Add(new HttpCookie("returnUrl", Request.Url.PathAndQuery));
                HttpCookie returnCookie = Request.Cookies["returnUrl"];
                if ((returnCookie == null) || string.IsNullOrEmpty(returnCookie.Value))
                {
                    Response.Redirect(url: "~/TrangChu.aspx");
                }
                else
                {
                    HttpCookie deleteCookie = new HttpCookie("returnUrl");
                    deleteCookie.Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies.Add(deleteCookie);
                    Response.Redirect(returnCookie.Value);
                }
            }
        }
       
        
    


    }
}