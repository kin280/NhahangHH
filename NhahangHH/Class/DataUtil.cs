using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using NhahangHH.Class;

namespace NhahangHH.Class
{
    public class DataUtil
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\kienb\source\repos\NhahangHH\NhahangHH\App_Data\nhahanghh.mdf;Integrated Security=True");
        public List<tblSanPham> dssp()
        {
            List<tblSanPham> dt = new List<tblSanPham>();
            string sql = "select * from SanPham";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                tblSanPham bok = new tblSanPham();
                bok.maSP = (int)dr["maSP"];               
                bok.tenSP = (string)dr["tenSP"];
                bok.donGia = (int)dr["donGia"];
                bok.khuyenMai = (string)dr["khuyenMai"];               
                bok.hinhAnh = (string)dr["hinhAnh"];
                dt.Add(bok);
            }
            con.Close();
            return dt;
        }
        public void Xoa(int maSP)
        {
            con.Open();
            string sql1 = "delete from SanPham where maSP=@maSP";
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.Parameters.AddWithValue("maSP", maSP);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void Them(tblSanPham b)
        {
            con.Open();
            string sql1 = "insert into SanPham values(@tenSP,@donGia,@khuyenmai,@hinhAnh)";
            SqlCommand cmd = new SqlCommand(sql1, con);            
            cmd.Parameters.AddWithValue("tenSP", b.tenSP);
            cmd.Parameters.AddWithValue("donGia", b.donGia);
            cmd.Parameters.AddWithValue("khuyenmai", b.khuyenMai);           
            cmd.Parameters.AddWithValue("hinhAnh", b.hinhAnh);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        
        public tblSanPham layra1sp(int maSP)
        {
            List<tblSanPham> a = new List<tblSanPham>();
            string sql = "select * from SanPham where maSP=@maSP";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("maSP", maSP);
            tblSanPham bok = null;

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                bok = new tblSanPham();
                bok.maSP = (int)dr["maSP"];           
                bok.tenSP = (string)dr["tenSP"];
                bok.donGia = (int)dr["donGia"];
                bok.khuyenMai = (string)dr["khuyenMai"];
                bok.hinhAnh = (string)dr["hinhAnh"];

                a.Add(bok);
            }
            con.Close();
            return bok;
        }
        public void Sua(tblSanPham b)
        {
            con.Open();
            string sql1 = "update SanPham set tenSP=@tenSP,donGia=@donGia,khuyenMai=@khuyenMai ,hinhAnh=@hinhAnh where maSP=@maSP";
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.Parameters.AddWithValue("maSP", b.maSP);
            cmd.Parameters.AddWithValue("tenSP", b.tenSP);
            cmd.Parameters.AddWithValue("donGia", b.donGia);
            cmd.Parameters.AddWithValue("khuyenMai", b.khuyenMai);
            cmd.Parameters.AddWithValue("hinhAnh", b.hinhAnh);

            cmd.ExecuteNonQuery();
            con.Close();
        }
        //-----------------------------------------------Hoá Đơn Hàng----------------------------

        public List<HoaDon> dsHD()
        {
            List<HoaDon> dt = new List<HoaDon>();
            string sql = "select * from HoaDon";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                HoaDon bok = new HoaDon();
                bok.ID = (int)dr["ID"];
                bok.IDDN = (int)dr["IDDN"];
                bok.sdt = (string)dr["sdt"];
                bok.ngayDat = (DateTime)dr["ngayDat"];
                bok.diaChiNhan = (string)dr["diaChiNhan"];
                bok.tongTien = (int)dr["tongTien"];
                bok.trangThai = Convert.ToByte(dr["trangThai"]);
                dt.Add(bok);
            }
            con.Close();
            return dt;
        }
        public void XoaHD(int ID)
        {
            con.Open();
            string sql1 = "delete from HoaDon where ID=@ID";
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.Parameters.AddWithValue("ID", ID);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public HoaDon layra1HD(int ID)
        {
            List<HoaDon> a = new List<HoaDon>();
            string sql = "select * from HoaDon where ID=@ID";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("ID", ID);
            HoaDon bok = null;

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                bok = new HoaDon();
                bok.ID = (int)dr["ID"];
                bok.trangThai = Convert.ToByte(dr["trangThai"]);
                a.Add(bok);
            }
            con.Close();
            return bok;
        }
        public void SuaHD(HoaDon b)
        {
            con.Open();
            string sql1 = "update HoaDon set trangThai=@trangThai where ID=@ID";
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.Parameters.AddWithValue("ID", b.ID);        
            cmd.Parameters.AddWithValue("trangThai", b.trangThai);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        //-----------------------------------------------Users----------------------------
        public List<Users> dsUser()
        {
            List<Users> dt = new List<Users>();
            string sql = "select * from Users";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Users bok = new Users();
                bok.IDDN = (int)dr["IDDN"];
                bok.tenDN = (string)dr["tenDN"];
                bok.email = (string)dr["email"];
                bok.diaChi = (string)dr["diaChi"];
                bok.sdt = (string)dr["sdt"];
                bok.matkhauDN = (string)dr["matkhauDN"];
                bok.quyen = Convert.ToByte(dr["quyen"]);
                dt.Add(bok);
            }
            con.Close();
            return dt;
        }
        public void themUser(Users u)
        {
            con.Open();
            string sql = "insert into Users values (@tenDN,@email,@diaChi,@sdt,@matkhauDN,@quyen)";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("IDDN", u.IDDN);
            cmd.Parameters.AddWithValue("tenDN", u.tenDN);
            cmd.Parameters.AddWithValue("email", u.email);
            cmd.Parameters.AddWithValue("diaChi", u.diaChi);
            cmd.Parameters.AddWithValue("sdt", u.sdt);
            cmd.Parameters.AddWithValue("matkhauDN", u.matkhauDN);
            cmd.Parameters.AddWithValue("quyen", u.quyen);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void XoaUser(int IDDN)
        {
            con.Open();
            string sql1 = "delete from Users where IDDN=@IDDN";
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.Parameters.AddWithValue("IDDN", IDDN);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public Users layra1user(int IDDN)
        {
            List<Users> a = new List<Users>();
            string sql = "select * from Users where IDDN=@IDDN";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("IDDN", IDDN);
            Users bok = null;

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                bok = new Users();
                bok.IDDN = (int)dr["IDDN"];
                bok.tenDN = (string)dr["tenDN"];
                bok.email = (string)dr["email"];
                bok.diaChi = (string)dr["diaChi"];
                bok.sdt = (string)dr["diaChi"];
                bok.matkhauDN = (string)dr["matkhauDN"];
                bok.quyen = Convert.ToByte(dr["quyen"]);
                a.Add(bok);
            }
            con.Close();
            return bok;
        }
        public void SuaUser(Users b)
        {
            con.Open();
            string sql1 = "update Users set tenDN=@tenDN,email=@email,diaChi=@diaChi,sdt=@sdt,matkhauDN=@matkhauDN,quyen=@quyen where IDDN=@IDDN";
            SqlCommand cmd = new SqlCommand(sql1, con);
            cmd.Parameters.AddWithValue("IDDN", b.IDDN);
            cmd.Parameters.AddWithValue("tenDN", b.tenDN);
            cmd.Parameters.AddWithValue("email", b.email);
            cmd.Parameters.AddWithValue("diaChi", b.diaChi);
            cmd.Parameters.AddWithValue("sdt", b.sdt);
            cmd.Parameters.AddWithValue("matkhauDN", b.matkhauDN);
            cmd.Parameters.AddWithValue("quyen", b.quyen);
            cmd.ExecuteNonQuery();
            con.Close();
        }
  
       

    }


}