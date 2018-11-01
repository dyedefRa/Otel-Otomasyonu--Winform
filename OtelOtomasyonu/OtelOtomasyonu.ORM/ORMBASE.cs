using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OtelOtomasyonu.ORM
{
    using System.Data.SqlClient;
    using System.Reflection;
    using Tools;

    public class ORMBASE<T> : IORM<T> where T : class
    {
        public Type tip = typeof(T);

        public bool Delete(T entity)
        {
            //HER TABLO ICIN 4 ADET PROCEDURE OLUSTURMAM GEREKIYOR
            //ORNEGIN Kategori Tablosu için;
            //prc_Kategori_Delete 
            //prc_Kategori_Update
            //prc_Kategori_Insert
            //prc_Kategori_Select formatında

            SqlCommand kmt_Sil = new SqlCommand($"prc_{tip.Name}_Delete", Tools.Baglan.bagla);
           return Tools.Execute.ParametreOlustur<T>(kmt_Sil, entity);
            //USTEKI METOD AYNEN BNUNU YAPIYOR
            //kmt_Sil.CommandType = CommandType.StoredProcedure;

            //PropertyInfo[] props = tip.GetProperties();

            //foreach (var pro in props)
            //{
            //    kmt_Sil.Parameters.AddWithValue($"@{pro.Name}", pro.GetValue(entity));
            //}

            //return Tools.Execute.GetBool_RunExecuteByCommand(kmt_Sil);

           
        }

        public bool Insert(T entity)
        {
            SqlCommand kmt_Ekle = new SqlCommand($"prc_{tip.Name}_Insert", Tools.Baglan.bagla);
            return Tools.Execute.ParametreOlustur<T>(kmt_Ekle, entity);
                 
        }

        public object InsertScaler(T entity)
        {
            SqlCommand kmt_Ekle = new SqlCommand($"prc_{tip.Name}_ScalerInsert", Tools.Baglan.bagla);
            kmt_Ekle.CommandType = CommandType.StoredProcedure;
            //Tools.Execute.ParametreOlustur<T>(kmt_Ekle, entity);
            //ELIMIZLE YAZALIM PARAMETRE OLUSTURUMUZUN ICINDE ZATEN BIR EXECUTE OLAYI VAR.

            PropertyInfo[] props = tip.GetProperties();

            foreach (var prop in props)
            {
                //BURADADA BIR INSERT ISLEMI VAR ID OLAN PROP U EKLEMEMELIYIZ
                //INSERTTEN TEK FARKI GERIYE BOOL DEGIL OBJECT DONDURMESI YANI
                //SON EKLENEN ZIMBIRTININ IDSI DONECEK!!!
                string propadi = prop.Name;

                if (propadi != "Id")
                {
                    kmt_Ekle.Parameters.AddWithValue($"@{propadi}", prop.GetValue(entity));
                }
            }

            return Tools.Execute.GetObject_RunExecuteByCommand(kmt_Ekle);
        }

        public DataTable Select()
        {

            SqlDataAdapter da = new SqlDataAdapter($"prc_{tip.Name}_Select", Tools.Baglan.bagla);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public bool Update(T entity)
        {
            SqlCommand kmt_Guncelle = new SqlCommand($"prc_{tip.Name}_Update", Tools.Baglan.bagla);
            return Tools.Execute.ParametreOlustur<T>(kmt_Guncelle, entity);

        }
    }
}
