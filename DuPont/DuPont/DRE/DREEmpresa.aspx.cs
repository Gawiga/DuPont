﻿using System;
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
            #region Calculo de Lucro

            double DespesasAno2 = Convert.ToDouble(txtAno2DespesasVendas.Text) +
                Convert.ToDouble(txtAno2DespesasAdministrativas.Text) +
                Convert.ToDouble(txtAno2DespesasFinanceiras.Text);

            double DespesasAno1 = Convert.ToDouble(txtAno1DespesasVendas.Text) +
                Convert.ToDouble(txtAno1DespesasAdministrativas.Text) +
                Convert.ToDouble(txtAno1DespesasFinanceiras.Text);

            double LucroBruto2 = (Convert.ToDouble(txtAno2Receita.Text) - Convert.ToDouble(txtAno2CustoVendas.Text));
            txtAno2LucroBruto.Text = LucroBruto2.ToString();

            double LucroBruto1 = (Convert.ToDouble(txtAno1Receita.Text) - Convert.ToDouble(txtAno1CustoVendas.Text));
            txtAno1LucroBruto.Text = LucroBruto1.ToString();

            double LucroAntesImpostoAno2 = LucroBruto2 - DespesasAno2;
            txtAno2LucroAntImpRenda.Text = LucroAntesImpostoAno2.ToString();

            double LucroAntesImpostoAno1 = LucroBruto1 - DespesasAno1;
            txtAno1LucroAntImpRenda.Text = LucroAntesImpostoAno1.ToString();

            double LucroLiquidoAno2 = LucroAntesImpostoAno2 - Convert.ToDouble(txtAno2ImpostoRenda.Text);
            txtAno2LucroLiquido.Text = LucroLiquidoAno2.ToString();

            double LucroLiquidoAno1 = LucroAntesImpostoAno1 - Convert.ToDouble(txtAno1ImpostoRenda.Text);
            txtAno1LucroLiquido.Text = LucroLiquidoAno1.ToString();

            #endregion

            #region Calculo de Percentagens

            lblPercReceita.Text = (((Convert.ToDouble(txtAno2Receita.Text) -
                Convert.ToDouble(txtAno1Receita.Text)) /
                Convert.ToDouble(txtAno1Receita.Text)) * 100).ToString("##.##");

            lblPercCustoVendas.Text = (((Convert.ToDouble(txtAno2CustoVendas.Text) -
                Convert.ToDouble(txtAno1CustoVendas.Text)) /
                Convert.ToDouble(txtAno1CustoVendas.Text)) * 100).ToString("##.##");

            lblPercLucroBruto.Text = (((LucroBruto2 - LucroBruto1) / LucroBruto1) * 100).ToString("##.##");

            lblPercDespesasVendas.Text = (((Convert.ToDouble(txtAno2DespesasVendas.Text) -
                Convert.ToDouble(txtAno1DespesasVendas.Text)) /
                Convert.ToDouble(txtAno1DespesasVendas.Text)) * 100).ToString("##.##");

            lblPercDespesasAdministrativas.Text = (((Convert.ToDouble(txtAno2DespesasAdministrativas.Text) -
                Convert.ToDouble(txtAno1DespesasAdministrativas.Text)) /
                Convert.ToDouble(txtAno1DespesasAdministrativas.Text)) * 100).ToString("##.##");

            lblPercDespesasFinanceiras.Text = (((Convert.ToDouble(txtAno2DespesasFinanceiras.Text) -
                Convert.ToDouble(txtAno1DespesasFinanceiras.Text)) /
                Convert.ToDouble(txtAno1DespesasFinanceiras.Text)) * 100).ToString("##.##");

            lblPercLucroAntImpRenda.Text = (((LucroAntesImpostoAno2 - LucroAntesImpostoAno1) / LucroAntesImpostoAno1) * 100).ToString("##.##");

            lblPercImpostoRenda.Text = (((Convert.ToDouble(txtAno2ImpostoRenda.Text) -
                Convert.ToDouble(txtAno1ImpostoRenda.Text)) /
                Convert.ToDouble(txtAno1ImpostoRenda.Text)) * 100).ToString("##.##");

            lblPercLucroLiquido.Text = (((LucroLiquidoAno2 - LucroLiquidoAno1) / LucroLiquidoAno1) * 100).ToString("##.##");

            #endregion
        }

        protected void Continuar_Click1(object sender, EventArgs e)
        {

        }


    }
}