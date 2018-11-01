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
    public partial class OzelliklerForm : Form
    {
        public OzelliklerForm()
        {
            InitializeComponent();
        }
        OzelliklerORM oORM = new OzelliklerORM();

        private void btn_Ekle_Click(object sender, EventArgs e)
        {
            try
            {
                Ozellikler temp = new Ozellikler();
                temp.Adi = txt_Adi.Text;
                temp.Aciklama = txt_Aciklama.Text;
                if (oORM.Insert(temp))
                {

                   
                    dataGridView1.DataSource = oORM.Select();
                    MessageBox.Show("Ekleme işlemi başarıyla tamamlandı");
                }
                else
                {
                    MessageBox.Show("Hata oluştu .");
                }

            }
            catch
            {

                MessageBox.Show("Hata oluştu..");
            }
        }

        private void OzelliklerForm_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = oORM.Select();
        }
    }
}
