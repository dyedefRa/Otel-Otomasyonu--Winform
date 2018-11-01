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
    public partial class KasaForm : Form
    {
        public KasaForm()
        {
            InitializeComponent();
        }

        KasaORM kORM = new KasaORM();

        private void btn_Ekle_Click(object sender, EventArgs e)
        {
            //BU KASAYI ORM KASASINA ATMALIYIZ
            Kasa temp = new Kasa();
            temp.Adi = textBox1.Text;
            temp.Aciklama = textBox2.Text;
           
            if (kORM.Insert(temp))
            {
                MessageBox.Show("Kasa Ekleme Başarıyla Tamamlandı..");
                dataGridView1.DataSource = kORM.Select();
            }
            else
            {
                MessageBox.Show("Kasa Ekleme Başarısız..! Lütfen daha sonra tekrar deneyiniz..");
                dataGridView1.DataSource = kORM.Select();
            }
            
        }

        private void KasaForm_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = kORM.Select();
        }

        private void dataGridView1_MouseClick(object sender, MouseEventArgs e)
        {
            DataGridViewRow dr = dataGridView1.CurrentRow;
            int secilenID = dr.Index;
            if (secilenID!=-1|| secilenID!=0)
            {

                txt_ID.Text = dr.Cells[0].Value.ToString();
                txt_Adi.Text = dr.Cells[1].Value.ToString();
                txt_Aciklama.Text = dr.Cells[2].Value.ToString();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DialogResult dr = MessageBox.Show($"IDsi = {txt_ID.Text} olan kasayı silmek istediğinize emin misiniz..","Silme işlemi",MessageBoxButtons.OKCancel,MessageBoxIcon.Information);
            if (dr==DialogResult.OK)
            {
                Kasa temp = new Kasa();
                temp.Id = Convert.ToInt32(txt_ID.Text);
                temp.Adi = txt_Adi.Text;
                temp.Aciklama = txt_Aciklama.Text;
                if (kORM.Delete(temp))
                {
                    MessageBox.Show($"ID'si {txt_ID.Text} olan Kasa başarıyla silindi..");
                    dataGridView1.DataSource = kORM.Select();
                }
                else
                {
                    MessageBox.Show("Silme işlemi başarısız..");
                }
            }
        }
    }
}
