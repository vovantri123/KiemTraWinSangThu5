using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TraoDoiDo.Database;
using TraoDoiDo.Models;

namespace TraoDoiDo
{
    /// <summary>
    /// Interaction logic for LyDoTraHangUC.xaml
    /// </summary>
    public partial class LyDoTraHangUC : UserControl
    {
        public string idNguoiMua;
        public string idSP;
        public event EventHandler DrawerClosed;
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.connStr);
        TrangThaiDonHangDao trangThaiDonHangDao = new TrangThaiDonHangDao();
        QuanLyDonHangDao quanLyDonHangDao = new QuanLyDonHangDao();
        public LyDoTraHangUC()
        {
            InitializeComponent();
        }

        private void btnXacNhanTraHang_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                conn.Open();

                // Xóa dữ liệu  khỏi bảng TrangThaiDonHang
                string sqlStr = $@"
                    UPDATE TrangThaiDonHang
                    SET TrangThai = N'Đã trả hàng'
                    WHERE TrangThaiDonHang.IdNguoiMua={idNguoiMua} AND TrangThaiDonHang.IdSanPham = {idSP}
                ";
                SqlCommand command = new SqlCommand(sqlStr, conn);
                command.ExecuteNonQuery();

                sqlStr = $@"
                    UPDATE QuanLyDonHang
                    SET TrangThai = N'Bị hoàn trả',
                        LyDoTraHang = N'{timLyDoDuocChon()}'
                    WHERE QuanLyDonHang.IdNguoiMua={idNguoiMua} AND QuanLyDonHang.IdSanPham = {idSP}
            ";
                command = new SqlCommand(sqlStr, conn);
                command.ExecuteNonQuery();



            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi xảy ra khi trả sản phẩm: " + ex.Message);
            }
            finally
            {
                conn.Close();
            }
            MessageBox.Show("Trả hàng thành công\nTiền đã được hoàn lại");
            btnXacNhanTraHang.IsEnabled = false;
            // Tìm DrawerHost gần nhất
            DependencyObject parent = VisualTreeHelper.GetParent(this);
            while (!(parent is DrawerHost))
            {
                parent = VisualTreeHelper.GetParent(parent);
            }

            DrawerHost drawerHost = parent as DrawerHost;

            // Ẩn DrawerHost 
            if (drawerHost != null)
            {
                drawerHost.IsBottomDrawerOpen = false;
                OnDrawerClosed(EventArgs.Empty);
            }
        }
        protected virtual void OnDrawerClosed(EventArgs e)
        {
            DrawerClosed?.Invoke(this, e);
        }
        private string timLyDoDuocChon()
        {
            // Duyệt qua từng Border trong Grid
            foreach (var border in GridLyDo.Children)
            {
                if (border is Border)
                {
                    var radioButton = FindVisualChild<RadioButton>(border as Border);
                    if (radioButton != null && radioButton.IsChecked == true)
                    { 
                        return radioButton.Content.ToString(); 
                    }
                }
            }
            return "";
        }

        // Hàm trợ giúp để tìm kiếm Control con trong một Control cha
        private T FindVisualChild<T>(DependencyObject obj) where T : DependencyObject
        {
            if (obj != null)
            {
                for (int i = 0; i < VisualTreeHelper.GetChildrenCount(obj); i++)
                {
                    DependencyObject child = VisualTreeHelper.GetChild(obj, i);
                    if (child != null && child is T)
                        return (T)child;
                    else
                    {
                        T childOfChild = FindVisualChild<T>(child);
                        if (childOfChild != null)
                            return childOfChild;
                    }
                }
            }
            return null;
        }

    }
}
