namespace QL_Quanan
{
    partial class Form1
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnDelivery = new System.Windows.Forms.Button();
            this.btnEatIn = new System.Windows.Forms.Button();
            this.btnTakeAway = new System.Windows.Forms.Button();
            this.lblThucDon = new System.Windows.Forms.Label();
            this.pnlThucDon = new System.Windows.Forms.Panel();
            this.pnlMonChon = new System.Windows.Forms.Panel();
            this.lblTotal = new System.Windows.Forms.Label();
            this.lblOrderType = new System.Windows.Forms.Label();
            this.txtSoLuong = new System.Windows.Forms.TextBox();
            this.dgvMonChon = new System.Windows.Forms.DataGridView();
            this.Mon = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SoLuong = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DonGia = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ThanhTien = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.panel1.SuspendLayout();
            this.pnlMonChon.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMonChon)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Blue;
            this.panel1.Controls.Add(this.btnDelivery);
            this.panel1.Controls.Add(this.btnEatIn);
            this.panel1.Controls.Add(this.btnTakeAway);
            this.panel1.Controls.Add(this.lblThucDon);
            this.panel1.Controls.Add(this.pnlThucDon);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(515, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(327, 474);
            this.panel1.TabIndex = 3;
            // 
            // btnDelivery
            // 
            this.btnDelivery.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnDelivery.BackColor = System.Drawing.Color.Navy;
            this.btnDelivery.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.btnDelivery.FlatAppearance.BorderSize = 2;
            this.btnDelivery.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDelivery.Font = new System.Drawing.Font("Segoe UI", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnDelivery.ForeColor = System.Drawing.SystemColors.Control;
            this.btnDelivery.Location = new System.Drawing.Point(33, 383);
            this.btnDelivery.Name = "btnDelivery";
            this.btnDelivery.Size = new System.Drawing.Size(246, 61);
            this.btnDelivery.TabIndex = 2;
            this.btnDelivery.Text = "Delivery";
            this.btnDelivery.UseVisualStyleBackColor = false;
            // 
            // btnEatIn
            // 
            this.btnEatIn.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnEatIn.BackColor = System.Drawing.Color.Navy;
            this.btnEatIn.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.btnEatIn.FlatAppearance.BorderSize = 2;
            this.btnEatIn.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnEatIn.Font = new System.Drawing.Font("Segoe UI", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnEatIn.ForeColor = System.Drawing.SystemColors.Control;
            this.btnEatIn.Location = new System.Drawing.Point(159, 277);
            this.btnEatIn.Name = "btnEatIn";
            this.btnEatIn.Size = new System.Drawing.Size(120, 100);
            this.btnEatIn.TabIndex = 2;
            this.btnEatIn.Text = "Eat In";
            this.btnEatIn.UseVisualStyleBackColor = false;
            // 
            // btnTakeAway
            // 
            this.btnTakeAway.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnTakeAway.BackColor = System.Drawing.Color.Navy;
            this.btnTakeAway.FlatAppearance.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(128)))), ((int)(((byte)(128)))), ((int)(((byte)(255)))));
            this.btnTakeAway.FlatAppearance.BorderSize = 2;
            this.btnTakeAway.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnTakeAway.Font = new System.Drawing.Font("Segoe UI", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTakeAway.ForeColor = System.Drawing.SystemColors.Control;
            this.btnTakeAway.Location = new System.Drawing.Point(33, 277);
            this.btnTakeAway.Name = "btnTakeAway";
            this.btnTakeAway.Size = new System.Drawing.Size(120, 100);
            this.btnTakeAway.TabIndex = 2;
            this.btnTakeAway.Text = "Take Away";
            this.btnTakeAway.UseVisualStyleBackColor = false;
            // 
            // lblThucDon
            // 
            this.lblThucDon.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblThucDon.AutoSize = true;
            this.lblThucDon.BackColor = System.Drawing.Color.Blue;
            this.lblThucDon.Font = new System.Drawing.Font("Segoe UI", 28.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblThucDon.ForeColor = System.Drawing.Color.White;
            this.lblThucDon.Location = new System.Drawing.Point(76, 37);
            this.lblThucDon.Name = "lblThucDon";
            this.lblThucDon.Size = new System.Drawing.Size(238, 62);
            this.lblThucDon.TabIndex = 0;
            this.lblThucDon.Text = "Thực đơn";
            // 
            // pnlThucDon
            // 
            this.pnlThucDon.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnlThucDon.AutoScroll = true;
            this.pnlThucDon.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.pnlThucDon.Location = new System.Drawing.Point(33, 88);
            this.pnlThucDon.Name = "pnlThucDon";
            this.pnlThucDon.Size = new System.Drawing.Size(258, 161);
            this.pnlThucDon.TabIndex = 1;
            // 
            // pnlMonChon
            // 
            this.pnlMonChon.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.pnlMonChon.Controls.Add(this.lblTotal);
            this.pnlMonChon.Controls.Add(this.lblOrderType);
            this.pnlMonChon.Controls.Add(this.txtSoLuong);
            this.pnlMonChon.Controls.Add(this.dgvMonChon);
            this.pnlMonChon.Dock = System.Windows.Forms.DockStyle.Left;
            this.pnlMonChon.Location = new System.Drawing.Point(0, 0);
            this.pnlMonChon.Name = "pnlMonChon";
            this.pnlMonChon.Size = new System.Drawing.Size(515, 474);
            this.pnlMonChon.TabIndex = 2;
            // 
            // lblTotal
            // 
            this.lblTotal.AutoSize = true;
            this.lblTotal.Font = new System.Drawing.Font("Segoe UI Semibold", 19.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTotal.Location = new System.Drawing.Point(27, 371);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Size = new System.Drawing.Size(115, 45);
            this.lblTotal.TabIndex = 5;
            this.lblTotal.Text = "TOTAL";
            this.lblTotal.Visible = false;
            // 
            // lblOrderType
            // 
            this.lblOrderType.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblOrderType.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.lblOrderType.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.lblOrderType.Font = new System.Drawing.Font("Segoe UI", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblOrderType.ForeColor = System.Drawing.Color.Black;
            this.lblOrderType.Location = new System.Drawing.Point(132, 37);
            this.lblOrderType.Name = "lblOrderType";
            this.lblOrderType.Size = new System.Drawing.Size(257, 41);
            this.lblOrderType.TabIndex = 0;
            this.lblOrderType.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtSoLuong
            // 
            this.txtSoLuong.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.txtSoLuong.Font = new System.Drawing.Font("Segoe UI Black", 22.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSoLuong.Location = new System.Drawing.Point(406, 335);
            this.txtSoLuong.Name = "txtSoLuong";
            this.txtSoLuong.Size = new System.Drawing.Size(75, 57);
            this.txtSoLuong.TabIndex = 1;
            this.txtSoLuong.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // dgvMonChon
            // 
            this.dgvMonChon.AllowUserToAddRows = false;
            this.dgvMonChon.AllowUserToDeleteRows = false;
            this.dgvMonChon.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvMonChon.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvMonChon.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Mon,
            this.SoLuong,
            this.DonGia,
            this.ThanhTien});
            this.dgvMonChon.Location = new System.Drawing.Point(25, 88);
            this.dgvMonChon.Name = "dgvMonChon";
            this.dgvMonChon.RowHeadersWidth = 51;
            this.dgvMonChon.RowTemplate.Height = 24;
            this.dgvMonChon.Size = new System.Drawing.Size(460, 161);
            this.dgvMonChon.TabIndex = 0;
            // 
            // Mon
            // 
            this.Mon.HeaderText = "Món";
            this.Mon.MinimumWidth = 6;
            this.Mon.Name = "Mon";
            this.Mon.ReadOnly = true;
            this.Mon.Width = 137;
            // 
            // SoLuong
            // 
            this.SoLuong.HeaderText = "SL";
            this.SoLuong.MinimumWidth = 6;
            this.SoLuong.Name = "SoLuong";
            this.SoLuong.ReadOnly = true;
            this.SoLuong.Width = 35;
            // 
            // DonGia
            // 
            this.DonGia.HeaderText = "Đơn giá";
            this.DonGia.MinimumWidth = 6;
            this.DonGia.Name = "DonGia";
            this.DonGia.ReadOnly = true;
            this.DonGia.Width = 95;
            // 
            // ThanhTien
            // 
            this.ThanhTien.HeaderText = "Thành tiền";
            this.ThanhTien.MinimumWidth = 6;
            this.ThanhTien.Name = "ThanhTien";
            this.ThanhTien.ReadOnly = true;
            this.ThanhTien.Width = 140;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(842, 474);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pnlMonChon);
            this.Name = "Form1";
            this.Text = "frmGoiMon";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.pnlMonChon.ResumeLayout(false);
            this.pnlMonChon.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMonChon)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnDelivery;
        private System.Windows.Forms.Button btnEatIn;
        private System.Windows.Forms.Button btnTakeAway;
        private System.Windows.Forms.Label lblThucDon;
        private System.Windows.Forms.Panel pnlThucDon;
        private System.Windows.Forms.Panel pnlMonChon;
        private System.Windows.Forms.Label lblTotal;
        private System.Windows.Forms.Label lblOrderType;
        private System.Windows.Forms.TextBox txtSoLuong;
        private System.Windows.Forms.DataGridView dgvMonChon;
        private System.Windows.Forms.DataGridViewTextBoxColumn Mon;
        private System.Windows.Forms.DataGridViewTextBoxColumn SoLuong;
        private System.Windows.Forms.DataGridViewTextBoxColumn DonGia;
        private System.Windows.Forms.DataGridViewTextBoxColumn ThanhTien;
    }
}

