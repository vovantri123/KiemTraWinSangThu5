using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TraoDoiDo.Models
{
    public class Voucher
    {
        private string idVoucher;
        private string noiDung;
        private string giaTri;

        public Voucher(string idVoucher, string noiDung, string giaTri)
        {
            this.idVoucher = idVoucher;
            this.noiDung = noiDung;
            this.giaTri = giaTri;
        }

        public string IdVoucher { get => idVoucher; set => idVoucher = value; }
        public string NoiDung { get => noiDung; set => noiDung = value; }
        public string GiaTri { get => giaTri; set => giaTri = value; }
    }
}
