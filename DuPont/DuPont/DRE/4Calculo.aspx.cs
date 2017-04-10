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
            if (String.IsNullOrEmpty(Session["Empresa"].ToString()))
            {
                Response.Redirect("../DRE/0Default.aspx");
            }
            else
            {
                Calcular();
                Resultados();
                Porcentagens();
            }

        }

        private void Calcular()
        {
            LucroLiqAposIRAno2.Text = Session["LucroLiquidoAno2"].ToString();
            LucroLiqAposIRAno1.Text = Session["LucroLiquidoAno1"].ToString();
            LucroLiqAposIRAH.Text = (((Convert.ToDouble(LucroLiqAposIRAno2.Text) -
                Convert.ToDouble(LucroLiqAposIRAno1.Text)) /
                Convert.ToDouble(LucroLiqAposIRAno1.Text)) * 100).ToString("00.00");

            VendasAno2.Text = Session["VendasAno2"].ToString();
            VendasAno1.Text = Session["VendasAno1"].ToString();
            VendasAH.Text = (((Convert.ToDouble(VendasAno2.Text) -
                Convert.ToDouble(VendasAno1.Text)) /
                Convert.ToDouble(VendasAno1.Text))).ToString("00.00%");

            TotalAtivoAno2.Text = Session["TotalAtivoAno2"].ToString();
            TotalAtivoAno1.Text = Session["TotalAtivoAno1"].ToString();
            TotalAtivoAH.Text = (((Convert.ToDouble(TotalAtivoAno2.Text) -
                Convert.ToDouble(TotalAtivoAno1.Text)) /
                Convert.ToDouble(TotalAtivoAno1.Text))).ToString("00.00%");

            TotalPassivoAno2.Text = Session["TotalPassivoAno2"].ToString();
            TotalPassivoAno1.Text = Session["TotalPassivoAno1"].ToString();
            TotalPassivoAH.Text = (((Convert.ToDouble(TotalPassivoAno2.Text) -
                Convert.ToDouble(TotalPassivoAno1.Text)) /
                Convert.ToDouble(TotalPassivoAno1.Text))).ToString("00.00%");

            PatrimonioLiqAno2.Text = Session["PatrimonioLiqAno2"].ToString();
            PatrimonioLiqAno1.Text = Session["PatrimonioLiqAno1"].ToString();
            PatrimonioLiqAH.Text = (((Convert.ToDouble(PatrimonioLiqAno2.Text) -
                Convert.ToDouble(PatrimonioLiqAno1.Text)) /
                Convert.ToDouble(PatrimonioLiqAno1.Text))).ToString("00.00%");

            MargemLiquidaAno2.Text = ((Convert.ToDouble(LucroLiqAposIRAno2.Text) / Convert.ToDouble(VendasAno2.Text)) * 100).ToString("00.00");
            MargemLiquidaAno1.Text = ((Convert.ToDouble(LucroLiqAposIRAno1.Text) / Convert.ToDouble(VendasAno1.Text)) * 100).ToString("00.00");
            MargemLiquidaAH.Text = (((Convert.ToDouble(MargemLiquidaAno2.Text) -
                Convert.ToDouble(MargemLiquidaAno1.Text)) /
                Convert.ToDouble(MargemLiquidaAno1.Text)) * 100).ToString("00.00");

            GiroAtivoAno2.Text = (Convert.ToDouble(VendasAno2.Text) / Convert.ToDouble(TotalAtivoAno2.Text)).ToString("00.0000");
            GiroAtivoAno1.Text = (Convert.ToDouble(VendasAno1.Text) / Convert.ToDouble(TotalAtivoAno1.Text)).ToString("00.0000");
            GiroAtivoAH.Text = (((Convert.ToDouble(GiroAtivoAno2.Text) -
                Convert.ToDouble(GiroAtivoAno1.Text)) /
                Convert.ToDouble(GiroAtivoAno1.Text)) * 100).ToString("00.00");

            MAFAno2.Text = (Convert.ToDouble(TotalPassivoAno2.Text) / Convert.ToDouble(PatrimonioLiqAno2.Text)).ToString("00.0000");
            MAFAno1.Text = (Convert.ToDouble(TotalPassivoAno1.Text) / Convert.ToDouble(PatrimonioLiqAno1.Text)).ToString("00.0000");
            MAFAH.Text = (((Convert.ToDouble(MAFAno2.Text) -
                Convert.ToDouble(MAFAno1.Text)) /
                Convert.ToDouble(MAFAno1.Text)) * 100).ToString("00.00");

            ROAAno2.Text = (Convert.ToDouble(MargemLiquidaAno2.Text) * Convert.ToDouble(GiroAtivoAno2.Text)).ToString("00.00");
            ROAAno1.Text = (Convert.ToDouble(MargemLiquidaAno1.Text) * Convert.ToDouble(GiroAtivoAno1.Text)).ToString("00.00");
            ROAAH.Text = (((Convert.ToDouble(ROAAno2.Text) -
                Convert.ToDouble(ROAAno1.Text)) /
                Convert.ToDouble(ROAAno1.Text))).ToString("00.00%");

            ROEAno2.Text = (Convert.ToDouble(ROAAno2.Text) * Convert.ToDouble(MAFAno2.Text)).ToString("00.00");
            ROEAno1.Text = (Convert.ToDouble(ROAAno1.Text) * Convert.ToDouble(MAFAno1.Text)).ToString("00.00");
            ROEAH.Text = (((Convert.ToDouble(ROEAno2.Text) -
                Convert.ToDouble(ROEAno1.Text)) /
                Convert.ToDouble(ROEAno1.Text))).ToString("00.00%");

            CicloCaixaAno2.Text = (Convert.ToDouble(Session["IdadeMediaEstoqueAno2"]) +
                Convert.ToDouble(Session["PercMedioCobrAno2"]) -
                Convert.ToDouble(Session["PercMedioPgtoAno2"])).ToString("00.0000");

            CicloCaixaAno1.Text = (Convert.ToDouble(Session["IdadeMediaEstoqueAno1"]) +
                Convert.ToDouble(Session["PercMedioCobrAno1"]) -
                Convert.ToDouble(Session["PercMedioPgtoAno1"])).ToString("00.0000");

            CicloCaixaAH.Text = (((Convert.ToDouble(CicloCaixaAno2.Text) -
                Convert.ToDouble(CicloCaixaAno1.Text)) /
                Convert.ToDouble(CicloCaixaAno1.Text)) * 100).ToString("00.00");

            RiscoEmpresaAno2.Text = (((Convert.ToDouble(Session["TotalPCAno2"]) +
                Convert.ToDouble(Session["FinanciamentoLPAno2"])) /
                Convert.ToDouble(Session["TotalPassivoAno2"])) * 100).ToString("00.0000");

            RiscoEmpresaAno1.Text = (((Convert.ToDouble(Session["TotalPCAno1"]) +
                Convert.ToDouble(Session["FinanciamentoLPAno1"])) /
                Convert.ToDouble(Session["TotalPassivoAno1"])) * 100).ToString("00.0000");

            RiscoEmpresaAH.Text = (((Convert.ToDouble(RiscoEmpresaAno2.Text) -
                Convert.ToDouble(RiscoEmpresaAno1.Text)) /
                Convert.ToDouble(RiscoEmpresaAno1.Text)) * 100).ToString("00.00");
        }

        private void Resultados()
        {
            if (Convert.ToDouble(GiroAtivoAno2.Text) <= Convert.ToDouble(GiroAtivoAno1.Text))
            {
                Resultado.Text += "O estoque da empresa <b>está</b> \"encalhando\". <br />";
            }
            else
            {
                Resultado.Text += "O estoque da empresa <b>não está</b> \"encalhando\". <br />";
            }

            if (Session["IdadeMediaEstoqueAno2"].ToDouble() <= Session["IdadeMediaEstoqueAno1"].ToDouble())
            {
                Resultado.Text += "O estoque da empresa <b>está</b> \"encalhando\". <br />";
            }
            else
            {
                Resultado.Text += "O estoque da empresa <b>não está</b> \"encalhando\". <br />";
            }

            if (Convert.ToDouble(MargemLiquidaAH.Text) > 0)
            {
                Resultado.Text += "A margem líquida contribuiu para o <b>aumento</b> do ROE. <br />";
            }
            else
            {
                Resultado.Text += "A margem líquida contribuiu para a <b>redução</b> do ROE. <br />";
            }

            if (Convert.ToDouble(MAFAH.Text) > 0)
            {
                Resultado.Text += "O MAF contribuiu para o <b>aumento</b> do ROE. <br />";
            }
            else
            {
                Resultado.Text += "O MAF contribuiu para a <b>redução</b> do ROE. <br />";
            }

            if (Convert.ToDouble(GiroAtivoAH.Text) > 0)
            {
                Resultado.Text += "O Giro do Ativo contribuiu para o <b>aumento</b> do ROE. <br />";
            }
            else
            {
                Resultado.Text += "O Giro do Ativo contribuiu para a <b>redução</b> do ROE. <br />";
            }

            string liqSeca = Session["LiqSecaAH"].ToString();
            double liqSecaDouble = liqSeca.Replace("%", "").ToDouble();

            if (liqSecaDouble <= 1)
            {
                Resultado.Text += "A empresa <b>depende</b> da \"queima do estoque\" ";

                if (Session["LiqSecaAno2"].ToDouble() <= Session["LiqSecaAno1"].ToDouble())
                {
                    Resultado.Text += "e essa dependência aumentou. <br />";
                }
                else
                {
                    Resultado.Text += "e essa dependência diminuiu. <br />";
                }
            }
            else
            {
                Resultado.Text += "A empresa <b>não depende</b> da \"queima do estoque\"  <br />";
            }

            if (Convert.ToDouble(CicloCaixaAH.Text) <= 0)
            {
                Resultado.Text += "A necessidade do capital de giro da empresa <b>diminuiu</b>. <br />";
            }
            else
            {
                Resultado.Text += "A necessidade do capital de giro da empresa <b>aumentou</b>. <br />";
            }

            string custoAH = Session["CustoAH"].ToString();
            double custoAHDouble = liqSeca.Replace("%", "").ToDouble();
            string vendaAH = Session["VendasAH"].ToString();
            double vendaAHDouble = vendaAH.Replace("%", "").ToDouble();
            string despesaVendasAH = Session["DespesasVendasAH"].ToString();
            double despesaVendasAHDouble = despesaVendasAH.Replace("%", "").ToDouble();
            string despesaAdminAH = Session["DespesasAdministrativasAH"].ToString();
            double despesaAdminAHDouble = despesaAdminAH.Replace("%", "").ToDouble();
            string despesaFinanceiraAH = Session["DespesasFinanceirasAH"].ToString();
            double despesaFinanceiraAHDouble = despesaFinanceiraAH.Replace("%", "").ToDouble();

            if (custoAHDouble > vendaAHDouble)
            {
                Resultado.Text += "A empresa deve cortar custos. <br/>";
                if (despesaVendasAHDouble > vendaAHDouble)
                {
                    Resultado.Text += "A empresa deve cortar custos de <b>vendas</b>. <br />";
                }
                if (despesaAdminAHDouble > vendaAHDouble)
                {
                    Resultado.Text += "A empresa deve cortar custos de <b>despesas administrativas</b>. <br />";
                }
                if (despesaFinanceiraAHDouble > vendaAHDouble)
                {
                    Resultado.Text += "A empresa deve cortar custos de <b>despesas financeiras</b>. <br />";
                }
            }
            else
            {
                Resultado.Text += "A empresa não precisa realizar cortes <br />";
            }

            if (Convert.ToDouble(RiscoEmpresaAno2.Text) > Convert.ToDouble(RiscoEmpresaAno1.Text))
            {
                Resultado.Text += "O nível de risco da empresa <b>aumentou</b>. <br />";
            }
            else
            {
                Resultado.Text += "O nível de risco da empresa <b>diminuiu</b>. <br />";
            }

            if (Convert.ToDouble(MargemLiquidaAH.Text) > 0)
            {
                Resultado.Text += "A lucratividade da empresa <b>aumentou</b>. <br />";
            }
            else
            {
                Resultado.Text += "A lucratividade da empresa <b>diminuiu</b>. <br />";
            }
        }

        private void Porcentagens()
        {
            //adiciona o simbolo 
            MargemLiquidaAno2.Text += "%";
            MargemLiquidaAno1.Text += "%";
            ROAAno2.Text += "%";
            ROAAno1.Text += "%";
            ROEAno2.Text += "%";
            ROEAno1.Text += "%";
            MargemLiquidaAH.Text += "%";
            MAFAH.Text += "%";
            GiroAtivoAH.Text += "%";

        }

        protected void Imprimir_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "PrintOperation", "printing()", true);
        }

    }
}