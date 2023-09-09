using System;
using System.Collections.Generic;
using NhahangHH.Class;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace NhahangHH
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbID.Visible = false;
            txtusername.Attributes.Add("placeholder", "Tên tài khoản");
            txtpassword.Attributes.Add("placeholder", "Mật khẩu");
            
        }
        public void checkUser()
        {
            string sqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\kienb\source\repos\NhahangHH\NhahangHH\App_Data\nhahanghh.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(sqlCon);
            con.Open();
            string checkuser = "select * from Users where tenDN like '" + txtusername.Text.ToString() + "' ";
            SqlCommand cmd = new SqlCommand(checkuser, con);
            SqlDataReader dr = cmd.ExecuteReader();
           
                while (dr.Read())
                {
                    if (dr["tenDN"].ToString() == txtusername.Text && dr["matkhauDN"].ToString() == txtpassword.Text &&
                        Convert.ToBoolean(dr["quyen"].ToString()) == true)
                    {
                        Users u = new Users();
                        u.IDDN = (int)(dr["IDDN"]);
                        u.tenDN = (string)dr["tenDN"];
                        lbID.Text = u.IDDN.ToString();
                        string name = u.tenDN;
                        Session["login"] = lbID.Text;
                        Session["name"] = name;
                        Response.Redirect(url: "~/Admin/HomeAdmin.aspx");
                    }
                    else if (dr["tenDN"].ToString() == txtusername.Text && dr["matkhauDN"].ToString() == txtpassword.Text &&
                        Convert.ToBoolean(dr["quyen"].ToString()) == false)
                    {
                        Users u = new Users();
                        u.tenDN = (string)dr["tenDN"];
                        u.IDDN = (int)(dr["IDDN"]);
                        lbID.Text = u.IDDN.ToString();
                        string name = u.tenDN;
                        Session["userlogin"] = lbID.Text;
                        Session["useremail"] = (string)dr["email"];
                        Session["username"] = name;

                        HttpCookie returnCookie = Request.Cookies["returnUrl"];
                        if ((returnCookie == null) || string.IsNullOrEmpty(returnCookie.Value))
                        {
                            Response.Redirect("SanPham.aspx");

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
                con.Close();
            
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (txtusername.Text == "" && txtpassword.Text == "")
            {

                lbMessage.Text = "Tài khoản hoặc mật khẩu bị sai vui lòng nhập lại!";

            }
            else
            {
                checkUser();
            }
                
        }

    }
}