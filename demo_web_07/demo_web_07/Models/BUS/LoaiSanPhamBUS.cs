using ShopConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace demo_web_07.Models.BUS
{
    public class LoaiSanPhamBUS
    {
        public static IEnumerable<LoaiSanPham> DanhSach()
        {
            var db = new ShopConnectionDB();
            return db.Query<LoaiSanPham>("select * from LoaiSanPham where  TinhTrang = 0");
        }
        public static IEnumerable<SanPham> ChiTiet(String id)
        {
            var db = new ShopConnectionDB();
            return db.Query<SanPham>("select * from SanPham where  MaLoaiSanPham = '"+id+"'");
        }
    }
}