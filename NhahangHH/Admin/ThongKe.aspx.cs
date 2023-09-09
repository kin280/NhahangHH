using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NhahangHH.Admin
{
    public partial class ThongKe : System.Web.UI.Page
    {
        DataSet1TableAdapters.HoaDonTableAdapter hd = new DataSet1TableAdapters.HoaDonTableAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnTim_Click(object sender, EventArgs e)
        {
            if (txtNgayDau.Text == "" || txtNgayCuoi.Text == "")
            {
                lblLoi.Text = "Vui lòng nhập ngày bắt đầu và ngày kết thúc!";
                rpBCThu.Reset(); // đặt lại report
            }
            else
            {
                lblLoi.Text = "";
                // reset
                rpBCThu.Reset(); // đặt lại report
                // dataSource
                // tìm doanh thu cần in theo ngày tháng năm và gán dữ liệu vào dt từ câu truy vấn "GetDataByInBCThu" từ bảng "Hóa Đơn"
                DataTable dt = hd.GetDataByInBCThu(txtNgayDau.Text, txtNgayCuoi.Text);
                ReportDataSource rds = new ReportDataSource("DataSet1", dt); // nạp dữ liệu từ dt vào rds (ReportDataSource)
                rpBCThu.LocalReport.DataSources.Add(rds); // nạp dữ liệu lên report
                // Path
                rpBCThu.LocalReport.ReportPath = "rpThu.rdlc"; // tạo đường dẫn để gọi report "rpThu.rdlc" cần sử dụng
                // Parameter
                ReportParameter[] rptPara = new ReportParameter[]
            {
                // truyền tham số của ô txtNgayDau vào fromDate
                // truyền tham số của ô txtNgayCuoi vào toDate
                new ReportParameter("fromDate", txtNgayDau.Text),
                new ReportParameter("toDate", txtNgayCuoi.Text)
            };
              
                // refresh
                this.rpBCThu.LocalReport.Refresh(); // làm mới report để hiển thị dữ liệu
            }
        }

        private void NewMethod(ReportParameter[] rptPara)
        {
            // hiển thị tham số của txtNgayDau và txtNgayCuoi vào report chứa fromDate và toDate
            this.rpBCThu.LocalReport.SetParameters(rptPara);
        }
    }
}