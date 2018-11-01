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
    public partial class OdaTurForm : Form
    {
        public OdaTurForm()
        {
            InitializeComponent();
        }

        OdaTurORM oORM = new OdaTurORM();

        private void btn_Ekle_Click(object sender, EventArgs e)
        {
            try
            {
                OdaTur temp = new OdaTur();
                temp.Adi = textBox1.Text;
                temp.Aciklama = textBox2.Text;
                if (oORM.Insert(temp))
                {
                    MessageBox.Show("Oda Tür Ekleme işlemi başarıyla tamamlandı..");
                    dataGridView1.DataSource = oORM.Select();
                }
                else
                {
                    MessageBox.Show("Ekleme işleminde sorun oluştu...");
                }

            }
            catch 
            {
                MessageBox.Show("Ekleme işleminde sorun oluştu...Lütfen daha sonra tekrar deneyiniz.. ");

            }
        }

        private void OdaTurForm_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = oORM.Select();
        }
    }
}
