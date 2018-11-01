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
    public partial class KategoriForm : Form
    {
        public KategoriForm()
        {
            InitializeComponent();
        }
        KategoriORM kORM = new KategoriORM();

        private void btn_Ekle_Click(object sender, EventArgs e)
        {
            Kategori temp = new Kategori();
            temp.Adi = textBox1.Text;
            if (kORM.Insert(temp))
            {
                MessageBox.Show("Kategori Ekleme İşlemi Başarıyla Tamamlandı..");
                dataGridView1.DataSource = kORM.Select();
            }
            else
            {
                MessageBox.Show("Kategori Ekleme Başarısız...");
            }
        }

        private void KategoriForm_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = kORM.Select();
        }
    }
}
