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
            Resultados();
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

            CicloCaixaAno2.Text = (Convert.ToDouble(Session["IdadeMediaEstoqueAno2"]) +
                Convert.ToDouble(Session["PercMedioCobrAno2"]) -
                Convert.ToDouble(Session["PercMedioPgtoAno2"])).ToString();

            CicloCaixaAno1.Text = (Convert.ToDouble(Session["IdadeMediaEstoqueAno1"]) +
                Convert.ToDouble(Session["PercMedioCobrAno1"]) -
                Convert.ToDouble(Session["PercMedioPgtoAno1"])).ToString();

            CicloCaixaAH.Text = ((Convert.ToDouble(CicloCaixaAno2.Text) -
                Convert.ToDouble(CicloCaixaAno1.Text)) /
                Convert.ToDouble(CicloCaixaAno1.Text)).ToString("00.00%");

            RiscoEmpresaAno2.Text = (((Convert.ToDouble(Session["TotalPCAno2"]) +
                Convert.ToDouble(Session["FinanciamentoLPAno2"])) /
                Convert.ToDouble(Session["TotalPassivoAno2"])) * 100).ToString();

            RiscoEmpresaAno1.Text = (((Convert.ToDouble(Session["TotalPCAno1"]) +
                Convert.ToDouble(Session["FinanciamentoLPAno1"])) /
                Convert.ToDouble(Session["TotalPassivoAno1"])) * 100).ToString();

            RiscoEmpresaAH.Text = ((Convert.ToDouble(RiscoEmpresaAno2.Text) -
                Convert.ToDouble(RiscoEmpresaAno1.Text)) /
                Convert.ToDouble(RiscoEmpresaAno1.Text)).ToString("00.00%");

            //adiciona o simbolo %
            MargemLiquidaAno2.Text += "%";
            MargemLiquidaAno1.Text += "%";
            ROAAno2.Text += "%";
            ROAAno1.Text += "%";
            ROEAno2.Text += "%";
            ROEAno1.Text += "%";

        }

        private void Resultados()
        {
            if (true)
            {
                Resultado.Text += "O estoque da empresa <b>está</b> \"encalhando\". <br />";
            }
            else
            {
                Resultado.Text += "O estoque da empresa <b>não está</b> \"encalhando\". <br />";
            }

            if (true)
            {
                Resultado.Text += "A margem líquida contribuiu para o <b>aumento</b> do ROE. <br />";
            }
            else
            {
                Resultado.Text += "A margem líquida contribuiu para a <b>redução</b> do ROE. <br />";
            }

            if (true)
            {
                Resultado.Text += "O MAF contribuiu para o <b>aumento</b> do ROE. <br />";
            }
            else
            {
                Resultado.Text += "O MAF contribuiu para a <b>redução</b> do ROE. <br />";
            }

            if (true)
            {
                Resultado.Text += "O Giro do Ativo contribuiu para o <b>aumento</b> do ROE. <br />";
            }
            else
            {
                Resultado.Text += "O Giro do Ativo contribuiu para a <b>redução</b> do ROE. <br />";
            }

            if (true)
            {
                Resultado.Text += "A empresa <b>depende</b> da \"queima do estoque\" <br />";
                if (true)
                {
                    Resultado.Text += "e essa dependência aumentou - reduziu - não se aplica para este caso.";
                }
            }
            else
            {
                Resultado.Text += "A empresa <b>não depende</b> da \"queima do estoque\"  <br />";
            }

            if (true)
            {
                Resultado.Text += "A necessidade do capital de giro da empresa <b>aumentou</b>. <br />";
            }
            else
            {
                Resultado.Text += "A necessidade do capital de giro da empresa <b>diminuiu</b>. <br />";
            }
            if (true)
            {
                Resultado.Text += "A empresa deve cortar <br />";
                if (true)
                {
                    Resultado.Text += "Custos - Despesa de Vendas - Despesa Administrativas - Despesas Financeiras";
                }
            }
            else
            {
                Resultado.Text += "A empresa não precisa realizar cortes <br />";
            }
            if (true)
            {
                Resultado.Text += "O nível de risco da empresa <b>aumentou</b>. <br />";
            }
            else
            {
                Resultado.Text += "O nível de risco da empresa <b>diminuiu</b>. <br />";
            }
            if (true)
            {
                Resultado.Text += "A lucratividade da empresa <b>aumentou</b>. <br />";
            }
            else
            {
                Resultado.Text += "A lucratividade da empresa <b>diminuiu</b>. <br />";
            }
        }

        protected void Imprimir_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "PrintOperation", "printing()", true);
        }

    }
}