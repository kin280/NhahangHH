using NhahangHH.Class;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NhahangHH
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        DataUtil xuly = new DataUtil();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userlogin"] == null)
                {
                    lbName.Text = " ";
                                     
                }
                else
                {
                    lbName.Text = "Xin Chào " + Session["username"].ToString();
                    
                }
             
            }
        }
        protected void btnTim_Click(object sender, EventArgs e)
        {
            Session["tukhoa"] = Txttimkiem.Text;
            Response.Redirect("TimKiem.aspx");
        }
        protected void urlLogin_Click(object sender, EventArgs e)
        {
            lbName.Text = " ";
        }

    }
}