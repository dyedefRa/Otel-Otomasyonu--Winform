using OtelOtomasyonu.ORM.Entity;
using OtelOtomasyonu.ORM.Facade;

using System;
using System.Collections.Generic;
using System.ComponentModel;



using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace OtelOtomasyonu.IU
{


    public partial class SatisForm : Form
    {
        public SatisForm()
        {
            InitializeComponent();
        }

        MusteriORM musORM = new MusteriORM();
        OdaORM odaORM = new OdaORM();
        UrunlerORM urunORM = new UrunlerORM();
        SatisORM satisORM = new SatisORM();
        SatisDetayORM sdetayORM = new SatisDetayORM();
        private void SatisForm_Load(object sender, EventArgs e)
        {
            cmb_Musteri.DataSource = musORM.Select();

            cmb_Musteri.DisplayMember = "Adi";
            cmb_Musteri.ValueMember = "Id";

            cmb_Oda.DataSource = odaORM.Select();
            cmb_Oda.DisplayMember = "Adi";
            cmb_Oda.ValueMember = "Id";

            data_Urunler.DataSource = urunORM.Select();
        }

        private void btn_SatisaEkle_Click(object sender, EventArgs e)
        {
            if (data_Urunler.CurrentRow == null)
            {
                MessageBox.Show("Lütfen Satışa eklemek istediğiniz ürünü seçiniz");
                return;
            }






            ListViewItem li = new ListViewItem();
            li.Text = (listView1.Items.Count + 1).ToString();
            string urunAdi = data_Urunler.CurrentRow.Cells["Adi"].Value.ToString();
            li.SubItems.Add(urunAdi);
            li.SubItems.Add(nud_UrunMiktari.Value.ToString());
            li.SubItems.Add(nud_UrunFiyati.Value.ToString());
            li.SubItems.Add(nud_Indirim.Value.ToString());
            //TAGine ürünID atalım . listviewin her itemi için bir satışdetay nesnesı olusturmam  gerekecek
            li.Tag = Convert.ToInt32(data_Urunler.CurrentRow.Cells["Id"].Value);
            listView1.Items.Add(li);
            btn_Kaydet.Enabled = true;

            /*
             * 
             *   SatisDetay satisDetay = new SatisDetay();
            satisDetay.UrunID = Convert.ToInt32(data_Urunler.CurrentRow.Cells["Id"].Value);
            satisDetay.Fiyat = nud_UrunFiyati.Value;
            satisDetay.Miktar = (double)nud_UrunMiktari.Value;
            satisDetay.Indirim = (double)nud_Indirim.Value;
            string urunAdi = data_Urunler.CurrentRow.Cells["Adi"].Value.ToString();

            ListViewItem li = new ListViewItem();
            li.Text = (listView1.Items.Count + 1).ToString();
            li.SubItems.Add(urunAdi);
            li.SubItems.Add(satisDetay.Miktar.ToString());
            li.SubItems.Add(satisDetay.Fiyat.ToString());
            li.SubItems.Add(satisDetay.Indirim.ToString());
            li.Tag = satisDetay.UrunID;
            listView1.Items.Add(li);
            btn_Kaydet.Enabled = true;
              */





        }

        private void btn_Kaydet_Click(object sender, EventArgs e)
        {
            Satis satis = new Satis();

            satis.MusteriID = Convert.ToInt32(cmb_Musteri.SelectedValue);
            satis.PersonelID = PersonelORM.AktifKullanici.Id;

            satis.OdaID = Convert.ToInt32(cmb_Oda.SelectedValue);
           

                satis.OdaFiyati = nud_OdaFiyati.Value;
            
            satis.SatisTarihi = DateTime.Now;

            //-------------------------

            //SON EKLENEN SATISIN ID SINI CEKTIK

            int satisID = Convert.ToInt32(satisORM.InsertScaler(satis));

            if (satisID == 0)
            {
                MessageBox.Show("Kaydetme işleminde hata oluştu..Lütfen daha sonra tekrar deneyiniz");
                return;
            }

            foreach (ListViewItem detay in listView1.Items)
            {
                SatisDetay temp = new SatisDetay();

                temp.SatisID = satisID;
                temp.UrunID = Convert.ToInt32(detay.Tag);


                temp.Miktar = Convert.ToDouble(detay.SubItems[2].Text);
                temp.Fiyat = Convert.ToDecimal(detay.SubItems[3].Text);
                temp.Indirim = Convert.ToDouble(detay.SubItems[4].Text);


                if (!sdetayORM.Insert(temp))
                {
                    string urunAdi = detay.SubItems[1].Text;
                    MessageBox.Show($"{urunAdi} ürünü eklenirken sorun oluştu");
                    return;
                }

            }

            MessageBox.Show("Kayıt başarıyla tamamlandı..");



        }
    }
}
