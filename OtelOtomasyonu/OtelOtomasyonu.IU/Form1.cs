using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using OtelOtomasyonu.ORM.Facade;

namespace OtelOtomasyonu.IU
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

       

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void birimTipleriToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void kategorilerToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

BirimTipForm bt = new BirimTipForm();
        private void birimTipleriToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (bt.IsDisposed)
            {
                //Birden çok bu formu açmama olayı.
                bt = new BirimTipForm();
            }
            bt.MdiParent = this;
            bt.Show();
          
        }
        KasaForm kasaForm = new KasaForm();
        private void kasaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (kasaForm.IsDisposed)
            {
                kasaForm = new KasaForm();
            }
            kasaForm.MdiParent = this;
            kasaForm.Show();
        }

        KategoriForm kategoriForm = new KategoriForm();
        private void kategorilerToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (kategoriForm.IsDisposed)
            {
                kategoriForm = new KategoriForm();
            }
            kategoriForm.MdiParent = this;
            kategoriForm.Show();
        }

        UrunlerForm urunlerForm = new UrunlerForm();
        private void ürünlerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (urunlerForm.IsDisposed)
            {
                urunlerForm = new UrunlerForm();
            }
            urunlerForm.MdiParent = this;
            urunlerForm.Show();

        }

        OdaTurForm OdaTurForm = new OdaTurForm();
        private void odaTürleriToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (OdaTurForm.IsDisposed)
            {
                OdaTurForm = new OdaTurForm();
            }
            OdaTurForm.MdiParent = this;
            OdaTurForm.Show();
        }

        OdaForm odaForm = new OdaForm();
        private void odalarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (odaForm.IsDisposed)
            {
                odaForm = new OdaForm();
            }
            odaForm.MdiParent = this;
            odaForm.Show();

        }

        OzelliklerForm ozelliklerForm = new OzelliklerForm();
        private void özelliklerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (ozelliklerForm.IsDisposed)
            {
                ozelliklerForm = new OzelliklerForm();
            }
            ozelliklerForm.MdiParent = this;
            ozelliklerForm.Show();
        }

        OdaOzellikForm OdaOzellikForm = new OdaOzellikForm();
        private void odaÖzellikleriToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (OdaOzellikForm.IsDisposed)
            {
                OdaOzellikForm = new OdaOzellikForm();
            }
            OdaOzellikForm.MdiParent = this;
            OdaOzellikForm.Show();
        }

        MusteriForm musteriForm = new MusteriForm();
        private void müşterilerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (musteriForm.IsDisposed)
            {
                musteriForm = new MusteriForm();
            }
            musteriForm.MdiParent = this;
            musteriForm.Show();
        }

        PersonelForm personelForm = new PersonelForm();
        private void personellerToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (personelForm.IsDisposed)
            {
                personelForm = new PersonelForm();
            }
            personelForm.MdiParent = this;
            personelForm.Show();

        }

        SatisForm satisForm = new SatisForm();
        private void satışToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (satisForm.IsDisposed)
            {
                satisForm = new SatisForm();
            }
            satisForm.MdiParent = this;
            satisForm.Show();
        }
    }
}
