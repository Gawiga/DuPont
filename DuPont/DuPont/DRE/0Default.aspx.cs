using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuPont.DRE
{
    public partial class Default : BaseWebUI
    {
        protected void Page_Load(object sender, EventArgs e)
        {  //teste


        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(txtEmpresa.Text))
            {
                MessageBox("Preencha a Empresa.");
            }

            if (String.IsNullOrEmpty(txtAno1.Text))
            {
                MessageBox("Preencha o Ano 1.");
            }

            if (String.IsNullOrEmpty(txtAno2.Text))
            {
                MessageBox("Preencha o Ano 2.");
            }

            Session["Empresa"] = txtEmpresa.Text;
            Session["Ano1"] = txtAno1.Text;
            Session["Ano2"] = txtAno2.Text;

            Response.Redirect("../DRE/1Balanco.aspx", true);
        }
    }
}