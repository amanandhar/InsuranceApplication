
namespace InsuranceApplication.Forms
{
    partial class EmployeeListForm
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.TxtBoxEmployeeId = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.TxtBoxEmployeeName = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.DataGridEmployeeList = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataGridEmployeeList)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.SystemColors.Control;
            this.groupBox1.Controls.Add(this.TxtBoxEmployeeId);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.TxtBoxEmployeeName);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(12, -2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(510, 45);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            // 
            // TxtBoxEmployeeId
            // 
            this.TxtBoxEmployeeId.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxEmployeeId.Location = new System.Drawing.Point(382, 12);
            this.TxtBoxEmployeeId.Name = "TxtBoxEmployeeId";
            this.TxtBoxEmployeeId.Size = new System.Drawing.Size(114, 27);
            this.TxtBoxEmployeeId.TabIndex = 3;
            this.TxtBoxEmployeeId.KeyUp += new System.Windows.Forms.KeyEventHandler(this.TxtBoxEmployeeId_KeyUp);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label2.Location = new System.Drawing.Point(337, 17);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(44, 20);
            this.label2.TabIndex = 2;
            this.label2.Text = "By ID";
            // 
            // TxtBoxEmployeeName
            // 
            this.TxtBoxEmployeeName.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.TxtBoxEmployeeName.Location = new System.Drawing.Point(151, 14);
            this.TxtBoxEmployeeName.Name = "TxtBoxEmployeeName";
            this.TxtBoxEmployeeName.Size = new System.Drawing.Size(180, 27);
            this.TxtBoxEmployeeName.TabIndex = 1;
            this.TxtBoxEmployeeName.KeyUp += new System.Windows.Forms.KeyEventHandler(this.TxtBoxEmployeeName_KeyUp);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point);
            this.label1.Location = new System.Drawing.Point(6, 17);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(139, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "By Employee Name";
            // 
            // DataGridEmployeeList
            // 
            this.DataGridEmployeeList.AllowUserToAddRows = false;
            this.DataGridEmployeeList.BackgroundColor = System.Drawing.SystemColors.Control;
            this.DataGridEmployeeList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DataGridEmployeeList.Location = new System.Drawing.Point(12, 49);
            this.DataGridEmployeeList.Name = "DataGridEmployeeList";
            this.DataGridEmployeeList.RowTemplate.Height = 25;
            this.DataGridEmployeeList.Size = new System.Drawing.Size(510, 250);
            this.DataGridEmployeeList.TabIndex = 1;
            this.DataGridEmployeeList.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.DataGridEmployeeList_CellDoubleClick);
            this.DataGridEmployeeList.DataBindingComplete += new System.Windows.Forms.DataGridViewBindingCompleteEventHandler(this.DataGridEmployeeList_DataBindingComplete);
            // 
            // EmployeeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(534, 311);
            this.Controls.Add(this.DataGridEmployeeList);
            this.Controls.Add(this.groupBox1);
            this.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "EmployeeListForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Employee Search";
            this.Load += new System.EventHandler(this.EmployeeListForm_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.DataGridEmployeeList)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox TxtBoxEmployeeId;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox TxtBoxEmployeeName;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView DataGridEmployeeList;
    }
}