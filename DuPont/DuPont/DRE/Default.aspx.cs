using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuPont.DRE
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Session["Empresa"] = txtEmpresa.Text;
            Session["Ano1"] = txtAno1.Text;
            Session["Ano2"] = txtAno2.Text;

            Response.Redirect("../DRE/Balanco.aspx", true);
        }
    }
}