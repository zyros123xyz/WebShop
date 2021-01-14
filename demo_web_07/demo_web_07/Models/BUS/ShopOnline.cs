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
        public static IEnumerable<SanPham> Top4New()
        {
            var db = new ShopConnectionDB();
            return db.Query<SanPham>("select Top 4 * from SanPham where GhiChu = 'new'");
        }
        public static IEnumerable<SanPham> TopHot()
        {
            var db = new ShopConnectionDB();
            return db.Query<SanPham>("select Top 4 * from SanPham where LuotView > 0 ");
        }
    }
}