﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OtelOtomasyonu.ORM.Entity
{
   public class Kategori
    {
        public Kategori()
        {
            Aktif = true;
        }
        public int Id { get; set; }
        public string Adi { get; set; }
        public bool Aktif { get; set; }
    }
}