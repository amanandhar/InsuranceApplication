
namespace InsuranceApplication.Forms
{
    partial class LoanInsuranceListForm
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
            this.DataGridLoanDetailList = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.DataGridLoanDetailList)).BeginInit();
            this.SuspendLayout();
            // 
            // DataGridLoanDetailList
            // 
            this.DataGridLoanDetailList.AllowUserToAddRows = false;
            this.DataGridLoanDetailList.BackgroundColor = System.Drawing.SystemColors.Control;
            this.DataGridLoanDetailList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.DataGridLoanDetailList.Location = new System.Drawing.Point(12, 10);
            this.DataGridLoanDetailList.Name = "DataGridLoanDetailList";
            this.DataGridLoanDetailList.ReadOnly = true;
            this.DataGridLoanDetailList.RowTemplate.Height = 25;
            this.DataGridLoanDetailList.Size = new System.Drawing.Size(510, 240);
            this.DataGridLoanDetailList.TabIndex = 0;
            this.DataGridLoanDetailList.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.DataGridLoanDetailList_CellDoubleClick);
            this.DataGridLoanDetailList.DataBindingComplete += new System.Windows.Forms.DataGridViewBindingCompleteEventHandler(this.DataGridLoanDetailList_DataBindingComplete);
            // 
            // LoanInsuranceListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(534, 261);
            this.Controls.Add(this.DataGridLoanDetailList);
            this.MaximizeBox = false;
            this.Name = "LoanInsuranceListForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Loan Detail List Form";
            this.Load += new System.EventHandler(this.LoanDetailListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.DataGridLoanDetailList)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView DataGridLoanDetailList;
    }
}