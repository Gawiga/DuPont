using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuPont
{
    public partial class Balanco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Empresa.InnerText = Session["Empresa"].ToString();
            AtivoAno1.InnerText = Session["Ano1"].ToString();
            AtivoAno2.InnerText = Session["Ano2"].ToString();
            PassivoAno1.InnerText = Session["Ano1"].ToString();
            PassivoAno2.InnerText = Session["Ano2"].ToString();

        }

        protected void Calcular_Click(object sender, EventArgs e)
        {
            TotalACAno2.Text = (Convert.ToInt32(CIRCDispAno2.Text) + 
                Convert.ToInt32(CIRCDuplRecAno2.Text) - 
                Convert.ToInt32(CIRCDuplDescAno2.Text) + 
                Convert.ToInt32(CIRCEstoquesAno2.Text) + 
                Convert.ToInt32(CIRCAOutrosAno2.Text)).ToString();

            TotalACAno1.Text = (Convert.ToInt32(CIRCDispAno1.Text) +
                Convert.ToInt32(CIRCDuplRecAno1.Text) -
                Convert.ToInt32(CIRCDuplDescAno1.Text) +
                Convert.ToInt32(CIRCEstoquesAno1.Text) +
                Convert.ToInt32(CIRCAOutrosAno1.Text)).ToString();

            TotalPCAno2.Text = (Convert.ToInt32(CIRCFornAno2.Text) +
                Convert.ToInt32(CIRCSalAno2.Text) +
                Convert.ToInt32(CIRCImpostAno2.Text) +
                Convert.ToInt32(CIRCFinAPagarAno2.Text) +
                Convert.ToInt32(CIRCAOutrosAno2.Text)).ToString();

            TotalPCAno1.Text = (Convert.ToInt32(CIRCFornAno1.Text) + 
                Convert.ToInt32(CIRCSalAno1.Text) + 
                Convert.ToInt32(CIRCImpostAno1.Text) +
                Convert.ToInt32(CIRCFinAPagarAno1.Text) +
                Convert.ToInt32(CIRCAOutrosAno1.Text)).ToString();

            NCIRCATotalRLPAno2.Text = (Convert.ToInt32(NCIRCContasARecAno2.Text) +
                Convert.ToInt32(NCIRCAOutrasContasLongPrazoAno2.Text)).ToString();

            NCIRCATotalRLPAno1.Text = (Convert.ToInt32(NCIRCContasARecAno1.Text) +
                Convert.ToInt32(NCIRCAOutrasContasLongPrazoAno1.Text)).ToString();

            NCIRCPTotalRLPAno2.Text = (Convert.ToInt32(NCIRCFinLongPrazoAno2.Text) +
                Convert.ToInt32(NCIRCPOutrasContasLongPrazoAno2.Text)).ToString();

            NCIRCPTotalRLPAno1.Text = (Convert.ToInt32(NCIRCFinLongPrazoAno1.Text) +
                Convert.ToInt32(NCIRCPOutrasContasLongPrazoAno1.Text)).ToString();

            INVTotalImobAno2.Text = (Convert.ToInt32(INVImobilizadoAno2.Text) -
                Convert.ToInt32(INVDeprecAcumAno2.Text)).ToString();

            INVTotalImobAno1.Text = (Convert.ToInt32(INVImobilizadoAno1.Text) -
                Convert.ToInt32(INVDeprecAcumAno1.Text)).ToString();

            INVTotalPLAno2.Text = (Convert.ToInt32(INVCapSocialAno2.Text) +
                Convert.ToInt32(INVLucrosRetAno2.Text)).ToString();

            INVTotalPLAno1.Text = (Convert.ToInt32(INVCapSocialAno1.Text) +
                Convert.ToInt32(INVLucrosRetAno1.Text)).ToString();

            TOTALATIVOANO2.Text = (Convert.ToInt32(TotalACAno2.Text) + 
                Convert.ToInt32(NCIRCATotalRLPAno2.Text) +
                Convert.ToInt32(INVTotalImobAno2.Text)).ToString();

            TOTALATIVOANO1.Text = (Convert.ToInt32(TotalACAno1.Text) +
                Convert.ToInt32(NCIRCATotalRLPAno1.Text) +
                Convert.ToInt32(INVTotalImobAno1.Text)).ToString();

            TOTALPASSIVOANO2.Text = (Convert.ToInt32(TotalPCAno2.Text) +
                Convert.ToInt32(NCIRCPTotalRLPAno2.Text) +
                Convert.ToInt32(INVTotalPLAno2.Text)).ToString();

            TOTALPASSIVOANO1.Text = (Convert.ToInt32(TotalPCAno1.Text) +
                Convert.ToInt32(NCIRCPTotalRLPAno1.Text) +
                Convert.ToInt32(INVTotalPLAno1.Text)).ToString();
        }

        protected void Continuar_Click(object sender, EventArgs e)
        {
            Response.Redirect("../DRE/DREEmpresa.aspx", true);
        }
    }
}