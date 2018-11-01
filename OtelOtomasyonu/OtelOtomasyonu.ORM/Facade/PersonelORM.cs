using OtelOtomasyonu.ORM.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OtelOtomasyonu.ORM.Facade
{
    public class PersonelORM : ORMBASE<Personel>
    {
        public static Personel AktifKullanici;

        public Personel GirisYap(Personel temp)
        {
            SqlCommand komut = new SqlCommand("prc_Personel_Giris", Tools.Baglan.bagla);
            komut.CommandType = CommandType.StoredProcedure;
            komut.Parameters.AddWithValue("@ka", temp.KullaniciAdi);
            komut.Parameters.AddWithValue("@parola", temp.Parola);

            SqlDataReader dr = komut.ExecuteReader();
            if (!dr.Read())
            {
                dr.Close();
                return null;
            }

            Personel aktif = new Personel();
            aktif.Id = Convert.ToInt32(dr["Id"]);
            aktif.Adi = dr["Adi"].ToString();
            aktif.Soyadi = dr["Soyadi"].ToString();
            aktif.KullaniciAdi = dr["KullaniciAdi"].ToString();
            aktif.TC = dr["TC"].ToString();
            aktif.TelNo = dr["TelNo"].ToString();
            aktif.IseGirisTarihi = Convert.ToDateTime(dr["IseGirisTarihi"]);


            //SqlDataAdapter da = new SqlDataAdapter("prc_Personel_Giris", Tools.Baglan.bagla);
            //da.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;
            //da.SelectCommand.Parameters.AddWithValue("@ka", temp.KullaniciAdi);
            //da.SelectCommand.Parameters.AddWithValue("@parola", temp.Parola);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //if (dt.Rows.Count == 0)
            //    return null;
            dr.Close();
            return aktif;








        }
    }
}
