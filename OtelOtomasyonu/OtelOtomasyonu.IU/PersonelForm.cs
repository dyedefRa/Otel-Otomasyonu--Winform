using OtelOtomasyonu.ORM.Entity;
using OtelOtomasyonu.ORM.Facade;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace OtelOtomasyonu.IU
{
    public partial class PersonelForm : Form
    {
        public PersonelForm()
        {
            InitializeComponent();
        }
        PersonelORM pORM = new PersonelORM();

        private void PersonelForm_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = pORM.Select();
        }

        private void btn_Ekle_Click(object sender, EventArgs e)
        {
            Personel temp = new Personel();
            temp.Adi = txt_Adi.Text;
            temp.Soyadi = txt_Soyadi.Text;
            temp.TC = msk_TC.Text;
            temp.TelNo = msk_TelNo.Text;
            temp.Adres = txt_Adres.Text;
            temp.DogumTarihi = date_DogumTarihi.Value;
            temp.IseGirisTarihi = date_IseGiris.Value;
            temp.Maas = nud_Maas.Value;
            temp.KullaniciAdi = txt_Adi.Text;
            temp.Parola = txt_Parola.Text;
            if (pORM.Insert(temp))
            {
                MessageBox.Show("Kayıt başarıyla tamamlandı. Hayırlı olsun :)");
                dataGridView1.DataSource = pORM.Select();

            }
            else
            {
                MessageBox.Show("Kayıt eklenirken hata oluştu..");
            }

        }
    }
}
