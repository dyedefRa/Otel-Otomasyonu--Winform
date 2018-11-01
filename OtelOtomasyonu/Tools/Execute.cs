using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Reflection;

namespace Tools
{
    public static  class Execute
    {
       //KOMUT ALIR EXECUTE YAPAR
        public static bool GetBool_RunExecuteByCommand(SqlCommand komut)
        {

            try
            {
                int degisenTabloSayisi = komut.ExecuteNonQuery();


                return degisenTabloSayisi > 0;
            }
            catch
            {

                return false;
            }
            finally
            {
                if (komut.Connection.State != ConnectionState.Closed)
                {
                    komut.Connection.Close();
                }

            }
        }
        

        //EKLENILEN SON NEYSEYI ALACAGIZ.
        //IDSI LAZIM BANA AMA INTEGERE OLARAK DONDERMIYORUM
        //BASKA BIR PROJEDE LONG TIPLI BI ID OLABILIR!!
        public static object GetObject_RunExecuteByCommand(SqlCommand komut)
        {
            try
            {
                if (komut.Connection.State != ConnectionState.Open)
                    komut.Connection.Open();
                object deger = komut.ExecuteScalar();
                return deger;
            }
            catch
            {

                return 0;
            }
            finally
            {

                if (komut.Connection.State != ConnectionState.Closed)
                    komut.Connection.Close();
            }
        }
     
        public static bool ParametreOlustur<T>(SqlCommand sqlCommand, T nesneyiVer)
        {
            sqlCommand.CommandType = CommandType.StoredProcedure;

            Type tip = typeof(T);
            PropertyInfo[] props = tip.GetProperties();
            //Komutun içinde Insert varsa @Id parametresini yi almayacagız
            string komutAdi = sqlCommand.CommandText;
            foreach (var prop in props)
            {
                string propadi = prop.Name;
                if (komutAdi.Contains("Insert"))
                {
                    if (propadi != "Id")
                    {
                      sqlCommand.Parameters.AddWithValue($"@{prop.Name}", prop.GetValue(nesneyiVer));
                    }
                  
                }
                else
                {
                    sqlCommand.Parameters.AddWithValue($"@{prop.Name}", prop.GetValue(nesneyiVer));
                }

            
            }
            //USTTEKI METOD
            return Tools.Execute.GetBool_RunExecuteByCommand(sqlCommand);
        }
    }
    
}
