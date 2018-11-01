using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;

namespace Tools
{
    public static  class Baglan
    {
        private static SqlConnection _bagla;

        public static SqlConnection bagla
        {
            get
            {
                if (_bagla == null)
                {
                    _bagla = new SqlConnection(ConfigurationManager.ConnectionStrings["OtelOtomasyonuDBBaglantiCumlecigi"].ConnectionString);
                       


                }
                SqlConnection.ClearPool(_bagla);
                SqlConnection.ClearPool(_bagla);
                if (_bagla.State != ConnectionState.Open)
                {
                    _bagla.Open();
                }
                {

                }
                return _bagla;
            }
            set { _bagla = value; }
        }

    }
}
