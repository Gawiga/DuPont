using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuPont.DRE
{
    public partial class IndicesDuPont : BaseWebUI
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calcular_Click(object sender, EventArgs e)
        {
            CapitalCirculanteLiqAno2.Text = (Extensions.ToDouble(Session["TotalACAno2"]) - Extensions.ToDouble(Session["TotalPCAno2"])).ToString();
            CapitalCirculanteLiqAno1.Text = (Extensions.ToDouble(Session["TotalACAno1"]) - Extensions.ToDouble(Session["TotalPCAno1"])).ToString();

            CapitalCirculanteLiqAH.Text = (((Convert.ToDouble(CapitalCirculanteLiqAno2.Text) -
                Convert.ToDouble(CapitalCirculanteLiqAno1.Text)) /
                Convert.ToDouble(CapitalCirculanteLiqAno1.Text)) * 100).ToString("##.##");

        }

        protected void Continuar_Click(object sender, EventArgs e)
        {

        }
    }
}