namespace OtelOtomasyonu.IU
{
    partial class SatisForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.cmb_Musteri = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.cmb_Oda = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.data_Urunler = new System.Windows.Forms.DataGridView();
            this.label4 = new System.Windows.Forms.Label();
            this.nud_UrunMiktari = new System.Windows.Forms.NumericUpDown();
            this.nud_UrunFiyati = new System.Windows.Forms.NumericUpDown();
            this.label5 = new System.Windows.Forms.Label();
            this.nud_Indirim = new System.Windows.Forms.NumericUpDown();
            this.label6 = new System.Windows.Forms.Label();
            this.btn_SatisaEkle = new System.Windows.Forms.Button();
            this.listView1 = new System.Windows.Forms.ListView();
            this.columnHeader1 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader2 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader3 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader4 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.columnHeader5 = ((System.Windows.Forms.ColumnHeader)(new System.Windows.Forms.ColumnHeader()));
            this.btn_Kaydet = new System.Windows.Forms.Button();
            this.nud_OdaFiyati = new System.Windows.Forms.NumericUpDown();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.data_Urunler)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nud_UrunMiktari)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nud_UrunFiyati)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nud_Indirim)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nud_OdaFiyati)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // cmb_Musteri
            // 
            this.cmb_Musteri.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmb_Musteri.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.cmb_Musteri.FormattingEnabled = true;
            this.cmb_Musteri.Location = new System.Drawing.Point(12, 32);
            this.cmb_Musteri.Name = "cmb_Musteri";
            this.cmb_Musteri.Size = new System.Drawing.Size(121, 26);
            this.cmb_Musteri.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(75, 18);
            this.label1.TabIndex = 1;
            this.label1.Text = "Müşteri * :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(170, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(44, 18);
            this.label2.TabIndex = 3;
            this.label2.Text = "Oda :";
            // 
            // cmb_Oda
            // 
            this.cmb_Oda.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmb_Oda.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.cmb_Oda.FormattingEnabled = true;
            this.cmb_Oda.Location = new System.Drawing.Point(170, 32);
            this.cmb_Oda.Name = "cmb_Oda";
            this.cmb_Oda.Size = new System.Drawing.Size(121, 26);
            this.cmb_Oda.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.Location = new System.Drawing.Point(313, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(82, 18);
            this.label3.TabIndex = 5;
            this.label3.Text = "Oda Fiyatı :";
            // 
            // data_Urunler
            // 
            this.data_Urunler.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.data_Urunler.Location = new System.Drawing.Point(6, 34);
            this.data_Urunler.MultiSelect = false;
            this.data_Urunler.Name = "data_Urunler";
            this.data_Urunler.ReadOnly = true;
            this.data_Urunler.RowTemplate.Height = 24;
            this.data_Urunler.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.data_Urunler.Size = new System.Drawing.Size(458, 411);
            this.data_Urunler.TabIndex = 6;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.Location = new System.Drawing.Point(487, 47);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(96, 18);
            this.label4.TabIndex = 7;
            this.label4.Text = "Ürün Miktarı :";
            // 
            // nud_UrunMiktari
            // 
            this.nud_UrunMiktari.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.nud_UrunMiktari.Location = new System.Drawing.Point(490, 82);
            this.nud_UrunMiktari.Maximum = new decimal(new int[] {
            999,
            0,
            0,
            0});
            this.nud_UrunMiktari.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.nud_UrunMiktari.Name = "nud_UrunMiktari";
            this.nud_UrunMiktari.Size = new System.Drawing.Size(120, 26);
            this.nud_UrunMiktari.TabIndex = 8;
            this.nud_UrunMiktari.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // nud_UrunFiyati
            // 
            this.nud_UrunFiyati.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.nud_UrunFiyati.Location = new System.Drawing.Point(490, 163);
            this.nud_UrunFiyati.Maximum = new decimal(new int[] {
            99999,
            0,
            0,
            0});
            this.nud_UrunFiyati.Minimum = new decimal(new int[] {
            1,
            0,
            0,
            0});
            this.nud_UrunFiyati.Name = "nud_UrunFiyati";
            this.nud_UrunFiyati.Size = new System.Drawing.Size(120, 26);
            this.nud_UrunFiyati.TabIndex = 10;
            this.nud_UrunFiyati.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.Location = new System.Drawing.Point(487, 132);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(86, 18);
            this.label5.TabIndex = 9;
            this.label5.Text = "Ürün Fiyatı :";
            // 
            // nud_Indirim
            // 
            this.nud_Indirim.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.nud_Indirim.Location = new System.Drawing.Point(490, 235);
            this.nud_Indirim.Maximum = new decimal(new int[] {
            10,
            0,
            0,
            0});
            this.nud_Indirim.Name = "nud_Indirim";
            this.nud_Indirim.Size = new System.Drawing.Size(120, 26);
            this.nud_Indirim.TabIndex = 12;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label6.Location = new System.Drawing.Point(487, 204);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(59, 18);
            this.label6.TabIndex = 11;
            this.label6.Text = "Indirim :";
            // 
            // btn_SatisaEkle
            // 
            this.btn_SatisaEkle.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btn_SatisaEkle.Location = new System.Drawing.Point(490, 297);
            this.btn_SatisaEkle.Name = "btn_SatisaEkle";
            this.btn_SatisaEkle.Size = new System.Drawing.Size(132, 62);
            this.btn_SatisaEkle.TabIndex = 13;
            this.btn_SatisaEkle.Text = "Satışa Ekle";
            this.btn_SatisaEkle.UseVisualStyleBackColor = true;
            this.btn_SatisaEkle.Click += new System.EventHandler(this.btn_SatisaEkle_Click);
            // 
            // listView1
            // 
            this.listView1.Columns.AddRange(new System.Windows.Forms.ColumnHeader[] {
            this.columnHeader1,
            this.columnHeader2,
            this.columnHeader3,
            this.columnHeader4,
            this.columnHeader5});
            this.listView1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.listView1.FullRowSelect = true;
            this.listView1.GridLines = true;
            this.listView1.Location = new System.Drawing.Point(648, 34);
            this.listView1.Name = "listView1";
            this.listView1.Size = new System.Drawing.Size(405, 411);
            this.listView1.TabIndex = 14;
            this.listView1.UseCompatibleStateImageBehavior = false;
            this.listView1.View = System.Windows.Forms.View.Details;
            // 
            // columnHeader1
            // 
            this.columnHeader1.Text = "Sira No ";
            this.columnHeader1.Width = 80;
            // 
            // columnHeader2
            // 
            this.columnHeader2.Text = "Ürün Adı";
            this.columnHeader2.Width = 80;
            // 
            // columnHeader3
            // 
            this.columnHeader3.Text = "Miktar";
            this.columnHeader3.Width = 80;
            // 
            // columnHeader4
            // 
            this.columnHeader4.Text = "Fiyat ";
            this.columnHeader4.Width = 80;
            // 
            // columnHeader5
            // 
            this.columnHeader5.Text = "İndirim ";
            this.columnHeader5.Width = 80;
            // 
            // btn_Kaydet
            // 
            this.btn_Kaydet.Enabled = false;
            this.btn_Kaydet.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btn_Kaydet.Location = new System.Drawing.Point(927, 451);
            this.btn_Kaydet.Name = "btn_Kaydet";
            this.btn_Kaydet.Size = new System.Drawing.Size(139, 61);
            this.btn_Kaydet.TabIndex = 15;
            this.btn_Kaydet.Text = "KAYDET";
            this.btn_Kaydet.UseVisualStyleBackColor = true;
            this.btn_Kaydet.Click += new System.EventHandler(this.btn_Kaydet_Click);
            // 
            // nud_OdaFiyati
            // 
            this.nud_OdaFiyati.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.nud_OdaFiyati.Location = new System.Drawing.Point(316, 32);
            this.nud_OdaFiyati.Name = "nud_OdaFiyati";
            this.nud_OdaFiyati.Size = new System.Drawing.Size(120, 26);
            this.nud_OdaFiyati.TabIndex = 16;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.data_Urunler);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.btn_Kaydet);
            this.groupBox1.Controls.Add(this.nud_UrunMiktari);
            this.groupBox1.Controls.Add(this.listView1);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.btn_SatisaEkle);
            this.groupBox1.Controls.Add(this.nud_UrunFiyati);
            this.groupBox1.Controls.Add(this.nud_Indirim);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Location = new System.Drawing.Point(12, 64);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1072, 518);
            this.groupBox1.TabIndex = 17;
            this.groupBox1.TabStop = false;
            // 
            // SatisForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1096, 590);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.nud_OdaFiyati);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cmb_Oda);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cmb_Musteri);
            this.Name = "SatisForm";
            this.Text = "SatisForm";
            this.Load += new System.EventHandler(this.SatisForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.data_Urunler)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nud_UrunMiktari)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nud_UrunFiyati)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nud_Indirim)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nud_OdaFiyati)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cmb_Musteri;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cmb_Oda;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView data_Urunler;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.NumericUpDown nud_UrunMiktari;
        private System.Windows.Forms.NumericUpDown nud_UrunFiyati;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.NumericUpDown nud_Indirim;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btn_SatisaEkle;
        private System.Windows.Forms.ListView listView1;
        private System.Windows.Forms.Button btn_Kaydet;
        private System.Windows.Forms.NumericUpDown nud_OdaFiyati;
        private System.Windows.Forms.ColumnHeader columnHeader1;
        private System.Windows.Forms.ColumnHeader columnHeader2;
        private System.Windows.Forms.ColumnHeader columnHeader3;
        private System.Windows.Forms.ColumnHeader columnHeader4;
        private System.Windows.Forms.ColumnHeader columnHeader5;
        private System.Windows.Forms.GroupBox groupBox1;
    }
}