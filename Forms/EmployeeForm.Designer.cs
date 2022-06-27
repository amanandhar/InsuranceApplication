﻿
namespace InsuranceApplication.Forms
{
    partial class EmployeeForm
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(EmployeeForm));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.ComboGender = new System.Windows.Forms.ComboBox();
            this.BtnSearchEmployee = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.label15 = new System.Windows.Forms.Label();
            this.TxtBoxCitizenshipNo = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.TxtBoxContactNo = new System.Windows.Forms.TextBox();
            this.TxtBoxEmployeeName = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.TxtBoxEmployeeId = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.BtnEditEmployee = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnAddEmployee = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.PicBoxPhoto = new System.Windows.Forms.PictureBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.BtnClearAll = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnSaveEmployee = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnDeleteEmployee = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnUpdateEmployee = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label19 = new System.Windows.Forms.Label();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.LblCurrentTime = new System.Windows.Forms.Label();
            this.LblCurrentNepaliDate = new System.Windows.Forms.Label();
            this.label24 = new System.Windows.Forms.Label();
            this.label23 = new System.Windows.Forms.Label();
            this.ComboFilter = new System.Windows.Forms.ComboBox();
            this.BtnShowDetails = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.label18 = new System.Windows.Forms.Label();
            this.label20 = new System.Windows.Forms.Label();
            this.label21 = new System.Windows.Forms.Label();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.MaskDOB = new System.Windows.Forms.MaskedTextBox();
            this.maskedTextBox2 = new System.Windows.Forms.MaskedTextBox();
            this.TxtBoxEmail = new System.Windows.Forms.TextBox();
            this.TxtBoxPermAddress = new System.Windows.Forms.TextBox();
            this.TxtBoxAge = new System.Windows.Forms.TextBox();
            this.TxtBoxTempAddress = new System.Windows.Forms.TextBox();
            this.TxtBoxEducation = new System.Windows.Forms.TextBox();
            this.groupBox7 = new System.Windows.Forms.GroupBox();
            this.ComboMaritalStatus = new System.Windows.Forms.ComboBox();
            this.TxtBoxFatherName = new System.Windows.Forms.TextBox();
            this.TxtBoxMotherName = new System.Windows.Forms.TextBox();
            this.TxtBoxSpouseName = new System.Windows.Forms.TextBox();
            this.TxtBoxBloodGroup = new System.Windows.Forms.TextBox();
            this.groupBox8 = new System.Windows.Forms.GroupBox();
            this.MaskResignationDate = new System.Windows.Forms.MaskedTextBox();
            this.MaskAppointedDate = new System.Windows.Forms.MaskedTextBox();
            this.BtnSalaryDetails = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.ComboPostStatus = new System.Windows.Forms.ComboBox();
            this.TxtBoxPost = new System.Windows.Forms.TextBox();
            this.label22 = new System.Windows.Forms.Label();
            this.DataGridEmployeeList = new System.Windows.Forms.DataGridView();
            this.BtnAddImage = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.BtnDeleteImage = new InsuranceApplication.CustomControls.Button.CustomButton();
            this.OpenFileDialog = new System.Windows.Forms.OpenFileDialog();
            this.Timer = new System.Windows.Forms.Timer(this.components);
            this.ErrorProvider = new System.Windows.Forms.ErrorProvider(this.components);
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.PicBoxPhoto)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.groupBox6.SuspendLayout();
            this.groupBox7.SuspendLayout();
            this.groupBox8.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataGridEmployeeList)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ErrorProvider)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.ComboGender);
            this.groupBox1.Controls.Add(this.BtnSearchEmployee);
            this.groupBox1.Controls.Add(this.label15);
            this.groupBox1.Controls.Add(this.TxtBoxCitizenshipNo);
            this.groupBox1.Controls.Add(this.label17);
            this.groupBox1.Controls.Add(this.TxtBoxContactNo);
            this.groupBox1.Controls.Add(this.TxtBoxEmployeeName);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.TxtBoxEmployeeId);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.ForeColor = System.Drawing.Color.Red;
            this.groupBox1.Location = new System.Drawing.Point(10, 36);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(313, 168);
            this.groupBox1.TabIndex = 1000;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Employee Details";
            // 
            // ComboGender
            // 
            this.ComboGender.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.ComboGender.FormattingEnabled = true;
            this.ComboGender.Items.AddRange(new object[] {
            "Male ",
            "Female"});
            this.ComboGender.Location = new System.Drawing.Point(112, 135);
            this.ComboGender.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.ComboGender.Name = "ComboGender";
            this.ComboGender.Size = new System.Drawing.Size(175, 26);
            this.ComboGender.TabIndex = 5;
            this.ComboGender.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.ComboGender_KeyPress);
            // 
            // BtnSearchEmployee
            // 
            this.BtnSearchEmployee.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnSearchEmployee.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnSearchEmployee.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnSearchEmployee.BorderRadius = 15;
            this.BtnSearchEmployee.BorderSize = 0;
            this.BtnSearchEmployee.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSearchEmployee.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnSearchEmployee.ForeColor = System.Drawing.Color.White;
            this.BtnSearchEmployee.Location = new System.Drawing.Point(217, 15);
            this.BtnSearchEmployee.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSearchEmployee.Name = "BtnSearchEmployee";
            this.BtnSearchEmployee.Size = new System.Drawing.Size(70, 27);
            this.BtnSearchEmployee.TabIndex = 1;
            this.BtnSearchEmployee.Text = "Search";
            this.BtnSearchEmployee.TextColor = System.Drawing.Color.White;
            this.BtnSearchEmployee.UseVisualStyleBackColor = false;
            this.BtnSearchEmployee.Click += new System.EventHandler(this.BtnSearchEmployee_Click);
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label15.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label15.Location = new System.Drawing.Point(4, 109);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(108, 18);
            this.label15.TabIndex = 1000;
            this.label15.Text = "Citizenship No.";
            // 
            // TxtBoxCitizenshipNo
            // 
            this.TxtBoxCitizenshipNo.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxCitizenshipNo.Location = new System.Drawing.Point(112, 105);
            this.TxtBoxCitizenshipNo.Name = "TxtBoxCitizenshipNo";
            this.TxtBoxCitizenshipNo.Size = new System.Drawing.Size(175, 27);
            this.TxtBoxCitizenshipNo.TabIndex = 4;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label17.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label17.Location = new System.Drawing.Point(6, 139);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(57, 18);
            this.label17.TabIndex = 1000;
            this.label17.Text = "Gender";
            // 
            // TxtBoxContactNo
            // 
            this.TxtBoxContactNo.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxContactNo.Location = new System.Drawing.Point(112, 75);
            this.TxtBoxContactNo.Name = "TxtBoxContactNo";
            this.TxtBoxContactNo.Size = new System.Drawing.Size(175, 27);
            this.TxtBoxContactNo.TabIndex = 3;
            this.TxtBoxContactNo.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.TxtBoxContactNo.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.TxtBoxContactNo_KeyPress);
            // 
            // TxtBoxEmployeeName
            // 
            this.TxtBoxEmployeeName.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxEmployeeName.Location = new System.Drawing.Point(112, 45);
            this.TxtBoxEmployeeName.Name = "TxtBoxEmployeeName";
            this.TxtBoxEmployeeName.Size = new System.Drawing.Size(175, 27);
            this.TxtBoxEmployeeName.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label1.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label1.Location = new System.Drawing.Point(4, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(92, 18);
            this.label1.TabIndex = 1000;
            this.label1.Text = "Employee ID";
            // 
            // TxtBoxEmployeeId
            // 
            this.TxtBoxEmployeeId.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxEmployeeId.Location = new System.Drawing.Point(112, 15);
            this.TxtBoxEmployeeId.Name = "TxtBoxEmployeeId";
            this.TxtBoxEmployeeId.Size = new System.Drawing.Size(95, 27);
            this.TxtBoxEmployeeId.TabIndex = 0;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label3.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label3.Location = new System.Drawing.Point(4, 50);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(48, 18);
            this.label3.TabIndex = 1000;
            this.label3.Text = "Name";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label6.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label6.Location = new System.Drawing.Point(4, 79);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(88, 18);
            this.label6.TabIndex = 1000;
            this.label6.Text = "Contact No.";
            // 
            // BtnEditEmployee
            // 
            this.BtnEditEmployee.BackColor = System.Drawing.Color.Red;
            this.BtnEditEmployee.BackgroundColor = System.Drawing.Color.Red;
            this.BtnEditEmployee.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnEditEmployee.BorderRadius = 35;
            this.BtnEditEmployee.BorderSize = 0;
            this.BtnEditEmployee.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnEditEmployee.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnEditEmployee.ForeColor = System.Drawing.Color.White;
            this.BtnEditEmployee.Location = new System.Drawing.Point(12, 101);
            this.BtnEditEmployee.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnEditEmployee.Name = "BtnEditEmployee";
            this.BtnEditEmployee.Size = new System.Drawing.Size(129, 40);
            this.BtnEditEmployee.TabIndex = 26;
            this.BtnEditEmployee.Text = "Edit";
            this.BtnEditEmployee.TextColor = System.Drawing.Color.White;
            this.BtnEditEmployee.UseVisualStyleBackColor = false;
            this.BtnEditEmployee.Click += new System.EventHandler(this.BtnEditEmployee_Click);
            // 
            // BtnAddEmployee
            // 
            this.BtnAddEmployee.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnAddEmployee.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnAddEmployee.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnAddEmployee.BorderRadius = 35;
            this.BtnAddEmployee.BorderSize = 0;
            this.BtnAddEmployee.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnAddEmployee.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnAddEmployee.ForeColor = System.Drawing.Color.White;
            this.BtnAddEmployee.Location = new System.Drawing.Point(13, 19);
            this.BtnAddEmployee.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnAddEmployee.Name = "BtnAddEmployee";
            this.BtnAddEmployee.Size = new System.Drawing.Size(129, 40);
            this.BtnAddEmployee.TabIndex = 24;
            this.BtnAddEmployee.Text = "Add New";
            this.BtnAddEmployee.TextColor = System.Drawing.Color.White;
            this.BtnAddEmployee.UseVisualStyleBackColor = false;
            this.BtnAddEmployee.Click += new System.EventHandler(this.BtnAddEmployee_Click);
            // 
            // textBox2
            // 
            this.textBox2.BackColor = System.Drawing.SystemColors.Highlight;
            this.textBox2.Font = new System.Drawing.Font("Segoe UI", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.textBox2.Location = new System.Drawing.Point(0, 0);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(1362, 35);
            this.textBox2.TabIndex = 1000;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.SystemColors.Highlight;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 12.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.label2.ForeColor = System.Drawing.Color.White;
            this.label2.Location = new System.Drawing.Point(260, 5);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(569, 23);
            this.label2.TabIndex = 1000;
            this.label2.Text = "                                                              Employee Details Ma" +
    "nagement";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.PicBoxPhoto);
            this.groupBox2.Location = new System.Drawing.Point(1187, 204);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(155, 157);
            this.groupBox2.TabIndex = 1000;
            this.groupBox2.TabStop = false;
            // 
            // PicBoxPhoto
            // 
            this.PicBoxPhoto.Image = ((System.Drawing.Image)(resources.GetObject("PicBoxPhoto.Image")));
            this.PicBoxPhoto.InitialImage = ((System.Drawing.Image)(resources.GetObject("PicBoxPhoto.InitialImage")));
            this.PicBoxPhoto.Location = new System.Drawing.Point(6, 11);
            this.PicBoxPhoto.Name = "PicBoxPhoto";
            this.PicBoxPhoto.Size = new System.Drawing.Size(141, 140);
            this.PicBoxPhoto.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.PicBoxPhoto.TabIndex = 0;
            this.PicBoxPhoto.TabStop = false;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.BtnClearAll);
            this.groupBox3.Controls.Add(this.BtnSaveEmployee);
            this.groupBox3.Controls.Add(this.BtnDeleteEmployee);
            this.groupBox3.Controls.Add(this.BtnUpdateEmployee);
            this.groupBox3.Controls.Add(this.BtnEditEmployee);
            this.groupBox3.Controls.Add(this.BtnAddEmployee);
            this.groupBox3.Location = new System.Drawing.Point(1188, 398);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(155, 280);
            this.groupBox3.TabIndex = 24;
            this.groupBox3.TabStop = false;
            // 
            // BtnClearAll
            // 
            this.BtnClearAll.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnClearAll.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnClearAll.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnClearAll.BorderRadius = 35;
            this.BtnClearAll.BorderSize = 0;
            this.BtnClearAll.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnClearAll.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnClearAll.ForeColor = System.Drawing.Color.White;
            this.BtnClearAll.Location = new System.Drawing.Point(12, 223);
            this.BtnClearAll.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnClearAll.Name = "BtnClearAll";
            this.BtnClearAll.Size = new System.Drawing.Size(129, 40);
            this.BtnClearAll.TabIndex = 29;
            this.BtnClearAll.Text = "Clear All";
            this.BtnClearAll.TextColor = System.Drawing.Color.White;
            this.BtnClearAll.UseVisualStyleBackColor = false;
            this.BtnClearAll.Click += new System.EventHandler(this.BtnClear_Click);
            // 
            // BtnSaveEmployee
            // 
            this.BtnSaveEmployee.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnSaveEmployee.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnSaveEmployee.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnSaveEmployee.BorderRadius = 35;
            this.BtnSaveEmployee.BorderSize = 0;
            this.BtnSaveEmployee.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSaveEmployee.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnSaveEmployee.ForeColor = System.Drawing.Color.White;
            this.BtnSaveEmployee.Location = new System.Drawing.Point(13, 60);
            this.BtnSaveEmployee.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSaveEmployee.Name = "BtnSaveEmployee";
            this.BtnSaveEmployee.Size = new System.Drawing.Size(129, 40);
            this.BtnSaveEmployee.TabIndex = 500;
            this.BtnSaveEmployee.Text = "Save";
            this.BtnSaveEmployee.TextColor = System.Drawing.Color.White;
            this.BtnSaveEmployee.UseVisualStyleBackColor = false;
            this.BtnSaveEmployee.Click += new System.EventHandler(this.BtnSaveEmployee_Click);
            // 
            // BtnDeleteEmployee
            // 
            this.BtnDeleteEmployee.BackColor = System.Drawing.Color.Red;
            this.BtnDeleteEmployee.BackgroundColor = System.Drawing.Color.Red;
            this.BtnDeleteEmployee.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnDeleteEmployee.BorderRadius = 35;
            this.BtnDeleteEmployee.BorderSize = 0;
            this.BtnDeleteEmployee.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnDeleteEmployee.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnDeleteEmployee.ForeColor = System.Drawing.Color.White;
            this.BtnDeleteEmployee.Location = new System.Drawing.Point(12, 182);
            this.BtnDeleteEmployee.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnDeleteEmployee.Name = "BtnDeleteEmployee";
            this.BtnDeleteEmployee.Size = new System.Drawing.Size(129, 40);
            this.BtnDeleteEmployee.TabIndex = 28;
            this.BtnDeleteEmployee.Text = "Delete";
            this.BtnDeleteEmployee.TextColor = System.Drawing.Color.White;
            this.BtnDeleteEmployee.UseVisualStyleBackColor = false;
            this.BtnDeleteEmployee.Click += new System.EventHandler(this.BtnDeleteEmployee_Click);
            // 
            // BtnUpdateEmployee
            // 
            this.BtnUpdateEmployee.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnUpdateEmployee.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnUpdateEmployee.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnUpdateEmployee.BorderRadius = 35;
            this.BtnUpdateEmployee.BorderSize = 0;
            this.BtnUpdateEmployee.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnUpdateEmployee.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnUpdateEmployee.ForeColor = System.Drawing.Color.White;
            this.BtnUpdateEmployee.Location = new System.Drawing.Point(13, 142);
            this.BtnUpdateEmployee.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnUpdateEmployee.Name = "BtnUpdateEmployee";
            this.BtnUpdateEmployee.Size = new System.Drawing.Size(129, 40);
            this.BtnUpdateEmployee.TabIndex = 27;
            this.BtnUpdateEmployee.Text = "Update";
            this.BtnUpdateEmployee.TextColor = System.Drawing.Color.White;
            this.BtnUpdateEmployee.UseVisualStyleBackColor = false;
            this.BtnUpdateEmployee.Click += new System.EventHandler(this.BtnUpdateEmployee_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label4.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label4.Location = new System.Drawing.Point(5, 108);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(138, 18);
            this.label4.TabIndex = 1000;
            this.label4.Text = "Permanent Address";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label5.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label5.Location = new System.Drawing.Point(4, 138);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(138, 18);
            this.label5.TabIndex = 1000;
            this.label5.Text = "Temporary Address";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label7.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label7.Location = new System.Drawing.Point(4, 19);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(74, 18);
            this.label7.TabIndex = 1000;
            this.label7.Text = "Education";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label8.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label8.Location = new System.Drawing.Point(3, 49);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(99, 18);
            this.label8.TabIndex = 1000;
            this.label8.Text = "Mother Name";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label9.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label9.Location = new System.Drawing.Point(3, 20);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(94, 18);
            this.label9.TabIndex = 1000;
            this.label9.Text = "Father Name";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label10.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label10.Location = new System.Drawing.Point(3, 108);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(103, 18);
            this.label10.TabIndex = 1000;
            this.label10.Text = "Spouse Name";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label11.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label11.Location = new System.Drawing.Point(5, 78);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(63, 18);
            this.label11.TabIndex = 1000;
            this.label11.Text = "Email ID";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label12.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label12.Location = new System.Drawing.Point(4, 138);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(93, 18);
            this.label12.TabIndex = 1000;
            this.label12.Text = "Blood Group";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label13.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label13.Location = new System.Drawing.Point(291, 47);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(33, 18);
            this.label13.TabIndex = 1000;
            this.label13.Text = "Age";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label14.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label14.Location = new System.Drawing.Point(4, 47);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(90, 18);
            this.label14.TabIndex = 1000;
            this.label14.Text = "Date of Birth";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label16.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label16.Location = new System.Drawing.Point(3, 79);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(98, 18);
            this.label16.TabIndex = 1000;
            this.label16.Text = "Marital Status";
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label19.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label19.Location = new System.Drawing.Point(5, 19);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(39, 18);
            this.label19.TabIndex = 1000;
            this.label19.Text = "Post";
            // 
            // groupBox4
            // 
            this.groupBox4.Controls.Add(this.LblCurrentTime);
            this.groupBox4.Controls.Add(this.LblCurrentNepaliDate);
            this.groupBox4.Controls.Add(this.label24);
            this.groupBox4.Controls.Add(this.label23);
            this.groupBox4.Controls.Add(this.ComboFilter);
            this.groupBox4.Controls.Add(this.BtnShowDetails);
            this.groupBox4.Location = new System.Drawing.Point(12, 630);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(1165, 50);
            this.groupBox4.TabIndex = 1000;
            this.groupBox4.TabStop = false;
            // 
            // LblCurrentTime
            // 
            this.LblCurrentTime.AutoSize = true;
            this.LblCurrentTime.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.LblCurrentTime.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.LblCurrentTime.Location = new System.Drawing.Point(977, 20);
            this.LblCurrentTime.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.LblCurrentTime.Name = "LblCurrentTime";
            this.LblCurrentTime.Size = new System.Drawing.Size(109, 18);
            this.LblCurrentTime.TabIndex = 1000;
            this.LblCurrentTime.Text = "LblCurrentTime";
            // 
            // LblCurrentNepaliDate
            // 
            this.LblCurrentNepaliDate.AutoSize = true;
            this.LblCurrentNepaliDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.LblCurrentNepaliDate.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.LblCurrentNepaliDate.Location = new System.Drawing.Point(133, 20);
            this.LblCurrentNepaliDate.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.LblCurrentNepaliDate.Name = "LblCurrentNepaliDate";
            this.LblCurrentNepaliDate.Size = new System.Drawing.Size(148, 18);
            this.LblCurrentNepaliDate.TabIndex = 1000;
            this.LblCurrentNepaliDate.Text = "LblCurrentNepaliDate";
            // 
            // label24
            // 
            this.label24.AutoSize = true;
            this.label24.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label24.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label24.Location = new System.Drawing.Point(921, 20);
            this.label24.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label24.Name = "label24";
            this.label24.Size = new System.Drawing.Size(49, 18);
            this.label24.TabIndex = 1000;
            this.label24.Text = "Time :";
            // 
            // label23
            // 
            this.label23.AutoSize = true;
            this.label23.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label23.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label23.Location = new System.Drawing.Point(78, 20);
            this.label23.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label23.Name = "label23";
            this.label23.Size = new System.Drawing.Size(47, 18);
            this.label23.TabIndex = 1000;
            this.label23.Text = "Date :";
            // 
            // ComboFilter
            // 
            this.ComboFilter.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.ComboFilter.FormattingEnabled = true;
            this.ComboFilter.Items.AddRange(new object[] {
            "All Employees",
            "Present Employees",
            "Resigned Employees"});
            this.ComboFilter.Location = new System.Drawing.Point(467, 17);
            this.ComboFilter.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.ComboFilter.Name = "ComboFilter";
            this.ComboFilter.Size = new System.Drawing.Size(186, 26);
            this.ComboFilter.TabIndex = 30;
            this.ComboFilter.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.ComboFilter_KeyPress);
            // 
            // BtnShowDetails
            // 
            this.BtnShowDetails.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnShowDetails.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnShowDetails.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnShowDetails.BorderRadius = 30;
            this.BtnShowDetails.BorderSize = 0;
            this.BtnShowDetails.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnShowDetails.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnShowDetails.ForeColor = System.Drawing.Color.White;
            this.BtnShowDetails.Location = new System.Drawing.Point(661, 13);
            this.BtnShowDetails.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnShowDetails.Name = "BtnShowDetails";
            this.BtnShowDetails.Size = new System.Drawing.Size(155, 32);
            this.BtnShowDetails.TabIndex = 32;
            this.BtnShowDetails.Text = "Show Details";
            this.BtnShowDetails.TextColor = System.Drawing.Color.White;
            this.BtnShowDetails.UseVisualStyleBackColor = false;
            this.BtnShowDetails.Click += new System.EventHandler(this.BtnShowDetails_Click);
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label18.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label18.Location = new System.Drawing.Point(5, 109);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(108, 18);
            this.label18.TabIndex = 1000;
            this.label18.Text = "Appointed Date";
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label20.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label20.Location = new System.Drawing.Point(5, 138);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(121, 18);
            this.label20.TabIndex = 1000;
            this.label20.Text = "Resignation Date";
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label21.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label21.Location = new System.Drawing.Point(5, 49);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(85, 18);
            this.label21.TabIndex = 1000;
            this.label21.Text = "Post Status";
            // 
            // groupBox6
            // 
            this.groupBox6.Controls.Add(this.MaskDOB);
            this.groupBox6.Controls.Add(this.maskedTextBox2);
            this.groupBox6.Controls.Add(this.TxtBoxEmail);
            this.groupBox6.Controls.Add(this.TxtBoxPermAddress);
            this.groupBox6.Controls.Add(this.TxtBoxAge);
            this.groupBox6.Controls.Add(this.TxtBoxTempAddress);
            this.groupBox6.Controls.Add(this.label7);
            this.groupBox6.Controls.Add(this.TxtBoxEducation);
            this.groupBox6.Controls.Add(this.label14);
            this.groupBox6.Controls.Add(this.label4);
            this.groupBox6.Controls.Add(this.label13);
            this.groupBox6.Controls.Add(this.label5);
            this.groupBox6.Controls.Add(this.label11);
            this.groupBox6.ForeColor = System.Drawing.Color.Red;
            this.groupBox6.Location = new System.Drawing.Point(331, 37);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(410, 167);
            this.groupBox6.TabIndex = 6;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "Other Details";
            // 
            // MaskDOB
            // 
            this.MaskDOB.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.MaskDOB.Location = new System.Drawing.Point(148, 45);
            this.MaskDOB.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.MaskDOB.Mask = "0000-00-00";
            this.MaskDOB.Name = "MaskDOB";
            this.MaskDOB.Size = new System.Drawing.Size(130, 24);
            this.MaskDOB.TabIndex = 7;
            this.MaskDOB.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // maskedTextBox2
            // 
            this.maskedTextBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.maskedTextBox2.Location = new System.Drawing.Point(296, 251);
            this.maskedTextBox2.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.maskedTextBox2.Mask = "   0000-00-00";
            this.maskedTextBox2.Name = "maskedTextBox2";
            this.maskedTextBox2.Size = new System.Drawing.Size(110, 24);
            this.maskedTextBox2.TabIndex = 55;
            // 
            // TxtBoxEmail
            // 
            this.TxtBoxEmail.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxEmail.Location = new System.Drawing.Point(74, 74);
            this.TxtBoxEmail.Name = "TxtBoxEmail";
            this.TxtBoxEmail.Size = new System.Drawing.Size(312, 27);
            this.TxtBoxEmail.TabIndex = 9;
            // 
            // TxtBoxPermAddress
            // 
            this.TxtBoxPermAddress.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxPermAddress.Location = new System.Drawing.Point(148, 104);
            this.TxtBoxPermAddress.Name = "TxtBoxPermAddress";
            this.TxtBoxPermAddress.Size = new System.Drawing.Size(238, 27);
            this.TxtBoxPermAddress.TabIndex = 10;
            // 
            // TxtBoxAge
            // 
            this.TxtBoxAge.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxAge.Location = new System.Drawing.Point(330, 44);
            this.TxtBoxAge.Name = "TxtBoxAge";
            this.TxtBoxAge.Size = new System.Drawing.Size(56, 27);
            this.TxtBoxAge.TabIndex = 8;
            this.TxtBoxAge.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.TxtBoxAge.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.TxtBoxAge_KeyPress);
            // 
            // TxtBoxTempAddress
            // 
            this.TxtBoxTempAddress.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxTempAddress.Location = new System.Drawing.Point(148, 134);
            this.TxtBoxTempAddress.Name = "TxtBoxTempAddress";
            this.TxtBoxTempAddress.Size = new System.Drawing.Size(238, 27);
            this.TxtBoxTempAddress.TabIndex = 11;
            // 
            // TxtBoxEducation
            // 
            this.TxtBoxEducation.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxEducation.Location = new System.Drawing.Point(148, 14);
            this.TxtBoxEducation.Name = "TxtBoxEducation";
            this.TxtBoxEducation.Size = new System.Drawing.Size(238, 27);
            this.TxtBoxEducation.TabIndex = 6;
            // 
            // groupBox7
            // 
            this.groupBox7.Controls.Add(this.ComboMaritalStatus);
            this.groupBox7.Controls.Add(this.TxtBoxFatherName);
            this.groupBox7.Controls.Add(this.TxtBoxMotherName);
            this.groupBox7.Controls.Add(this.TxtBoxSpouseName);
            this.groupBox7.Controls.Add(this.TxtBoxBloodGroup);
            this.groupBox7.Controls.Add(this.label9);
            this.groupBox7.Controls.Add(this.label8);
            this.groupBox7.Controls.Add(this.label16);
            this.groupBox7.Controls.Add(this.label10);
            this.groupBox7.Controls.Add(this.label12);
            this.groupBox7.ForeColor = System.Drawing.Color.Red;
            this.groupBox7.Location = new System.Drawing.Point(747, 37);
            this.groupBox7.Name = "groupBox7";
            this.groupBox7.Size = new System.Drawing.Size(306, 167);
            this.groupBox7.TabIndex = 12;
            this.groupBox7.TabStop = false;
            this.groupBox7.Text = "Family Details";
            // 
            // ComboMaritalStatus
            // 
            this.ComboMaritalStatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.ComboMaritalStatus.FormattingEnabled = true;
            this.ComboMaritalStatus.Items.AddRange(new object[] {
            "Single",
            "Married"});
            this.ComboMaritalStatus.Location = new System.Drawing.Point(105, 75);
            this.ComboMaritalStatus.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.ComboMaritalStatus.Name = "ComboMaritalStatus";
            this.ComboMaritalStatus.Size = new System.Drawing.Size(178, 26);
            this.ComboMaritalStatus.TabIndex = 14;
            this.ComboMaritalStatus.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.ComboMaritalStatus_KeyPress);
            // 
            // TxtBoxFatherName
            // 
            this.TxtBoxFatherName.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxFatherName.Location = new System.Drawing.Point(105, 15);
            this.TxtBoxFatherName.Name = "TxtBoxFatherName";
            this.TxtBoxFatherName.Size = new System.Drawing.Size(178, 27);
            this.TxtBoxFatherName.TabIndex = 12;
            // 
            // TxtBoxMotherName
            // 
            this.TxtBoxMotherName.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxMotherName.Location = new System.Drawing.Point(105, 45);
            this.TxtBoxMotherName.Name = "TxtBoxMotherName";
            this.TxtBoxMotherName.Size = new System.Drawing.Size(178, 27);
            this.TxtBoxMotherName.TabIndex = 13;
            // 
            // TxtBoxSpouseName
            // 
            this.TxtBoxSpouseName.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxSpouseName.Location = new System.Drawing.Point(105, 104);
            this.TxtBoxSpouseName.Name = "TxtBoxSpouseName";
            this.TxtBoxSpouseName.Size = new System.Drawing.Size(178, 27);
            this.TxtBoxSpouseName.TabIndex = 15;
            // 
            // TxtBoxBloodGroup
            // 
            this.TxtBoxBloodGroup.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxBloodGroup.Location = new System.Drawing.Point(105, 134);
            this.TxtBoxBloodGroup.Name = "TxtBoxBloodGroup";
            this.TxtBoxBloodGroup.Size = new System.Drawing.Size(178, 27);
            this.TxtBoxBloodGroup.TabIndex = 16;
            // 
            // groupBox8
            // 
            this.groupBox8.Controls.Add(this.MaskResignationDate);
            this.groupBox8.Controls.Add(this.MaskAppointedDate);
            this.groupBox8.Controls.Add(this.BtnSalaryDetails);
            this.groupBox8.Controls.Add(this.ComboPostStatus);
            this.groupBox8.Controls.Add(this.TxtBoxPost);
            this.groupBox8.Controls.Add(this.label22);
            this.groupBox8.Controls.Add(this.label19);
            this.groupBox8.Controls.Add(this.label21);
            this.groupBox8.Controls.Add(this.label18);
            this.groupBox8.Controls.Add(this.label20);
            this.groupBox8.ForeColor = System.Drawing.Color.Red;
            this.groupBox8.Location = new System.Drawing.Point(1060, 37);
            this.groupBox8.Name = "groupBox8";
            this.groupBox8.Size = new System.Drawing.Size(282, 167);
            this.groupBox8.TabIndex = 17;
            this.groupBox8.TabStop = false;
            this.groupBox8.Text = "Job Details";
            // 
            // MaskResignationDate
            // 
            this.MaskResignationDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.MaskResignationDate.Location = new System.Drawing.Point(126, 134);
            this.MaskResignationDate.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.MaskResignationDate.Mask = "0000-00-00";
            this.MaskResignationDate.Name = "MaskResignationDate";
            this.MaskResignationDate.Size = new System.Drawing.Size(131, 24);
            this.MaskResignationDate.TabIndex = 21;
            this.MaskResignationDate.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // MaskAppointedDate
            // 
            this.MaskAppointedDate.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.MaskAppointedDate.Location = new System.Drawing.Point(126, 106);
            this.MaskAppointedDate.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.MaskAppointedDate.Mask = "0000-00-00";
            this.MaskAppointedDate.Name = "MaskAppointedDate";
            this.MaskAppointedDate.Size = new System.Drawing.Size(131, 24);
            this.MaskAppointedDate.TabIndex = 20;
            this.MaskAppointedDate.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // BtnSalaryDetails
            // 
            this.BtnSalaryDetails.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnSalaryDetails.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnSalaryDetails.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnSalaryDetails.BorderRadius = 6;
            this.BtnSalaryDetails.BorderSize = 0;
            this.BtnSalaryDetails.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSalaryDetails.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnSalaryDetails.ForeColor = System.Drawing.SystemColors.HighlightText;
            this.BtnSalaryDetails.Location = new System.Drawing.Point(125, 74);
            this.BtnSalaryDetails.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnSalaryDetails.Name = "BtnSalaryDetails";
            this.BtnSalaryDetails.Size = new System.Drawing.Size(132, 30);
            this.BtnSalaryDetails.TabIndex = 19;
            this.BtnSalaryDetails.Text = "Salary Details";
            this.BtnSalaryDetails.TextColor = System.Drawing.SystemColors.HighlightText;
            this.BtnSalaryDetails.UseVisualStyleBackColor = false;
            this.BtnSalaryDetails.Click += new System.EventHandler(this.BtnSalaryDetails_Click);
            // 
            // ComboPostStatus
            // 
            this.ComboPostStatus.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.ComboPostStatus.FormattingEnabled = true;
            this.ComboPostStatus.Items.AddRange(new object[] {
            "Daily Basis ",
            "Temporary",
            "Parmanent"});
            this.ComboPostStatus.Location = new System.Drawing.Point(126, 45);
            this.ComboPostStatus.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.ComboPostStatus.Name = "ComboPostStatus";
            this.ComboPostStatus.Size = new System.Drawing.Size(131, 26);
            this.ComboPostStatus.TabIndex = 18;
            this.ComboPostStatus.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.ComboPostStatus_KeyPress);
            // 
            // TxtBoxPost
            // 
            this.TxtBoxPost.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxPost.Location = new System.Drawing.Point(126, 15);
            this.TxtBoxPost.Name = "TxtBoxPost";
            this.TxtBoxPost.Size = new System.Drawing.Size(131, 27);
            this.TxtBoxPost.TabIndex = 17;
            // 
            // label22
            // 
            this.label22.AutoSize = true;
            this.label22.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label22.ForeColor = System.Drawing.SystemColors.HotTrack;
            this.label22.Location = new System.Drawing.Point(5, 80);
            this.label22.Name = "label22";
            this.label22.Size = new System.Drawing.Size(98, 18);
            this.label22.TabIndex = 1000;
            this.label22.Text = "Salary Details";
            // 
            // DataGridEmployeeList
            // 
            this.DataGridEmployeeList.BackgroundColor = System.Drawing.SystemColors.Control;
            this.DataGridEmployeeList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DataGridEmployeeList.Location = new System.Drawing.Point(11, 212);
            this.DataGridEmployeeList.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.DataGridEmployeeList.Name = "DataGridEmployeeList";
            this.DataGridEmployeeList.ReadOnly = true;
            this.DataGridEmployeeList.Size = new System.Drawing.Size(1168, 415);
            this.DataGridEmployeeList.TabIndex = 1000;
            this.DataGridEmployeeList.DataBindingComplete += new System.Windows.Forms.DataGridViewBindingCompleteEventHandler(this.DataGridEmployeeList_DataBindingComplete);
            // 
            // BtnAddImage
            // 
            this.BtnAddImage.BackColor = System.Drawing.Color.DodgerBlue;
            this.BtnAddImage.BackgroundColor = System.Drawing.Color.DodgerBlue;
            this.BtnAddImage.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnAddImage.BorderRadius = 15;
            this.BtnAddImage.BorderSize = 0;
            this.BtnAddImage.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnAddImage.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnAddImage.ForeColor = System.Drawing.Color.White;
            this.BtnAddImage.Location = new System.Drawing.Point(1195, 367);
            this.BtnAddImage.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnAddImage.Name = "BtnAddImage";
            this.BtnAddImage.Size = new System.Drawing.Size(70, 27);
            this.BtnAddImage.TabIndex = 22;
            this.BtnAddImage.Text = "Add";
            this.BtnAddImage.TextColor = System.Drawing.Color.White;
            this.BtnAddImage.UseVisualStyleBackColor = false;
            this.BtnAddImage.Click += new System.EventHandler(this.BtnAddImage_Click);
            // 
            // BtnDeleteImage
            // 
            this.BtnDeleteImage.BackColor = System.Drawing.Color.Red;
            this.BtnDeleteImage.BackgroundColor = System.Drawing.Color.Red;
            this.BtnDeleteImage.BorderColor = System.Drawing.Color.PaleVioletRed;
            this.BtnDeleteImage.BorderRadius = 15;
            this.BtnDeleteImage.BorderSize = 0;
            this.BtnDeleteImage.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnDeleteImage.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            this.BtnDeleteImage.ForeColor = System.Drawing.Color.White;
            this.BtnDeleteImage.Location = new System.Drawing.Point(1266, 367);
            this.BtnDeleteImage.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.BtnDeleteImage.Name = "BtnDeleteImage";
            this.BtnDeleteImage.Size = new System.Drawing.Size(70, 27);
            this.BtnDeleteImage.TabIndex = 23;
            this.BtnDeleteImage.Text = "Delete";
            this.BtnDeleteImage.TextColor = System.Drawing.Color.White;
            this.BtnDeleteImage.UseVisualStyleBackColor = false;
            this.BtnDeleteImage.Click += new System.EventHandler(this.BtnDeleteImage_Click);
            // 
            // OpenFileDialog
            // 
            this.OpenFileDialog.Title = "Browse photos";
            this.OpenFileDialog.FileOk += new System.ComponentModel.CancelEventHandler(this.OpenFileDialog_FileOk);
            // 
            // Timer
            // 
            this.Timer.Enabled = true;
            this.Timer.Interval = 1000;
            this.Timer.Tick += new System.EventHandler(this.Timer_Tick);
            // 
            // ErrorProvider
            // 
            this.ErrorProvider.ContainerControl = this;
            // 
            // EmployeeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1354, 688);
            this.Controls.Add(this.BtnDeleteImage);
            this.Controls.Add(this.BtnAddImage);
            this.Controls.Add(this.DataGridEmployeeList);
            this.Controls.Add(this.groupBox8);
            this.Controls.Add(this.groupBox7);
            this.Controls.Add(this.groupBox6);
            this.Controls.Add(this.groupBox4);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.textBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "EmployeeForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.EmployeeDetails_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.PicBoxPhoto)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.groupBox6.ResumeLayout(false);
            this.groupBox6.PerformLayout();
            this.groupBox7.ResumeLayout(false);
            this.groupBox7.PerformLayout();
            this.groupBox8.ResumeLayout(false);
            this.groupBox8.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataGridEmployeeList)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ErrorProvider)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox TxtBoxEmployeeId;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label2;
        private CustomControls.Button.CustomButton BtnEditEmployee;
        private CustomControls.Button.CustomButton BtnAddEmployee;
        private System.Windows.Forms.TextBox TxtBoxEducation;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.TextBox TxtBoxCitizenshipNo;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.TextBox TxtBoxContactNo;
        private System.Windows.Forms.TextBox TxtBoxEmployeeName;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.GroupBox groupBox7;
        private System.Windows.Forms.GroupBox groupBox8;
        private System.Windows.Forms.Label label22;
        private CustomControls.Button.CustomButton BtnSearchEmployee;
        private System.Windows.Forms.TextBox TxtBoxEmail;
        private System.Windows.Forms.TextBox TxtBoxPermAddress;
        private System.Windows.Forms.TextBox TxtBoxAge;
        private System.Windows.Forms.TextBox TxtBoxTempAddress;
        private System.Windows.Forms.TextBox TxtBoxFatherName;
        private System.Windows.Forms.TextBox TxtBoxMotherName;
        private System.Windows.Forms.TextBox TxtBoxSpouseName;
        private System.Windows.Forms.TextBox TxtBoxBloodGroup;
        private System.Windows.Forms.TextBox TxtBoxPost;
        private System.Windows.Forms.ComboBox ComboGender;
        private System.Windows.Forms.ComboBox ComboMaritalStatus;
        private CustomControls.Button.CustomButton BtnSalaryDetails;
        private System.Windows.Forms.ComboBox ComboPostStatus;
        private System.Windows.Forms.MaskedTextBox MaskDOB;
        private System.Windows.Forms.MaskedTextBox maskedTextBox2;
        private System.Windows.Forms.MaskedTextBox MaskResignationDate;
        private System.Windows.Forms.MaskedTextBox MaskAppointedDate;
        private CustomControls.Button.CustomButton BtnClearAll;
        private CustomControls.Button.CustomButton BtnSaveEmployee;
        private CustomControls.Button.CustomButton BtnDeleteEmployee;
        private CustomControls.Button.CustomButton BtnUpdateEmployee;
        private CustomControls.Button.CustomButton BtnShowDetails;
        private System.Windows.Forms.DataGridView DataGridEmployeeList;
        private System.Windows.Forms.ComboBox ComboFilter;
        private CustomControls.Button.CustomButton BtnAddImage;
        private CustomControls.Button.CustomButton BtnDeleteImage;
        private System.Windows.Forms.PictureBox PicBoxPhoto;
        private System.Windows.Forms.Label label23;
        private System.Windows.Forms.Label label24;
        private System.Windows.Forms.OpenFileDialog OpenFileDialog;
        private System.Windows.Forms.Timer Timer;
        private System.Windows.Forms.ErrorProvider ErrorProvider;
        private System.Windows.Forms.Label LblCurrentTime;
        private System.Windows.Forms.Label LblCurrentNepaliDate;
    }
}