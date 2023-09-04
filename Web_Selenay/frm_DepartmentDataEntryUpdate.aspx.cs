using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Selenay
{
    public partial class frm_DepartmentDataEntryUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters["Manager_ID"].DefaultValue =DropDownList1.SelectedValue;

            SqlDataSource2.InsertParameters["Dept_Name"].DefaultValue = TextBox1.Text;
            SqlDataSource2.InsertParameters["Dept_Phone"].DefaultValue = TextBox2.Text;
            
            

            int s = SqlDataSource2.Insert();
            if (s > 0)
            {
                Label1.Text = "Yeni Bölüm Veri Girişi: <b>" + TextBox1.Text +
               "</b><p>Başarı ile Eklendi";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Yeni Bölüm Kaydı Başarısız. Verilerinizi Kontrol Ettikten Sonra Tekrar Deneyiniz";
        Label1.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            TextBox2.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            DropDownList1.Visible = true;
            Button3.Visible = true;
            Button4.Visible = false;
        }
    }
}