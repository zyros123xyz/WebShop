using ShopConnection;
using System.Collections.Generic;


namespace demo_web_07.Models.BUS
{
    public class ShopOnline
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new ShopConnectionDB();
            return db.Query<SanPham>("select * from SanPham where  TinhTrang = 0");
        }
        public static  SanPham ChiTiet(string a)
        {
            var db = new ShopConnectionDB();
            return db.SingleOrDefault<SanPham>("select * from SanPham where  MaSanPham = @0",a);
        }
    }
}