using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OtelOtomasyonu.ORM.Entity
{
  public  class Urun
    {
        public Urun()
        {
            Aktif = true;
        }

        public int Id { get; set; }
        public string Adi { get; set; }
        public decimal Fiyat { get; set; }
        public double Miktar { get; set; }
        public int  KategoriID { get; set; }
        public int BirimTipID { get; set; }
        public bool Aktif { get; set; }
    }
}
