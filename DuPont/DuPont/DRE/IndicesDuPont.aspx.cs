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
            CapitalCirculanteLiqAno2.Text = (Ext.ToDouble(Session["TotalACAno2"]) - Ext.ToDouble(Session["TotalPCAno2"])).ToString();
            CapitalCirculanteLiqAno1.Text = (Ext.ToDouble(Session["TotalACAno1"]) - Ext.ToDouble(Session["TotalPCAno1"])).ToString();

            CapitalCirculanteLiqAH.Text = (((Convert.ToDouble(CapitalCirculanteLiqAno2.Text) -
                Convert.ToDouble(CapitalCirculanteLiqAno1.Text)) /
                Convert.ToDouble(CapitalCirculanteLiqAno1.Text)) * 100).ToString("##.##");

            LiqCorrenteAno2.Text = (Ext.ToDouble(Session["TotalACAno2"]) / Ext.ToDouble(Session["TotalPCAno2"])).ToString();
            LiqCorrenteAno1.Text = (Ext.ToDouble(Session["TotalACAno1"]) / Ext.ToDouble(Session["TotalPCAno1"])).ToString();

            LiqCorrenteAH.Text = (((Convert.ToDouble(LiqCorrenteAno2.Text) -
                Convert.ToDouble(LiqCorrenteAno1.Text)) /
                Convert.ToDouble(LiqCorrenteAno1.Text)) * 100).ToString("##.##");

            LiqSecaAno2.Text = (Ext.ToDouble(Session["TotalACAno2"]) - Ext.ToDouble(Session["EstoqueAno2"]) / Ext.ToDouble(Session["TotalPCAno2"])).ToString(); 
            LiqSecaAno1.Text = (Ext.ToDouble(Session["TotalACAno1"]) - Ext.ToDouble(Session["EstoqueAno1"]) / Ext.ToDouble(Session["TotalPCAno1"])).ToString();

            LiqSecaAH.Text = (((Convert.ToDouble(LiqSecaAno2.Text) -
                Convert.ToDouble(LiqSecaAno1.Text)) /
                Convert.ToDouble(LiqSecaAno1.Text)) * 100).ToString("##.##");

            GiroEstoqueAno2.Text = (Ext.ToDouble(Session["CustoAno2"]) / Ext.ToDouble(Session["EstoqueAno2"])).ToString();
            GiroEstoqueAno1.Text = (Ext.ToDouble(Session["CustoAno1"]) / Ext.ToDouble(Session["EstoqueAno1"])).ToString();

            GiroEstoqueAH.Text = (((Convert.ToDouble(GiroEstoqueAno2.Text) - 
                Convert.ToDouble(GiroEstoqueAno1.Text)) / 
                Convert.ToDouble(GiroEstoqueAno1.Text)) * 100).ToString("##.##");

            IdadeMediaEstoqueAno2.Text = (360D / Convert.ToDouble(GiroEstoqueAno2.Text)).ToString();
            IdadeMediaEstoqueAno1.Text = (360D / Convert.ToDouble(GiroEstoqueAno1.Text)).ToString();

            IdadeMediaEstoqueAH.Text = (((Convert.ToDouble(IdadeMediaEstoqueAno2.Text) -
                Convert.ToDouble(GiroEstoqueAno1.Text)) /
                Convert.ToDouble(GiroEstoqueAno1.Text)) * 100).ToString("##.##");


 
        }

        protected void Continuar_Click(object sender, EventArgs e)
        {

        }
    }
}