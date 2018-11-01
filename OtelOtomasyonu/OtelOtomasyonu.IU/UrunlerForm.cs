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
    public partial class UrunlerForm : Form
    {
        public UrunlerForm()
        {
            InitializeComponent();
        }

        UrunlerORM uORM = new UrunlerORM();
        KategoriORM kORM = new KategoriORM();
        BirimTipleriORM bORM = new BirimTipleriORM();

        private void UrunlerForm_Load(object sender, EventArgs e)
        {
            cmb_Kategori.DataSource = kORM.Select();
            cmb_Kategori.DisplayMember = "Adi";
            cmb_Kategori.ValueMember = "Id";

            cmb_BirimTip.DataSource = bORM.Select();
            cmb_BirimTip.DisplayMember = "Adi";
            cmb_BirimTip.ValueMember = "Id";

            dataGridView1.DataSource = uORM.Select();
            //dataGridView1.Columns["KategoriID"].HeaderCell.Value = "ASFASF";
  
        }

        private void btn_Ekle_Click(object sender, EventArgs e)
        {
            try
            {
                Urun temp = new Urun();
                temp.Adi = txt_Adi.Text;
                temp.Fiyat = Convert.ToDecimal(txt_Fiyat.Text);
                temp.Miktar = Convert.ToDouble(nud_Miktar.Value);
                temp.KategoriID = (int)cmb_Kategori.SelectedValue;
                temp.BirimTipID = (int)cmb_BirimTip.SelectedValue;
                if (uORM.Insert(temp))
                {
                    MessageBox.Show("Ürün Ekleme İşlemi Başarıyla Tamamlandı...");
                    dataGridView1.DataSource = uORM.Select();
                }
                else
                {
                    MessageBox.Show("Hata oluştu...Lütfen tekrar deneyiniz..(Tekniksel hata)");
                }

            }
            catch (Exception)
            {

                MessageBox.Show("Hata oluştu...Lütfen tekrar deneyiniz..(Bilgilerinizi kontrol ediniz)");
            }
        }
    }
}
