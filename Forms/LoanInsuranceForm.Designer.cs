﻿
namespace InsuranceApplication.Forms
{
    partial class LoanInsuranceForm
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(LoanInsuranceForm));
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.TxtPeriodInMonth = new System.Windows.Forms.TextBox();
            this.MaskStartingDate = new System.Windows.Forms.MaskedTextBox();
            this.BtnAddInsuranceCompany = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.TxtMaturatedAmount = new System.Windows.Forms.TextBox();
            this.ComboRelationship = new System.Windows.Forms.ComboBox();
            this.TxtMemberBenificiary = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.MaskRenewDate = new System.Windows.Forms.MaskedTextBox();
            this.TxtInsuranceCompanyName = new System.Windows.Forms.TextBox();
            this.BtnSearchLoanDetail = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnSearchInsuranceCompany = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.label15 = new System.Windows.Forms.Label();
            this.TxtInsuranceCompanySerialNo = new System.Windows.Forms.TextBox();
            this.ComboMemberGender = new System.Windows.Forms.ComboBox();
            this.label14 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.MaskMaturatedDate = new System.Windows.Forms.MaskedTextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.TxtPremium = new System.Windows.Forms.TextBox();
            this.TxtMemberAddress = new System.Windows.Forms.TextBox();
            this.TxtLoanAmount = new System.Windows.Forms.TextBox();
            this.TxtInsuranceAmount = new System.Windows.Forms.TextBox();
            this.TxtMemberName = new System.Windows.Forms.TextBox();
            this.TxtMembershipNo = new System.Windows.Forms.TextBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.BtnRenewInsurance = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnShowLoanDetail = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnDistributedAmount = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnDocumentDetails = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnSaveLoanDetail = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnUpdateLoanDetail = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnClearLoanDetail = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnDeleteLoanDetail = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnEditLoadDetail = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnAddLoanDetail = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.DataGridLoanDetailList = new System.Windows.Forms.DataGridView();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.LblCurrentTime = new System.Windows.Forms.Label();
            this.LblCurrentNepaliDate = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.label18 = new System.Windows.Forms.Label();
            this.BtnTransaction = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.ComboAction = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.TxtAmount = new System.Windows.Forms.TextBox();
            this.MaskEndOfDayTo = new System.Windows.Forms.MaskedTextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.MaskEndOfDayFrom = new System.Windows.Forms.MaskedTextBox();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.BtnImageDelete = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnImageAdd = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.PicBoxMemberImage = new System.Windows.Forms.PictureBox();
            this.OpenMemberImageDialog = new System.Windows.Forms.OpenFileDialog();
            this.Timer = new System.Windows.Forms.Timer(this.components);
            this.label20 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataGridLoanDetailList)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.groupBox4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PicBoxMemberImage)).BeginInit();
            this.SuspendLayout();
            // 
            // textBox1
            // 
            this.textBox1.BackColor = System.Drawing.SystemColors.Highlight;
            this.textBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold);
            this.textBox1.ForeColor = System.Drawing.Color.White;
            this.textBox1.Location = new System.Drawing.Point(0, 0);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(1359, 38);
            this.textBox1.TabIndex = 0;
            this.textBox1.Text = "                                                           \r\n\r\n \r\n";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label21);
            this.groupBox1.Controls.Add(this.TxtPeriodInMonth);
            this.groupBox1.Controls.Add(this.MaskStartingDate);
            this.groupBox1.Controls.Add(this.BtnAddInsuranceCompany);
            this.groupBox1.Controls.Add(this.TxtMaturatedAmount);
            this.groupBox1.Controls.Add(this.ComboRelationship);
            this.groupBox1.Controls.Add(this.TxtMemberBenificiary);
            this.groupBox1.Controls.Add(this.label17);
            this.groupBox1.Controls.Add(this.label16);
            this.groupBox1.Controls.Add(this.TxtInsuranceCompanyName);
            this.groupBox1.Controls.Add(this.TxtInsuranceCompanySerialNo);
            this.groupBox1.Controls.Add(this.MaskRenewDate);
            this.groupBox1.Controls.Add(this.label15);
            this.groupBox1.Controls.Add(this.BtnSearchLoanDetail);
            this.groupBox1.Controls.Add(this.BtnSearchInsuranceCompany);
            this.groupBox1.Controls.Add(this.ComboMemberGender);
            this.groupBox1.Controls.Add(this.label14);
            this.groupBox1.Controls.Add(this.label13);
            this.groupBox1.Controls.Add(this.label12);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.MaskMaturatedDate);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label11);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.TxtPremium);
            this.groupBox1.Controls.Add(this.TxtMemberAddress);
            this.groupBox1.Controls.Add(this.TxtLoanAmount);
            this.groupBox1.Controls.Add(this.TxtInsuranceAmount);
            this.groupBox1.Controls.Add(this.TxtMemberName);
            this.groupBox1.Controls.Add(this.TxtMembershipNo);
            this.groupBox1.Location = new System.Drawing.Point(11, 41);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1180, 140);
            this.groupBox1.TabIndex = 1;
            this.groupBox1.TabStop = false;
            // 
            // TxtPeriodInMonth
            // 
            this.TxtPeriodInMonth.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.TxtPeriodInMonth.Location = new System.Drawing.Point(604, 74);
            this.TxtPeriodInMonth.Name = "TxtPeriodInMonth";
            this.TxtPeriodInMonth.Size = new System.Drawing.Size(50, 26);
            this.TxtPeriodInMonth.TabIndex = 11;
            this.TxtPeriodInMonth.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.TxtPeriodInMonth.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.TxtPeriodInMonth_KeyPress);
            this.TxtPeriodInMonth.KeyUp += new System.Windows.Forms.KeyEventHandler(this.TxtPeriodInMonth_KeyUp);
            // 
            // MaskStartingDate
            // 
            this.MaskStartingDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.MaskStartingDate.Location = new System.Drawing.Point(347, 75);
            this.MaskStartingDate.Mask = "   0000-00-00";
            this.MaskStartingDate.Name = "MaskStartingDate";
            this.MaskStartingDate.Size = new System.Drawing.Size(125, 24);
            this.MaskStartingDate.TabIndex = 9;
            this.MaskStartingDate.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.MaskStartingDate.KeyUp += new System.Windows.Forms.KeyEventHandler(this.MaskStartingDate_KeyUp);
            // 
            // BtnAddInsuranceCompany
            // 
            this.BtnAddInsuranceCompany.BackColor = System.Drawing.Color.Red;
            this.BtnAddInsuranceCompany.BackgroundColor = System.Drawing.Color.Red;
            this.BtnAddInsuranceCompany.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnAddInsuranceCompany.BorderRadius = 30;
            this.BtnAddInsuranceCompany.BorderSize = 0;
            this.BtnAddInsuranceCompany.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnAddInsuranceCompany.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.BtnAddInsuranceCompany.ForeColor = System.Drawing.Color.White;
            this.BtnAddInsuranceCompany.Location = new System.Drawing.Point(1040, 13);
            this.BtnAddInsuranceCompany.Name = "BtnAddInsuranceCompany";
            this.BtnAddInsuranceCompany.Size = new System.Drawing.Size(120, 30);
            this.BtnAddInsuranceCompany.TabIndex = 44;
            this.BtnAddInsuranceCompany.Text = "Add Insurance";
            this.BtnAddInsuranceCompany.TextColor = System.Drawing.Color.White;
            this.BtnAddInsuranceCompany.UseVisualStyleBackColor = false;
            this.BtnAddInsuranceCompany.Click += new System.EventHandler(this.BtnAddInsuranceCompany_Click);
            // 
            // TxtMaturatedAmount
            // 
            this.TxtMaturatedAmount.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold);
            this.TxtMaturatedAmount.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.TxtMaturatedAmount.Location = new System.Drawing.Point(1038, 101);
            this.TxtMaturatedAmount.Name = "TxtMaturatedAmount";
            this.TxtMaturatedAmount.Size = new System.Drawing.Size(125, 26);
            this.TxtMaturatedAmount.TabIndex = 16;
            this.TxtMaturatedAmount.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.TxtMaturatedAmount.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.TxtMaturatedAmount_KeyPress);
            // 
            // ComboRelationship
            // 
            this.ComboRelationship.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.ComboRelationship.FormattingEnabled = true;
            this.ComboRelationship.Location = new System.Drawing.Point(1038, 45);
            this.ComboRelationship.Name = "ComboRelationship";
            this.ComboRelationship.Size = new System.Drawing.Size(125, 26);
            this.ComboRelationship.TabIndex = 7;
            this.ComboRelationship.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.ComboRelationship_KeyPress);
            // 
            // TxtMemberBenificiary
            // 
            this.TxtMemberBenificiary.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.TxtMemberBenificiary.Location = new System.Drawing.Point(739, 46);
            this.TxtMemberBenificiary.Name = "TxtMemberBenificiary";
            this.TxtMemberBenificiary.Size = new System.Drawing.Size(225, 26);
            this.TxtMemberBenificiary.TabIndex = 6;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label17.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label17.Location = new System.Drawing.Point(660, 50);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(75, 18);
            this.label17.TabIndex = 45;
            this.label17.Text = "Benificiary";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label16.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label16.Location = new System.Drawing.Point(977, 78);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(54, 18);
            this.label16.TabIndex = 44;
            this.label16.Text = "Renew";
            // 
            // MaskRenewDate
            // 
            this.MaskRenewDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.MaskRenewDate.Location = new System.Drawing.Point(1038, 74);
            this.MaskRenewDate.Mask = "   0000-00-00";
            this.MaskRenewDate.Name = "MaskRenewDate";
            this.MaskRenewDate.Size = new System.Drawing.Size(125, 24);
            this.MaskRenewDate.TabIndex = 10;
            this.MaskRenewDate.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // TxtInsuranceCompanyName
            // 
            this.TxtInsuranceCompanyName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold);
            this.TxtInsuranceCompanyName.Location = new System.Drawing.Point(543, 17);
            this.TxtInsuranceCompanyName.Name = "TxtInsuranceCompanyName";
            this.TxtInsuranceCompanyName.ReadOnly = true;
            this.TxtInsuranceCompanyName.Size = new System.Drawing.Size(345, 26);
            this.TxtInsuranceCompanyName.TabIndex = 1;
            // 
            // BtnSearchLoanDetail
            // 
            this.BtnSearchLoanDetail.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnSearchLoanDetail.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnSearchLoanDetail.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnSearchLoanDetail.BorderRadius = 15;
            this.BtnSearchLoanDetail.BorderSize = 0;
            this.BtnSearchLoanDetail.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSearchLoanDetail.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.BtnSearchLoanDetail.ForeColor = System.Drawing.Color.White;
            this.BtnSearchLoanDetail.Location = new System.Drawing.Point(246, 15);
            this.BtnSearchLoanDetail.Name = "BtnSearchLoanDetail";
            this.BtnSearchLoanDetail.Size = new System.Drawing.Size(76, 28);
            this.BtnSearchLoanDetail.TabIndex = 41;
            this.BtnSearchLoanDetail.Text = "Search";
            this.BtnSearchLoanDetail.TextColor = System.Drawing.Color.White;
            this.BtnSearchLoanDetail.UseVisualStyleBackColor = false;
            this.BtnSearchLoanDetail.Click += new System.EventHandler(this.BtnSearchLoanDetail_Click);
            // 
            // BtnSearchInsuranceCompany
            // 
            this.BtnSearchInsuranceCompany.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnSearchInsuranceCompany.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnSearchInsuranceCompany.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnSearchInsuranceCompany.BorderRadius = 15;
            this.BtnSearchInsuranceCompany.BorderSize = 0;
            this.BtnSearchInsuranceCompany.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSearchInsuranceCompany.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold);
            this.BtnSearchInsuranceCompany.ForeColor = System.Drawing.Color.White;
            this.BtnSearchInsuranceCompany.Location = new System.Drawing.Point(890, 15);
            this.BtnSearchInsuranceCompany.Name = "BtnSearchInsuranceCompany";
            this.BtnSearchInsuranceCompany.Size = new System.Drawing.Size(75, 28);
            this.BtnSearchInsuranceCompany.TabIndex = 2;
            this.BtnSearchInsuranceCompany.Text = "Search";
            this.BtnSearchInsuranceCompany.TextColor = System.Drawing.Color.White;
            this.BtnSearchInsuranceCompany.UseVisualStyleBackColor = false;
            this.BtnSearchInsuranceCompany.Click += new System.EventHandler(this.BtnSearchInsuranceCompany_Click);
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label15.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label15.Location = new System.Drawing.Point(331, 21);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(90, 18);
            this.label15.TabIndex = 35;
            this.label15.Text = "Insurance ID";
            // 
            // TxtInsuranceCompanySerialNo
            // 
            this.TxtInsuranceCompanySerialNo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold);
            this.TxtInsuranceCompanySerialNo.Location = new System.Drawing.Point(424, 17);
            this.TxtInsuranceCompanySerialNo.Name = "TxtInsuranceCompanySerialNo";
            this.TxtInsuranceCompanySerialNo.ReadOnly = true;
            this.TxtInsuranceCompanySerialNo.Size = new System.Drawing.Size(115, 26);
            this.TxtInsuranceCompanySerialNo.TabIndex = 0;
            this.TxtInsuranceCompanySerialNo.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // ComboMemberGender
            // 
            this.ComboMemberGender.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.ComboMemberGender.FormattingEnabled = true;
            this.ComboMemberGender.Location = new System.Drawing.Point(118, 74);
            this.ComboMemberGender.Name = "ComboMemberGender";
            this.ComboMemberGender.Size = new System.Drawing.Size(125, 26);
            this.ComboMemberGender.TabIndex = 8;
            this.ComboMemberGender.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.ComboMemberGender_KeyPress);
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label14.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label14.Location = new System.Drawing.Point(15, 79);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(57, 18);
            this.label14.TabIndex = 32;
            this.label14.Text = "Gender";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label13.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label13.Location = new System.Drawing.Point(488, 78);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(112, 18);
            this.label13.TabIndex = 31;
            this.label13.Text = "Period in Month";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold);
            this.label12.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(0)))));
            this.label12.Location = new System.Drawing.Point(889, 105);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(142, 20);
            this.label12.TabIndex = 28;
            this.label12.Text = "Matured Amount";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label8.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label8.Location = new System.Drawing.Point(271, 105);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(72, 18);
            this.label8.TabIndex = 11;
            this.label8.Text = "Premium ";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label7.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label7.Location = new System.Drawing.Point(473, 106);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(127, 18);
            this.label7.TabIndex = 10;
            this.label7.Text = "Insurance Amount";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label6.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label6.Location = new System.Drawing.Point(15, 105);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(96, 18);
            this.label6.TabIndex = 9;
            this.label6.Text = "Loan Amount";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label9.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label9.Location = new System.Drawing.Point(250, 78);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(93, 18);
            this.label9.TabIndex = 12;
            this.label9.Text = "Starting Date";
            // 
            // MaskMaturatedDate
            // 
            this.MaskMaturatedDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.MaskMaturatedDate.Location = new System.Drawing.Point(844, 75);
            this.MaskMaturatedDate.Mask = "   0000-00-00";
            this.MaskMaturatedDate.Name = "MaskMaturatedDate";
            this.MaskMaturatedDate.ReadOnly = true;
            this.MaskMaturatedDate.Size = new System.Drawing.Size(120, 24);
            this.MaskMaturatedDate.TabIndex = 12;
            this.MaskMaturatedDate.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label5.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label5.Location = new System.Drawing.Point(358, 49);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(62, 18);
            this.label5.TabIndex = 8;
            this.label5.Text = "Address";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label4.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label4.Location = new System.Drawing.Point(16, 51);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(48, 18);
            this.label4.TabIndex = 7;
            this.label4.Text = "Name";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label11.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label11.Location = new System.Drawing.Point(741, 78);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(97, 18);
            this.label11.TabIndex = 26;
            this.label11.Text = "Matured Date";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label1.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label1.Location = new System.Drawing.Point(17, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(85, 18);
            this.label1.TabIndex = 6;
            this.label1.Text = "Member ID ";
            // 
            // TxtPremium
            // 
            this.TxtPremium.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.TxtPremium.Location = new System.Drawing.Point(347, 102);
            this.TxtPremium.Name = "TxtPremium";
            this.TxtPremium.Size = new System.Drawing.Size(125, 26);
            this.TxtPremium.TabIndex = 14;
            this.TxtPremium.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.TxtPremium.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.TxtPremium_KeyPress);
            // 
            // TxtMemberAddress
            // 
            this.TxtMemberAddress.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.TxtMemberAddress.Location = new System.Drawing.Point(424, 46);
            this.TxtMemberAddress.Name = "TxtMemberAddress";
            this.TxtMemberAddress.Size = new System.Drawing.Size(230, 26);
            this.TxtMemberAddress.TabIndex = 5;
            // 
            // TxtLoanAmount
            // 
            this.TxtLoanAmount.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.TxtLoanAmount.Location = new System.Drawing.Point(118, 102);
            this.TxtLoanAmount.Name = "TxtLoanAmount";
            this.TxtLoanAmount.Size = new System.Drawing.Size(125, 26);
            this.TxtLoanAmount.TabIndex = 13;
            this.TxtLoanAmount.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.TxtLoanAmount.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.TxtLoanAmount_KeyPress);
            // 
            // TxtInsuranceAmount
            // 
            this.TxtInsuranceAmount.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.TxtInsuranceAmount.Location = new System.Drawing.Point(604, 102);
            this.TxtInsuranceAmount.Name = "TxtInsuranceAmount";
            this.TxtInsuranceAmount.Size = new System.Drawing.Size(125, 26);
            this.TxtInsuranceAmount.TabIndex = 15;
            this.TxtInsuranceAmount.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.TxtInsuranceAmount.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.TxtInsuranceAmount_KeyPress);
            // 
            // TxtMemberName
            // 
            this.TxtMemberName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.TxtMemberName.Location = new System.Drawing.Point(118, 46);
            this.TxtMemberName.Name = "TxtMemberName";
            this.TxtMemberName.Size = new System.Drawing.Size(225, 26);
            this.TxtMemberName.TabIndex = 4;
            // 
            // TxtMembershipNo
            // 
            this.TxtMembershipNo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold);
            this.TxtMembershipNo.Location = new System.Drawing.Point(119, 17);
            this.TxtMembershipNo.Name = "TxtMembershipNo";
            this.TxtMembershipNo.Size = new System.Drawing.Size(124, 26);
            this.TxtMembershipNo.TabIndex = 3;
            this.TxtMembershipNo.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.BtnRenewInsurance);
            this.groupBox2.Controls.Add(this.BtnShowLoanDetail);
            this.groupBox2.Controls.Add(this.BtnDistributedAmount);
            this.groupBox2.Controls.Add(this.BtnDocumentDetails);
            this.groupBox2.Controls.Add(this.BtnSaveLoanDetail);
            this.groupBox2.Controls.Add(this.BtnUpdateLoanDetail);
            this.groupBox2.Controls.Add(this.BtnClearLoanDetail);
            this.groupBox2.Controls.Add(this.BtnDeleteLoanDetail);
            this.groupBox2.Controls.Add(this.BtnEditLoadDetail);
            this.groupBox2.Controls.Add(this.BtnAddLoanDetail);
            this.groupBox2.Location = new System.Drawing.Point(1206, 220);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(130, 395);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            // 
            // BtnRenewInsurance
            // 
            this.BtnRenewInsurance.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnRenewInsurance.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnRenewInsurance.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnRenewInsurance.BorderRadius = 24;
            this.BtnRenewInsurance.BorderSize = 0;
            this.BtnRenewInsurance.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnRenewInsurance.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold);
            this.BtnRenewInsurance.ForeColor = System.Drawing.Color.White;
            this.BtnRenewInsurance.Location = new System.Drawing.Point(9, 246);
            this.BtnRenewInsurance.Name = "BtnRenewInsurance";
            this.BtnRenewInsurance.Size = new System.Drawing.Size(112, 32);
            this.BtnRenewInsurance.TabIndex = 37;
            this.BtnRenewInsurance.Text = "Renew";
            this.BtnRenewInsurance.TextColor = System.Drawing.Color.White;
            this.BtnRenewInsurance.UseVisualStyleBackColor = false;
            this.BtnRenewInsurance.Click += new System.EventHandler(this.BtnRenewInsurance_Click);
            // 
            // BtnShowLoanDetail
            // 
            this.BtnShowLoanDetail.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnShowLoanDetail.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnShowLoanDetail.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnShowLoanDetail.BorderRadius = 30;
            this.BtnShowLoanDetail.BorderSize = 0;
            this.BtnShowLoanDetail.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnShowLoanDetail.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.BtnShowLoanDetail.ForeColor = System.Drawing.Color.White;
            this.BtnShowLoanDetail.Location = new System.Drawing.Point(9, 15);
            this.BtnShowLoanDetail.Name = "BtnShowLoanDetail";
            this.BtnShowLoanDetail.Size = new System.Drawing.Size(112, 32);
            this.BtnShowLoanDetail.TabIndex = 30;
            this.BtnShowLoanDetail.Text = "Show Details";
            this.BtnShowLoanDetail.TextColor = System.Drawing.Color.White;
            this.BtnShowLoanDetail.UseVisualStyleBackColor = false;
            this.BtnShowLoanDetail.Click += new System.EventHandler(this.BtnShowLoanDetail_Click);
            // 
            // BtnDistributedAmount
            // 
            this.BtnDistributedAmount.BackColor = System.Drawing.Color.Red;
            this.BtnDistributedAmount.BackgroundColor = System.Drawing.Color.Red;
            this.BtnDistributedAmount.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.BtnDistributedAmount.BorderRadius = 35;
            this.BtnDistributedAmount.BorderSize = 0;
            this.BtnDistributedAmount.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnDistributedAmount.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.BtnDistributedAmount.ForeColor = System.Drawing.Color.White;
            this.BtnDistributedAmount.Location = new System.Drawing.Point(8, 326);
            this.BtnDistributedAmount.Name = "BtnDistributedAmount";
            this.BtnDistributedAmount.Size = new System.Drawing.Size(112, 46);
            this.BtnDistributedAmount.TabIndex = 39;
            this.BtnDistributedAmount.Text = "Distributed Amount";
            this.BtnDistributedAmount.TextColor = System.Drawing.Color.White;
            this.BtnDistributedAmount.UseVisualStyleBackColor = false;
            this.BtnDistributedAmount.Click += new System.EventHandler(this.BtnDistributedAmount_Click);
            // 
            // BtnDocumentDetails
            // 
            this.BtnDocumentDetails.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnDocumentDetails.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnDocumentDetails.BorderColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.BtnDocumentDetails.BorderRadius = 31;
            this.BtnDocumentDetails.BorderSize = 0;
            this.BtnDocumentDetails.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnDocumentDetails.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.BtnDocumentDetails.ForeColor = System.Drawing.Color.White;
            this.BtnDocumentDetails.Location = new System.Drawing.Point(8, 279);
            this.BtnDocumentDetails.Name = "BtnDocumentDetails";
            this.BtnDocumentDetails.Size = new System.Drawing.Size(112, 46);
            this.BtnDocumentDetails.TabIndex = 38;
            this.BtnDocumentDetails.Text = "Document Details";
            this.BtnDocumentDetails.TextColor = System.Drawing.Color.White;
            this.BtnDocumentDetails.UseVisualStyleBackColor = false;
            this.BtnDocumentDetails.Click += new System.EventHandler(this.BtnDocumentDetails_Click);
            // 
            // BtnSaveLoanDetail
            // 
            this.BtnSaveLoanDetail.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnSaveLoanDetail.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnSaveLoanDetail.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnSaveLoanDetail.BorderRadius = 30;
            this.BtnSaveLoanDetail.BorderSize = 0;
            this.BtnSaveLoanDetail.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSaveLoanDetail.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold);
            this.BtnSaveLoanDetail.ForeColor = System.Drawing.Color.White;
            this.BtnSaveLoanDetail.Location = new System.Drawing.Point(9, 81);
            this.BtnSaveLoanDetail.Name = "BtnSaveLoanDetail";
            this.BtnSaveLoanDetail.Size = new System.Drawing.Size(112, 32);
            this.BtnSaveLoanDetail.TabIndex = 32;
            this.BtnSaveLoanDetail.Text = "Save";
            this.BtnSaveLoanDetail.TextColor = System.Drawing.Color.White;
            this.BtnSaveLoanDetail.UseVisualStyleBackColor = false;
            this.BtnSaveLoanDetail.Click += new System.EventHandler(this.BtnSaveLoanDetail_Click);
            // 
            // BtnUpdateLoanDetail
            // 
            this.BtnUpdateLoanDetail.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnUpdateLoanDetail.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnUpdateLoanDetail.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnUpdateLoanDetail.BorderRadius = 30;
            this.BtnUpdateLoanDetail.BorderSize = 0;
            this.BtnUpdateLoanDetail.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnUpdateLoanDetail.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold);
            this.BtnUpdateLoanDetail.ForeColor = System.Drawing.Color.White;
            this.BtnUpdateLoanDetail.Location = new System.Drawing.Point(9, 147);
            this.BtnUpdateLoanDetail.Name = "BtnUpdateLoanDetail";
            this.BtnUpdateLoanDetail.Size = new System.Drawing.Size(112, 32);
            this.BtnUpdateLoanDetail.TabIndex = 34;
            this.BtnUpdateLoanDetail.Text = "Update";
            this.BtnUpdateLoanDetail.TextColor = System.Drawing.Color.White;
            this.BtnUpdateLoanDetail.UseVisualStyleBackColor = false;
            this.BtnUpdateLoanDetail.Click += new System.EventHandler(this.BtnUpdateLoanDetail_Click);
            // 
            // BtnClearLoanDetail
            // 
            this.BtnClearLoanDetail.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnClearLoanDetail.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnClearLoanDetail.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnClearLoanDetail.BorderRadius = 30;
            this.BtnClearLoanDetail.BorderSize = 0;
            this.BtnClearLoanDetail.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnClearLoanDetail.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold);
            this.BtnClearLoanDetail.ForeColor = System.Drawing.Color.White;
            this.BtnClearLoanDetail.Location = new System.Drawing.Point(9, 180);
            this.BtnClearLoanDetail.Name = "BtnClearLoanDetail";
            this.BtnClearLoanDetail.Size = new System.Drawing.Size(112, 32);
            this.BtnClearLoanDetail.TabIndex = 35;
            this.BtnClearLoanDetail.Text = "Clear";
            this.BtnClearLoanDetail.TextColor = System.Drawing.Color.White;
            this.BtnClearLoanDetail.UseVisualStyleBackColor = false;
            this.BtnClearLoanDetail.Click += new System.EventHandler(this.BtnClearLoanDetail_Click);
            // 
            // BtnDeleteLoanDetail
            // 
            this.BtnDeleteLoanDetail.BackColor = System.Drawing.Color.Red;
            this.BtnDeleteLoanDetail.BackgroundColor = System.Drawing.Color.Red;
            this.BtnDeleteLoanDetail.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnDeleteLoanDetail.BorderRadius = 30;
            this.BtnDeleteLoanDetail.BorderSize = 0;
            this.BtnDeleteLoanDetail.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnDeleteLoanDetail.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold);
            this.BtnDeleteLoanDetail.ForeColor = System.Drawing.Color.White;
            this.BtnDeleteLoanDetail.Location = new System.Drawing.Point(9, 213);
            this.BtnDeleteLoanDetail.Name = "BtnDeleteLoanDetail";
            this.BtnDeleteLoanDetail.Size = new System.Drawing.Size(112, 32);
            this.BtnDeleteLoanDetail.TabIndex = 36;
            this.BtnDeleteLoanDetail.Text = "Delete";
            this.BtnDeleteLoanDetail.TextColor = System.Drawing.Color.White;
            this.BtnDeleteLoanDetail.UseVisualStyleBackColor = false;
            this.BtnDeleteLoanDetail.Click += new System.EventHandler(this.BtnDeleteLoanDetail_Click);
            // 
            // BtnEditLoadDetail
            // 
            this.BtnEditLoadDetail.BackColor = System.Drawing.Color.Red;
            this.BtnEditLoadDetail.BackgroundColor = System.Drawing.Color.Red;
            this.BtnEditLoadDetail.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnEditLoadDetail.BorderRadius = 30;
            this.BtnEditLoadDetail.BorderSize = 0;
            this.BtnEditLoadDetail.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnEditLoadDetail.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold);
            this.BtnEditLoadDetail.ForeColor = System.Drawing.Color.White;
            this.BtnEditLoadDetail.Location = new System.Drawing.Point(9, 114);
            this.BtnEditLoadDetail.Name = "BtnEditLoadDetail";
            this.BtnEditLoadDetail.Size = new System.Drawing.Size(112, 32);
            this.BtnEditLoadDetail.TabIndex = 33;
            this.BtnEditLoadDetail.Text = "Edit";
            this.BtnEditLoadDetail.TextColor = System.Drawing.Color.White;
            this.BtnEditLoadDetail.UseVisualStyleBackColor = false;
            this.BtnEditLoadDetail.Click += new System.EventHandler(this.BtnEditLoadDetail_Click);
            // 
            // BtnAddLoanDetail
            // 
            this.BtnAddLoanDetail.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnAddLoanDetail.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnAddLoanDetail.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnAddLoanDetail.BorderRadius = 30;
            this.BtnAddLoanDetail.BorderSize = 0;
            this.BtnAddLoanDetail.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnAddLoanDetail.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold);
            this.BtnAddLoanDetail.ForeColor = System.Drawing.Color.White;
            this.BtnAddLoanDetail.Location = new System.Drawing.Point(10, 48);
            this.BtnAddLoanDetail.Name = "BtnAddLoanDetail";
            this.BtnAddLoanDetail.Size = new System.Drawing.Size(112, 32);
            this.BtnAddLoanDetail.TabIndex = 31;
            this.BtnAddLoanDetail.Text = "Add";
            this.BtnAddLoanDetail.TextColor = System.Drawing.Color.White;
            this.BtnAddLoanDetail.UseVisualStyleBackColor = false;
            this.BtnAddLoanDetail.Click += new System.EventHandler(this.BtnAddLoanDetail_Click);
            // 
            // DataGridLoanDetailList
            // 
            this.DataGridLoanDetailList.AllowUserToAddRows = false;
            this.DataGridLoanDetailList.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.DataGridLoanDetailList.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 9.75F);
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.DataGridLoanDetailList.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            this.DataGridLoanDetailList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 9.75F);
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.DataGridLoanDetailList.DefaultCellStyle = dataGridViewCellStyle2;
            this.DataGridLoanDetailList.Location = new System.Drawing.Point(10, 191);
            this.DataGridLoanDetailList.Name = "DataGridLoanDetailList";
            this.DataGridLoanDetailList.ReadOnly = true;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Segoe UI", 9.75F);
            dataGridViewCellStyle3.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.DataGridLoanDetailList.RowHeadersDefaultCellStyle = dataGridViewCellStyle3;
            this.DataGridLoanDetailList.Size = new System.Drawing.Size(1181, 428);
            this.DataGridLoanDetailList.TabIndex = 3;
            this.DataGridLoanDetailList.DataBindingComplete += new System.Windows.Forms.DataGridViewBindingCompleteEventHandler(this.DataGridLoanDetailList_DataBindingComplete);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.LblCurrentTime);
            this.groupBox3.Controls.Add(this.LblCurrentNepaliDate);
            this.groupBox3.Controls.Add(this.label19);
            this.groupBox3.Controls.Add(this.label18);
            this.groupBox3.Controls.Add(this.BtnTransaction);
            this.groupBox3.Controls.Add(this.ComboAction);
            this.groupBox3.Controls.Add(this.label3);
            this.groupBox3.Controls.Add(this.label2);
            this.groupBox3.Controls.Add(this.TxtAmount);
            this.groupBox3.Controls.Add(this.MaskEndOfDayTo);
            this.groupBox3.Controls.Add(this.label10);
            this.groupBox3.Controls.Add(this.MaskEndOfDayFrom);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F);
            this.groupBox3.ForeColor = System.Drawing.Color.Red;
            this.groupBox3.Location = new System.Drawing.Point(12, 622);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(1324, 52);
            this.groupBox3.TabIndex = 41;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Transaction";
            // 
            // LblCurrentTime
            // 
            this.LblCurrentTime.AutoSize = true;
            this.LblCurrentTime.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.LblCurrentTime.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.LblCurrentTime.Location = new System.Drawing.Point(1048, 22);
            this.LblCurrentTime.Name = "LblCurrentTime";
            this.LblCurrentTime.Size = new System.Drawing.Size(109, 18);
            this.LblCurrentTime.TabIndex = 1002;
            this.LblCurrentTime.Text = "LblCurrentTime";
            // 
            // LblCurrentNepaliDate
            // 
            this.LblCurrentNepaliDate.AutoSize = true;
            this.LblCurrentNepaliDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.LblCurrentNepaliDate.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.LblCurrentNepaliDate.Location = new System.Drawing.Point(120, 22);
            this.LblCurrentNepaliDate.Name = "LblCurrentNepaliDate";
            this.LblCurrentNepaliDate.Size = new System.Drawing.Size(148, 18);
            this.LblCurrentNepaliDate.TabIndex = 1001;
            this.LblCurrentNepaliDate.Text = "LblCurrentNepaliDate";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label19.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label19.Location = new System.Drawing.Point(1000, 22);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(49, 18);
            this.label19.TabIndex = 42;
            this.label19.Text = "Time :";
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label18.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label18.Location = new System.Drawing.Point(75, 22);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(47, 18);
            this.label18.TabIndex = 41;
            this.label18.Text = "Date :";
            // 
            // BtnTransaction
            // 
            this.BtnTransaction.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnTransaction.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnTransaction.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnTransaction.BorderRadius = 30;
            this.BtnTransaction.BorderSize = 0;
            this.BtnTransaction.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnTransaction.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold);
            this.BtnTransaction.ForeColor = System.Drawing.Color.White;
            this.BtnTransaction.Location = new System.Drawing.Point(1206, 15);
            this.BtnTransaction.Name = "BtnTransaction";
            this.BtnTransaction.Size = new System.Drawing.Size(111, 30);
            this.BtnTransaction.TabIndex = 40;
            this.BtnTransaction.Text = "Transaction";
            this.BtnTransaction.TextColor = System.Drawing.Color.White;
            this.BtnTransaction.UseVisualStyleBackColor = false;
            // 
            // ComboAction
            // 
            this.ComboAction.Enabled = false;
            this.ComboAction.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F);
            this.ComboAction.FormattingEnabled = true;
            this.ComboAction.Items.AddRange(new object[] {
            "Matured",
            "Running"});
            this.ComboAction.Location = new System.Drawing.Point(637, 19);
            this.ComboAction.Name = "ComboAction";
            this.ComboAction.Size = new System.Drawing.Size(120, 24);
            this.ComboAction.TabIndex = 22;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label3.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label3.Location = new System.Drawing.Point(461, 22);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 18);
            this.label3.TabIndex = 2;
            this.label3.Text = "Date To ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label2.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label2.Location = new System.Drawing.Point(265, 22);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(83, 18);
            this.label2.TabIndex = 1;
            this.label2.Text = "Date From ";
            // 
            // TxtAmount
            // 
            this.TxtAmount.BackColor = System.Drawing.Color.WhiteSmoke;
            this.TxtAmount.Enabled = false;
            this.TxtAmount.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F);
            this.TxtAmount.Location = new System.Drawing.Point(870, 19);
            this.TxtAmount.Name = "TxtAmount";
            this.TxtAmount.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.TxtAmount.Size = new System.Drawing.Size(117, 26);
            this.TxtAmount.TabIndex = 10;
            this.TxtAmount.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // MaskEndOfDayTo
            // 
            this.MaskEndOfDayTo.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.MaskEndOfDayTo.Location = new System.Drawing.Point(529, 19);
            this.MaskEndOfDayTo.Mask = "   0000-00-00";
            this.MaskEndOfDayTo.Name = "MaskEndOfDayTo";
            this.MaskEndOfDayTo.Size = new System.Drawing.Size(105, 24);
            this.MaskEndOfDayTo.TabIndex = 24;
            this.MaskEndOfDayTo.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label10.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label10.Location = new System.Drawing.Point(767, 23);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(100, 18);
            this.label10.TabIndex = 11;
            this.label10.Text = "Total Member";
            // 
            // MaskEndOfDayFrom
            // 
            this.MaskEndOfDayFrom.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.MaskEndOfDayFrom.Location = new System.Drawing.Point(350, 19);
            this.MaskEndOfDayFrom.Mask = "   0000-00-00";
            this.MaskEndOfDayFrom.Name = "MaskEndOfDayFrom";
            this.MaskEndOfDayFrom.Size = new System.Drawing.Size(105, 24);
            this.MaskEndOfDayFrom.TabIndex = 22;
            this.MaskEndOfDayFrom.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.PicBoxMemberImage);
            this.groupBox4.Location = new System.Drawing.Point(1206, 42);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(130, 140);
            this.groupBox4.TabIndex = 42;
            this.groupBox4.TabStop = false;
            // 
            // BtnImageDelete
            // 
            this.BtnImageDelete.BackColor = System.Drawing.Color.Red;
            this.BtnImageDelete.BackgroundColor = System.Drawing.Color.Red;
            this.BtnImageDelete.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnImageDelete.BorderRadius = 23;
            this.BtnImageDelete.BorderSize = 0;
            this.BtnImageDelete.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnImageDelete.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F);
            this.BtnImageDelete.ForeColor = System.Drawing.Color.White;
            this.BtnImageDelete.Location = new System.Drawing.Point(1274, 191);
            this.BtnImageDelete.Name = "BtnImageDelete";
            this.BtnImageDelete.Size = new System.Drawing.Size(55, 25);
            this.BtnImageDelete.TabIndex = 40;
            this.BtnImageDelete.Text = "Delete";
            this.BtnImageDelete.TextColor = System.Drawing.Color.White;
            this.BtnImageDelete.UseVisualStyleBackColor = false;
            this.BtnImageDelete.Click += new System.EventHandler(this.BtnImageDelete_Click);
            // 
            // BtnImageAdd
            // 
            this.BtnImageAdd.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnImageAdd.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnImageAdd.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnImageAdd.BorderRadius = 23;
            this.BtnImageAdd.BorderSize = 0;
            this.BtnImageAdd.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnImageAdd.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F);
            this.BtnImageAdd.ForeColor = System.Drawing.Color.White;
            this.BtnImageAdd.Location = new System.Drawing.Point(1218, 191);
            this.BtnImageAdd.Name = "BtnImageAdd";
            this.BtnImageAdd.Size = new System.Drawing.Size(55, 25);
            this.BtnImageAdd.TabIndex = 40;
            this.BtnImageAdd.Text = "Add";
            this.BtnImageAdd.TextColor = System.Drawing.Color.White;
            this.BtnImageAdd.UseVisualStyleBackColor = false;
            this.BtnImageAdd.Click += new System.EventHandler(this.BtnImageAdd_Click);
            // 
            // PicBoxMemberImage
            // 
            this.PicBoxMemberImage.Image = ((System.Drawing.Image)(resources.GetObject("PicBoxMemberImage.Image")));
            this.PicBoxMemberImage.Location = new System.Drawing.Point(6, 9);
            this.PicBoxMemberImage.Name = "PicBoxMemberImage";
            this.PicBoxMemberImage.Size = new System.Drawing.Size(120, 129);
            this.PicBoxMemberImage.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.PicBoxMemberImage.TabIndex = 0;
            this.PicBoxMemberImage.TabStop = false;
            // 
            // OpenMemberImageDialog
            // 
            this.OpenMemberImageDialog.FileOk += new System.ComponentModel.CancelEventHandler(this.OpenMemberImageDialog_FileOk);
            // 
            // Timer
            // 
            this.Timer.Enabled = true;
            this.Timer.Interval = 1000;
            this.Timer.Tick += new System.EventHandler(this.Timer_Tick);
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.BackColor = System.Drawing.SystemColors.Highlight;
            this.label20.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold);
            this.label20.ForeColor = System.Drawing.Color.White;
            this.label20.Location = new System.Drawing.Point(548, 6);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(316, 25);
            this.label20.TabIndex = 43;
            this.label20.Text = "Loan Insurance Management";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F);
            this.label21.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label21.Location = new System.Drawing.Point(970, 50);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(62, 18);
            this.label21.TabIndex = 46;
            this.label21.Text = "Relation";
            // 
            // LoanInsuranceForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.ClientSize = new System.Drawing.Size(1354, 688);
            this.Controls.Add(this.BtnImageDelete);
            this.Controls.Add(this.label20);
            this.Controls.Add(this.BtnImageAdd);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.DataGridLoanDetailList);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.textBox1);
            this.Name = "LoanInsuranceForm";
            this.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "             Samyukta Manab Saving & Credit Co-operative Ltd.";
            this.Load += new System.EventHandler(this.DashboardForm_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.DataGridLoanDetailList)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.PicBoxMemberImage)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView DataGridLoanDetailList;
        private CustomControls.Button.CustomButton BtnUpdateLoanDetail;
        private CustomControls.Button.CustomButton BtnClearLoanDetail;
        private CustomControls.Button.CustomButton BtnDeleteLoanDetail;
        private CustomControls.Button.CustomButton BtnEditLoadDetail;
        private CustomControls.Button.CustomButton BtnShowLoanDetail;
        private CustomControls.Button.CustomButton BtnAddLoanDetail;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.MaskedTextBox MaskMaturatedDate;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox TxtPremium;
        private System.Windows.Forms.TextBox TxtMemberAddress;
        private System.Windows.Forms.TextBox TxtLoanAmount;
        private System.Windows.Forms.TextBox TxtInsuranceAmount;
        private System.Windows.Forms.TextBox TxtMemberName;
        private System.Windows.Forms.TextBox TxtMembershipNo;
        private CustomControls.Button.CustomButton BtnSaveLoanDetail;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.ComboBox ComboAction;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox TxtAmount;
        private System.Windows.Forms.MaskedTextBox MaskEndOfDayTo;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.MaskedTextBox MaskEndOfDayFrom;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.ComboBox ComboMemberGender;
        private CustomControls.Button.CustomButton BtnDocumentDetails;
        private CustomControls.Button.CustomButton BtnSearchLoanDetail;
        private CustomControls.Button.CustomButton BtnSearchInsuranceCompany;
        private CustomControls.Button.CustomButton BtnDistributedAmount;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TextBox TxtInsuranceCompanySerialNo;
        private System.Windows.Forms.TextBox TxtInsuranceCompanyName;
        private CustomControls.Button.CustomButton BtnRenewInsurance;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.MaskedTextBox MaskRenewDate;
        private System.Windows.Forms.TextBox TxtMaturatedAmount;
        private System.Windows.Forms.ComboBox ComboRelationship;
        private System.Windows.Forms.TextBox TxtMemberBenificiary;
        private System.Windows.Forms.Label label17;
        private CustomControls.Button.CustomButton BtnTransaction;
        private CustomControls.Button.CustomButton BtnAddInsuranceCompany;
        private System.Windows.Forms.MaskedTextBox MaskStartingDate;
        private System.Windows.Forms.PictureBox PicBoxMemberImage;
        private System.Windows.Forms.TextBox TxtPeriodInMonth;
        private CustomControls.Button.CustomButton BtnImageDelete;
        private CustomControls.Button.CustomButton BtnImageAdd;
        private System.Windows.Forms.OpenFileDialog OpenMemberImageDialog;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label LblCurrentNepaliDate;
        private System.Windows.Forms.Label LblCurrentTime;
        private System.Windows.Forms.Timer Timer;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Label label21;
    }
}