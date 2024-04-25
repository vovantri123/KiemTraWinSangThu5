using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.Windows.Threading;
using TraoDoiDo.Database;
using TraoDoiDo.Models;
using TraoDoiDo.ViewModels;

namespace TraoDoiDo
{
    /// <summary>
    /// Interaction logic for TrangChu.xaml
    /// </summary>
    public partial class TrangChuUC : UserControl
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);
        private VoucherUC[] DanhSachVoucher = new VoucherUC[150]; //Load lên UI
        private int soLuongVoucher;
        VoucherDao voucherDao = new VoucherDao();
        private string idNguoiMua;

        public TrangChuUC(string idNguoiMua)
        {
            this.idNguoiMua = idNguoiMua;
            InitializeComponent();
            LoadVoucherlenWpnlHienThi();
        }
        private void LoadVoucherlenWpnlHienThi()
        {
            soLuongVoucher = 0;
            try
            {
                conn.Open();

                List<Voucher> dsVoucher = voucherDao.LoadVoucher(); // DS này lấy từ database

                foreach (var dong in dsVoucher)
                {
                    DanhSachVoucher[soLuongVoucher] = new VoucherUC(idNguoiMua);
                    DanhSachVoucher[soLuongVoucher].txtbNoiDungVoucher.Text = dong.NoiDung;
                    DanhSachVoucher[soLuongVoucher].txtbGiaTri.Text = dong.GiaTri;

                    DanhSachVoucher[soLuongVoucher].Margin = new Thickness(8);
                    wpnlHienThi.Children.Add(DanhSachVoucher[soLuongVoucher]);
                    soLuongVoucher++;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            finally
            {
                conn.Close();
            }
        }


    }
}
