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
    public partial class OdaOzellikForm : Form
    {
        public OdaOzellikForm()
        {
            InitializeComponent();
        }
        OdaOzellikleriORM odaOzellikleriORM = new OdaOzellikleriORM();
        OdaORM oORM = new OdaORM();
        OzelliklerORM ozORM = new OzelliklerORM();

        private void OdaOzellikForm_Load(object sender, EventArgs e)
        {
            cmb_Oda.DataSource = oORM.Select();
            cmb_Oda.DisplayMember = "Adi";
            cmb_Oda.ValueMember = "Id";

            list_Ozellik.DataSource = ozORM.Select();
            list_Ozellik.DisplayMember = "Adi";
            list_Ozellik.ValueMember = "Id";

        }

        private void btn_Ekle_Click(object sender, EventArgs e)
        {
            try
            {
                OdaOzellikleri temp = new OdaOzellikleri();
                temp.OdaID = (int)cmb_Oda.SelectedValue;
                temp.OzellikID = (int)list_Ozellik.SelectedValue;
                temp.Deger = Convert.ToInt16(textBox1.Text);

                if (odaOzellikleriORM.Insert(temp))
                {
                    MessageBox.Show("Odaya özellik/özellikler başarıyla eklenmiştir.");

                }
                else
                {
                    MessageBox.Show("Hata oluştu.Lütfen değerleri kontrol ediniz..");
                }

            }
            catch
            {

                MessageBox.Show("Hata oluştu.Lütfen değerleri kontrol ediniz..");
            }
        }
    }
}
