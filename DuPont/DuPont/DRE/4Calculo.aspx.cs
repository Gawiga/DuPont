using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuPont.DRE
{
    public partial class Calculo : BaseWebUI
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Calcular();
        }

        private void Calcular()
        {
            LucroLiqAposIRAno2.Text = Session["LucroLiquidoAno2"].ToString(); 
            LucroLiqAposIRAno1.Text = Session["LucroLiquidoAno1"].ToString();
            LucroLiqAposIRAH.Text = ((Convert.ToDouble(LucroLiqAposIRAno2.Text) -
                Convert.ToDouble(LucroLiqAposIRAno1.Text)) /
                Convert.ToDouble(LucroLiqAposIRAno1.Text)).ToString("00.00%");

            VendasAno2.Text = Session["VendasAno2"].ToString();
            VendasAno1.Text = Session["VendasAno1"].ToString();
            VendasAH.Text = ((Convert.ToDouble(VendasAno2.Text) -
                Convert.ToDouble(VendasAno1.Text)) /
                Convert.ToDouble(VendasAno1.Text)).ToString("00.00%");

            TotalAtivoAno2.Text = Session["TotalAtivoAno2"].ToString();
            TotalAtivoAno1.Text = Session["TotalAtivoAno1"].ToString();
            TotalAtivoAH.Text = ((Convert.ToDouble(TotalAtivoAno2.Text) -
                Convert.ToDouble(TotalAtivoAno1.Text)) /
                Convert.ToDouble(TotalAtivoAno1.Text)).ToString("00.00%");

            TotalPassivoAno2.Text = Session["TotalPassivoAno2"].ToString();
            TotalPassivoAno1.Text = Session["TotalPassivoAno1"].ToString();
            TotalPassivoAH.Text = ((Convert.ToDouble(TotalPassivoAno2.Text) -
                Convert.ToDouble(TotalPassivoAno1.Text)) /
                Convert.ToDouble(TotalPassivoAno1.Text)).ToString("00.00%");

            PatrimonioLiqAno2.Text = Session["PatrimonioLiqAno2"].ToString();
            PatrimonioLiqAno1.Text = Session["PatrimonioLiqAno1"].ToString();
            PatrimonioLiqAH.Text = ((Convert.ToDouble(PatrimonioLiqAno2.Text) -
                Convert.ToDouble(PatrimonioLiqAno1.Text)) /
                Convert.ToDouble(PatrimonioLiqAno1.Text)).ToString("00.00%");

            MargemLiquidaAno2.Text = ((Convert.ToDouble(LucroLiqAposIRAno2.Text) / Convert.ToDouble(VendasAno2.Text)) * 100).ToString("00.00");
            MargemLiquidaAno1.Text = ((Convert.ToDouble(LucroLiqAposIRAno1.Text) / Convert.ToDouble(VendasAno1.Text)) * 100).ToString("00.00");
            MargemLiquidaAH.Text = ((Convert.ToDouble(MargemLiquidaAno2.Text) -
                Convert.ToDouble(MargemLiquidaAno1.Text)) /
                Convert.ToDouble(MargemLiquidaAno1.Text)).ToString("00.00%");

            GiroAtivoAno2.Text = (Convert.ToDouble(VendasAno2.Text) / Convert.ToDouble(TotalAtivoAno2.Text)).ToString();
            GiroAtivoAno1.Text = (Convert.ToDouble(VendasAno1.Text) / Convert.ToDouble(TotalAtivoAno1.Text)).ToString();
            GiroAtivoAH.Text = ((Convert.ToDouble(GiroAtivoAno2.Text) -
                Convert.ToDouble(GiroAtivoAno1.Text)) /
                Convert.ToDouble(GiroAtivoAno1.Text)).ToString("00.00%");

            MAFAno2.Text = (Convert.ToDouble(TotalPassivoAno2.Text) / Convert.ToDouble(PatrimonioLiqAno2.Text)).ToString();
            MAFAno1.Text = (Convert.ToDouble(TotalPassivoAno1.Text) / Convert.ToDouble(PatrimonioLiqAno1.Text)).ToString();
            MAFAH.Text = ((Convert.ToDouble(MAFAno2.Text) -
                Convert.ToDouble(MAFAno1.Text)) /
                Convert.ToDouble(MAFAno1.Text)).ToString("00.00%");

            ROAAno2.Text = (Convert.ToDouble(MargemLiquidaAno2.Text) * Convert.ToDouble(GiroAtivoAno2.Text)).ToString("00.00");
            ROAAno1.Text = (Convert.ToDouble(MargemLiquidaAno1.Text) * Convert.ToDouble(GiroAtivoAno1.Text)).ToString("00.00");
            ROAAH.Text = ((Convert.ToDouble(ROAAno2.Text) -
                Convert.ToDouble(ROAAno1.Text)) /
                Convert.ToDouble(ROAAno1.Text)).ToString("00.00%");

            ROEAno2.Text = (Convert.ToDouble(ROAAno2.Text) * Convert.ToDouble(MAFAno2.Text)).ToString("00.00");
            ROEAno1.Text = (Convert.ToDouble(ROAAno1.Text) * Convert.ToDouble(MAFAno1.Text)).ToString("00.00");
            ROEAH.Text = ((Convert.ToDouble(ROEAno2.Text) -
                Convert.ToDouble(ROEAno1.Text)) /
                Convert.ToDouble(ROEAno1.Text)).ToString("00.00%");

            //adiciona o simbolo %
            MargemLiquidaAno2.Text += "%";
            MargemLiquidaAno1.Text += "%";
            ROAAno2.Text += "%";
            ROAAno1.Text += "%";
            ROEAno2.Text += "%";
            ROEAno1.Text += "%";

        }


    }
}