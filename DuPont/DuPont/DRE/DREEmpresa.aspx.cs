using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuPont
{
    public partial class DREEmpresa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Empresa.InnerText = Session["Empresa"].ToString();
            Ano1.InnerText = Session["Ano1"].ToString();
            Ano2.InnerText = Session["Ano2"].ToString();
        }
        
        protected void Calcular_Click1(object sender, EventArgs e)
        {
            double v2 = Convert.ToDouble(txtAno2Receita.Text);
            double v1 = Convert.ToDouble(txtAno1Receita.Text);

            double total = ((v2 - v1) / v1) * 100;

            lblPercReceita.Text = total.ToString("#.##");
        }

        protected void Continuar_Click1(object sender, EventArgs e)
        {

        }


    }
}