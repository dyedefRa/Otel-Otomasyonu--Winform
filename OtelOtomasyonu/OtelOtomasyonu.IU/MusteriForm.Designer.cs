namespace OtelOtomasyonu.IU
{
    partial class MusteriForm
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
            this.label9 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.date_DogumTarihi = new System.Windows.Forms.DateTimePicker();
            this.msk_TelNo = new System.Windows.Forms.MaskedTextBox();
            this.msk_TC = new System.Windows.Forms.MaskedTextBox();
            this.txt_Soyadi = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.btn_Ekle = new System.Windows.Forms.Button();
            this.txt_Adi = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_SirketAdi = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.cmb_Cinsiyet = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.cmb_MedeniDurum = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label9.Location = new System.Drawing.Point(4, 253);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(129, 20);
            this.label9.TabIndex = 73;
            this.label9.Text = "Medeni Durum :";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label6.Location = new System.Drawing.Point(14, 190);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(120, 20);
            this.label6.TabIndex = 69;
            this.label6.Text = "Doğum Tarihi :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.Location = new System.Drawing.Point(54, 159);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(80, 20);
            this.label5.TabIndex = 68;
            this.label5.Text = "Telefon *:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.Location = new System.Drawing.Point(67, 124);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(67, 20);
            this.label4.TabIndex = 67;
            this.label4.Text = "TC No :";
            // 
            // date_DogumTarihi
            // 
            this.date_DogumTarihi.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.date_DogumTarihi.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.date_DogumTarihi.Location = new System.Drawing.Point(150, 185);
            this.date_DogumTarihi.Name = "date_DogumTarihi";
            this.date_DogumTarihi.Size = new System.Drawing.Size(332, 26);
            this.date_DogumTarihi.TabIndex = 66;
            // 
            // msk_TelNo
            // 
            this.msk_TelNo.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.msk_TelNo.Location = new System.Drawing.Point(151, 153);
            this.msk_TelNo.Mask = "(599) 000-0000";
            this.msk_TelNo.Name = "msk_TelNo";
            this.msk_TelNo.Size = new System.Drawing.Size(331, 26);
            this.msk_TelNo.TabIndex = 65;
            // 
            // msk_TC
            // 
            this.msk_TC.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.msk_TC.Location = new System.Drawing.Point(151, 121);
            this.msk_TC.Mask = "00000000000";
            this.msk_TC.Name = "msk_TC";
            this.msk_TC.Size = new System.Drawing.Size(331, 26);
            this.msk_TC.TabIndex = 64;
            // 
            // txt_Soyadi
            // 
            this.txt_Soyadi.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txt_Soyadi.Location = new System.Drawing.Point(151, 63);
            this.txt_Soyadi.Name = "txt_Soyadi";
            this.txt_Soyadi.Size = new System.Drawing.Size(333, 23);
            this.txt_Soyadi.TabIndex = 63;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(62, 66);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(75, 20);
            this.label2.TabIndex = 62;
            this.label2.Text = "Soyadı *:";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(512, 12);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataGridView1.Size = new System.Drawing.Size(709, 403);
            this.dataGridView1.TabIndex = 61;
            // 
            // btn_Ekle
            // 
            this.btn_Ekle.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.btn_Ekle.Location = new System.Drawing.Point(91, 341);
            this.btn_Ekle.Name = "btn_Ekle";
            this.btn_Ekle.Size = new System.Drawing.Size(334, 74);
            this.btn_Ekle.TabIndex = 60;
            this.btn_Ekle.Text = "EKLE";
            this.btn_Ekle.UseVisualStyleBackColor = true;
            this.btn_Ekle.Click += new System.EventHandler(this.btn_Ekle_Click);
            // 
            // txt_Adi
            // 
            this.txt_Adi.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txt_Adi.Location = new System.Drawing.Point(151, 34);
            this.txt_Adi.Name = "txt_Adi";
            this.txt_Adi.Size = new System.Drawing.Size(333, 23);
            this.txt_Adi.TabIndex = 59;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(27, 37);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(110, 20);
            this.label1.TabIndex = 58;
            this.label1.Text = "Müşteri Adı *:";
            // 
            // txt_SirketAdi
            // 
            this.txt_SirketAdi.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.txt_SirketAdi.Location = new System.Drawing.Point(150, 92);
            this.txt_SirketAdi.Name = "txt_SirketAdi";
            this.txt_SirketAdi.Size = new System.Drawing.Size(333, 23);
            this.txt_SirketAdi.TabIndex = 81;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label11.Location = new System.Drawing.Point(43, 95);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(91, 20);
            this.label11.TabIndex = 80;
            this.label11.Text = "Şirket Adı :";
            // 
            // cmb_Cinsiyet
            // 
            this.cmb_Cinsiyet.DisplayMember = "1";
            this.cmb_Cinsiyet.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmb_Cinsiyet.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.cmb_Cinsiyet.FormattingEnabled = true;
            this.cmb_Cinsiyet.Items.AddRange(new object[] {
            "Kadın",
            "Erkek"});
            this.cmb_Cinsiyet.Location = new System.Drawing.Point(151, 217);
            this.cmb_Cinsiyet.Name = "cmb_Cinsiyet";
            this.cmb_Cinsiyet.Size = new System.Drawing.Size(333, 24);
            this.cmb_Cinsiyet.TabIndex = 84;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.Location = new System.Drawing.Point(54, 221);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(79, 20);
            this.label3.TabIndex = 83;
            this.label3.Text = "Cinsiyet :";
            // 
            // cmb_MedeniDurum
            // 
            this.cmb_MedeniDurum.DisplayMember = "1";
            this.cmb_MedeniDurum.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmb_MedeniDurum.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.cmb_MedeniDurum.FormattingEnabled = true;
            this.cmb_MedeniDurum.Items.AddRange(new object[] {
            "Bekar",
            "Evli"});
            this.cmb_MedeniDurum.Location = new System.Drawing.Point(149, 253);
            this.cmb_MedeniDurum.Name = "cmb_MedeniDurum";
            this.cmb_MedeniDurum.Size = new System.Drawing.Size(333, 24);
            this.cmb_MedeniDurum.TabIndex = 85;
            // 
            // MusteriForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1233, 443);
            this.Controls.Add(this.cmb_MedeniDurum);
            this.Controls.Add(this.cmb_Cinsiyet);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txt_SirketAdi);
            this.Controls.Add(this.label11);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.date_DogumTarihi);
            this.Controls.Add(this.msk_TelNo);
            this.Controls.Add(this.msk_TC);
            this.Controls.Add(this.txt_Soyadi);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.btn_Ekle);
            this.Controls.Add(this.txt_Adi);
            this.Controls.Add(this.label1);
            this.Name = "MusteriForm";
            this.Text = "MusteriForm";
            this.Load += new System.EventHandler(this.MusteriForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker date_DogumTarihi;
        private System.Windows.Forms.MaskedTextBox msk_TelNo;
        private System.Windows.Forms.MaskedTextBox msk_TC;
        private System.Windows.Forms.TextBox txt_Soyadi;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btn_Ekle;
        private System.Windows.Forms.TextBox txt_Adi;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_SirketAdi;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.ComboBox cmb_Cinsiyet;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmb_MedeniDurum;
    }
}