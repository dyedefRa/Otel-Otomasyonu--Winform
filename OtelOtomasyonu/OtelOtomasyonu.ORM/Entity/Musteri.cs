using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OtelOtomasyonu.ORM.Entity
{
  public  class Musteri
    {
        public Musteri()
        {
            Aktif = true;
        }
        public int Id { get; set; }
        public string Adi { get; set; }
        public string Soyadi { get; set; }
        public string SirketAdi { get; set; }
        public string TC { get; set; }
        public string TelNo { get; set; }
        public DateTime DogumTarihi { get; set; }
        public bool MedeniDurum { get; set; }
        public bool Cinsiyet { get; set; }
        public bool Aktif { get; set; }

    }
    //public enum MedeniDurumTip
    //{
    //    Evli=2,
    //    Bekar=1,
    //}
    //public enum CinsiyetTip
    //{
    //    Kadın=1,
    //    Erkek=2
    //}
}
