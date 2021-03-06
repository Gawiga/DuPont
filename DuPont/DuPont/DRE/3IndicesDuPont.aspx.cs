﻿using System;
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
            if (String.IsNullOrEmpty(Session["Empresa"].ToString()))
            {
                Response.Redirect("../DRE/0Default.aspx");
            }
            else
            {
                Calcular_Click(null, null);
            }
        }

        protected void Calcular_Click(object sender, EventArgs e)
        {
            CapitalCirculanteLiqAno2.Text = (Ext.ToDouble(Session["TotalACAno2"]) - Ext.ToDouble(Session["TotalPCAno2"])).ToString();
            CapitalCirculanteLiqAno1.Text = (Ext.ToDouble(Session["TotalACAno1"]) - Ext.ToDouble(Session["TotalPCAno1"])).ToString();
            CapitalCirculanteLiqAH.Text = ((Convert.ToDouble(CapitalCirculanteLiqAno2.Text) -
                Convert.ToDouble(CapitalCirculanteLiqAno1.Text)) /
                Convert.ToDouble(CapitalCirculanteLiqAno1.Text)).ToString("00.00%");

            LiqCorrenteAno2.Text = (Ext.ToDouble(Session["TotalACAno2"]) / Ext.ToDouble(Session["TotalPCAno2"])).ToString();
            LiqCorrenteAno1.Text = (Ext.ToDouble(Session["TotalACAno1"]) / Ext.ToDouble(Session["TotalPCAno1"])).ToString();
            LiqCorrenteAH.Text = ((Convert.ToDouble(LiqCorrenteAno2.Text) -
                Convert.ToDouble(LiqCorrenteAno1.Text)) /
                Convert.ToDouble(LiqCorrenteAno1.Text)).ToString("00.00%");

            LiqSecaAno2.Text = ((Ext.ToDouble(Session["TotalACAno2"]) - Ext.ToDouble(Session["EstoqueAno2"])) / Ext.ToDouble(Session["TotalPCAno2"])).ToString();
            LiqSecaAno1.Text = ((Ext.ToDouble(Session["TotalACAno1"]) - Ext.ToDouble(Session["EstoqueAno1"])) / Ext.ToDouble(Session["TotalPCAno1"])).ToString();
            LiqSecaAH.Text = ((Convert.ToDouble(LiqSecaAno2.Text) -
                Convert.ToDouble(LiqSecaAno1.Text)) /
                Convert.ToDouble(LiqSecaAno1.Text)).ToString("00.00%");

            GiroEstoqueAno2.Text = (Ext.ToDouble(Session["CustoAno2"]) / Ext.ToDouble(Session["EstoqueAno2"])).ToString();
            GiroEstoqueAno1.Text = (Ext.ToDouble(Session["CustoAno1"]) / Ext.ToDouble(Session["EstoqueAno1"])).ToString();
            GiroEstoqueAH.Text = ((Convert.ToDouble(GiroEstoqueAno2.Text) -
                Convert.ToDouble(GiroEstoqueAno1.Text)) /
                Convert.ToDouble(GiroEstoqueAno1.Text)).ToString("00.00%");

            IdadeMediaEstoqueAno2.Text = (360D / Convert.ToDouble(GiroEstoqueAno2.Text)).ToString();
            IdadeMediaEstoqueAno1.Text = (360D / Convert.ToDouble(GiroEstoqueAno1.Text)).ToString();
            IdadeMediaEstoqueAH.Text = ((Convert.ToDouble(IdadeMediaEstoqueAno2.Text) -
                Convert.ToDouble(IdadeMediaEstoqueAno1.Text)) /
                Convert.ToDouble(IdadeMediaEstoqueAno1.Text)).ToString("00.00%");

            PercMedioCobrAno2.Text = (Ext.ToDouble(Session["DuplicatasReceberAno2"]) / (Ext.ToDouble(Session["VendasAno2"]) / 360D )).ToString();
            PercMedioCobrAno1.Text = (Ext.ToDouble(Session["DuplicatasReceberAno1"]) / (Ext.ToDouble(Session["VendasAno1"]) / 360D )).ToString();
            PercMedioCobrAH.Text = ((Convert.ToDouble(PercMedioCobrAno2.Text) -
                Convert.ToDouble(PercMedioCobrAno1.Text)) /
                Convert.ToDouble(PercMedioCobrAno1.Text)).ToString("00.00%");

            PercMedioPgtoAno2.Text = (Ext.ToDouble(Session["DuplicatasPagarAno2"]) / (((Ext.ToDouble(Session["CustoAno2"]) * 0.70)) / 360D)).ToString();
            PercMedioPgtoAno1.Text = (Ext.ToDouble(Session["DuplicatasPagarAno1"]) / (((Ext.ToDouble(Session["CustoAno1"]) * 0.70)) / 360D)).ToString();
            PercMedioPgtoAH.Text = ((Convert.ToDouble(PercMedioPgtoAno2.Text) -
                Convert.ToDouble(PercMedioPgtoAno1.Text)) /
                Convert.ToDouble(PercMedioPgtoAno1.Text)).ToString("00.00%");

            GiroAtivoImobAno2.Text = (Ext.ToDouble(Session["VendasAno2"]) / Ext.ToDouble(Session["AtivoImobilizadoAno2"])).ToString();
            GiroAtivoImobAno1.Text = (Ext.ToDouble(Session["VendasAno1"]) / Ext.ToDouble(Session["AtivoImobilizadoAno1"])).ToString();
            GiroAtivoImobAH.Text = ((Convert.ToDouble(GiroAtivoImobAno2.Text) -
                Convert.ToDouble(GiroAtivoImobAno1.Text)) /
                Convert.ToDouble(GiroAtivoImobAno1.Text)).ToString("00.00%");

            Continuar.Enabled = true;

        }

        protected void Continuar_Click(object sender, EventArgs e)
        {
            Session["IdadeMediaEstoqueAno1"] = IdadeMediaEstoqueAno1.Text;
            Session["IdadeMediaEstoqueAno2"] = IdadeMediaEstoqueAno2.Text;
            Session["PercMedioCobrAno1"] = PercMedioCobrAno1.Text;
            Session["PercMedioCobrAno2"] = PercMedioCobrAno2.Text;
            Session["PercMedioPgtoAno1"] = PercMedioPgtoAno1.Text;
            Session["PercMedioPgtoAno2"] = PercMedioPgtoAno2.Text;
            Session["LiqSecaAno1"] = LiqSecaAno1.Text;
            Session["LiqSecaAno2"] = LiqSecaAno2.Text;
            Session["LiqSecaAH"] = LiqSecaAH.Text;

            Response.Redirect("../DRE/4Calculo.aspx", true);
        }

        protected void Imprimir_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "PrintOperation", "printing()", true);
        }
    }
}