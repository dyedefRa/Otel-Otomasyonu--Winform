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
    public partial class MusteriForm : Form
    {
        public MusteriForm()
        {
            InitializeComponent();
        }

        MusteriORM mORM = new MusteriORM();

        private void MusteriForm_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = mORM.Select();
        }

        private void btn_Ekle_Click(object sender, EventArgs e)
        {
            Musteri temp = new Musteri();
            temp.Adi = txt_Adi.Text;
            temp.Soyadi = txt_Soyadi.Text;
            temp.SirketAdi = txt_SirketAdi.Text;
            temp.TC = msk_TC.Text;
            temp.TelNo = msk_TelNo.Text;

            temp.DogumTarihi = date_DogumTarihi.Value;
            if (cmb_Cinsiyet.SelectedIndex == 0)
            {
                temp.Cinsiyet = false;
            }
            else if (cmb_Cinsiyet.SelectedIndex == 1)
            {
                temp.Cinsiyet = true;


            }
            if (cmb_MedeniDurum.SelectedIndex == 0)
            {
                temp.MedeniDurum = false;
            }
            else if (cmb_MedeniDurum.SelectedIndex == 1)
            {
                temp.MedeniDurum = true;
            }

            if (mORM.Insert(temp))
            {
                MessageBox.Show("Kayıt Başarıyla tamamlandı..");
                dataGridView1.DataSource = mORM.Select();
            }
            else
            {
                MessageBox.Show("Sorun oluştu...");
            }
        }
    }
}
