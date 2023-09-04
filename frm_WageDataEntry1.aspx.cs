using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_Selenay
{
    public partial class frm_WageDataEntry1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource3.InsertParameters["Empl_ID"].DefaultValue = DropDownList1.SelectedValue;
            SqlDataSource3.InsertParameters["Wage_Date"].DefaultValue = TextBox1.Text;
            SqlDataSource3.InsertParameters["Wage_Amount"].DefaultValue = TextBox2.Text;
            SqlDataSource3.InsertParameters["Wage_Commision"].DefaultValue = TextBox3.Text;
            SqlDataSource3.InsertParameters["Month_ID"].DefaultValue =
           DropDownList2.SelectedValue;
            int s = SqlDataSource3.Insert();
            if (s > 0)
            {
                Label1.Text = "Yeni Personel Maaş Verisi: <b>" + DropDownList1.SelectedItem +
               "</b><p>Başarı ile Eklendi";
                Label1.Visible = true;
            }
            else
                Label1.Text = "Yeni Personel Maaş Kaydı Başarısız. Verilerinizi Kontrol ettikten sonra Tekrar deneyiniz";

                Label1.Visible = true;
        }
    }
}