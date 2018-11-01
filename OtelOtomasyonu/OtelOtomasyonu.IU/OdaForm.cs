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
    public partial class OdaForm : Form
    {
        public OdaForm()
        {
            InitializeComponent();
        }

        OdaORM oORM = new OdaORM();
        OdaTurORM otORM = new OdaTurORM();

        private void OdaForm_Load(object sender, EventArgs e)
        {
            dataGridView1.DataSource = oORM.Select();

            cmb_OdaTurID.DataSource = otORM.Select();
            cmb_OdaTurID.DisplayMember = "Adi";
            cmb_OdaTurID.ValueMember = "Id";

        }

        private void btn_Ekle_Click(object sender, EventArgs e)
        {
            try
            {
                Oda temp = new Oda();
                temp.Adi = txt_Adi.Text;
                temp.Aciklama = txt_Aciklama.Text;
                temp.OdaTurID = (int)cmb_OdaTurID.SelectedValue;
                if (oORM.Insert(temp))
                {
                    MessageBox.Show("Ekleme işlemi başarıyla tamamlandı..");
                    dataGridView1.DataSource = oORM.Select();
                }
                else
                {
                    MessageBox.Show("Hata oluştu (tekniksel)");
                }

            }
            catch
            {

                MessageBox.Show("Hata oluştu.. Lütfen bilgilerinizi kontrol ediniz.");
            }

        }
    }
}
