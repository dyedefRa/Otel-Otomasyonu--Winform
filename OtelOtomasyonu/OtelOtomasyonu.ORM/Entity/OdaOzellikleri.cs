﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OtelOtomasyonu.ORM.Entity
{
   public class OdaOzellikleri
    {
        public OdaOzellikleri()
        {
            Aktif = true;
        }

        public int OdaID { get; set; }
        public int OzellikID { get; set; }
        public short Deger { get; set; }
        public bool Aktif { get; set; }
    }
}
