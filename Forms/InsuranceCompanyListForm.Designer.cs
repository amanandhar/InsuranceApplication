
namespace InsuranceApplication.Forms
{
    partial class InsuranceCompanyListForm
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
            this.DataGridInsuranceCompanyList = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.DataGridInsuranceCompanyList)).BeginInit();
            this.SuspendLayout();
            // 
            // DataGridInsuranceCompanyList
            // 
            this.DataGridInsuranceCompanyList.BackgroundColor = System.Drawing.Color.White;
            this.DataGridInsuranceCompanyList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DataGridInsuranceCompanyList.Location = new System.Drawing.Point(12, 10);
            this.DataGridInsuranceCompanyList.Name = "DataGridInsuranceCompanyList";
            this.DataGridInsuranceCompanyList.ReadOnly = true;
            this.DataGridInsuranceCompanyList.RowTemplate.Height = 25;
            this.DataGridInsuranceCompanyList.Size = new System.Drawing.Size(510, 240);
            this.DataGridInsuranceCompanyList.TabIndex = 0;
            this.DataGridInsuranceCompanyList.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.DataGridInsuranceCompanyList_CellDoubleClick);
            this.DataGridInsuranceCompanyList.DataBindingComplete += new System.Windows.Forms.DataGridViewBindingCompleteEventHandler(this.DataGridInsuranceCompanyList_DataBindingComplete);
            // 
            // InsuranceCompanyListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(534, 261);
            this.Controls.Add(this.DataGridInsuranceCompanyList);
            this.MaximizeBox = false;
            this.Name = "InsuranceCompanyListForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Insurance Company List Form";
            this.Load += new System.EventHandler(this.InsuranceCompanyListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.DataGridInsuranceCompanyList)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView DataGridInsuranceCompanyList;
    }
}