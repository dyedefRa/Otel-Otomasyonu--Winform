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
    public partial class GirisYapForm : Form
    {
        public GirisYapForm()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            label1.Text = label1.Text.Substring(1) + label1.Text.Substring(0,1);
        }

        private void GirisYapForm_Load(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            PersonelORM perORM = new PersonelORM();
            Personel temp = new Personel();
            temp.KullaniciAdi = txt_KullaniciAdi.Text;
            temp.Parola = txt_Parola.Text;

            Personel aktif = perORM.GirisYap(temp);
            if (aktif==null)
            {
                MessageBox.Show("Giriş başarısız lütfen tekrar deneyiniz..");
            }
            else
            {
               PersonelORM.AktifKullanici =(Personel) aktif;
                MessageBox.Show("Giriş başarılı...Sisteme yönlendiriliyorsunuz...");
                Form1 frm = new Form1();
                frm.Show();
                this.Hide();

            }
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
