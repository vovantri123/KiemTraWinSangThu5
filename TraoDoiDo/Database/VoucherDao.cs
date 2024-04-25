using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using TraoDoiDo.Models;

namespace TraoDoiDo.Database
{
    internal class VoucherDao
    {
        List<Voucher> dsVoucher; 
        List<string> dongKetQua;
        List<List<string>> bangKetQua;
        DbConnection dbConnection = new DbConnection();

       
        public List<Voucher> LoadVoucher()
        {
            //MessageBox.Show("id nguoi mua trong LoadSanPhamCungLoai"+sp.IdNguoiMua);
            string sqlStr = $@" 
                            select IdVoucher, NoiDungVoucher, GiaTri
                            from Voucher
                       ";
            
            dsVoucher = new List<Voucher>();
            bangKetQua = dbConnection.LayDanhSachNhieuPhanTu<string>(sqlStr);
            foreach (var dong in bangKetQua)
            {
                dsVoucher.Add(new Voucher(dong[0], dong[1], dong[2]));
            } 

            return dsVoucher;
        }
    }
}
