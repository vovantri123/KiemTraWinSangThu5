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

namespace TraoDoiDo
{
    /// <summary>
    /// Interaction logic for VoucherUC.xaml
    /// </summary>
    public partial class VoucherUC : UserControl
    {
        private string idNguoiMua;
        private SqlConnection conn;
        DbConnection dbConnection = new DbConnection();
        public VoucherUC(string idNguoiMua)
        {
            conn = new SqlConnection(Properties.Settings.Default.connStr);
            this.idNguoiMua = idNguoiMua;
            InitializeComponent();
        }

        private void btnNhanVoucher_Click(object sender, RoutedEventArgs e)
        {
            
                try
                {
                    string sqlStr1 = $@"
                    UPDATE NguoiDung
                    SET GiaTriVoucher = '{txtbGiaTri.Text}'
                    WHERE IdNguoiDung = '{idNguoiMua}';
";
                    dbConnection.ThucThi(sqlStr1);

                    


                    

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
