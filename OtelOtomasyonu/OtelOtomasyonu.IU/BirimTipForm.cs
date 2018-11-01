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
    public partial class BirimTipForm : Form
    {
        public BirimTipForm()
        {
            InitializeComponent();
        }
        BirimTipleriORM bORM = new BirimTipleriORM();

        private void BirimTipForm_Load(object sender, EventArgs e)
        {
         dataGridView1.DataSource=   bORM.Select();
        }

        private void btn_Ekle_Click(object sender, EventArgs e)
        {
            BirimTipleri temp = new BirimTipleri();
            temp.Adi = textBox1.Text;

            if (bORM.Insert(temp))
            {
                MessageBox.Show("Birim Tipi Başarıyla Eklendi..");
                dataGridView1.DataSource = bORM.Select();
             
            } 
            else
            {
                MessageBox.Show("Birim Tipi Eklenemedi..Lütfen tekrar deneyiniz..");
            }
        }
    }
}
