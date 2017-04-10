using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuPont.DRE
{
    public partial class Default : BaseWebUI
    {
        Functions f = new Functions();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string strConexao = ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString;
            SqlConnection conn = new SqlConnection(strConexao);
            conn.Open();

            string sql = String.Format("SET NOCOUNT ON; SELECT id, nome, empresa FROM tblCadastro WHERE email = '{0}' AND senha = '{1}'",
                txtEmail.Text, txtSenha.Text);

            DataTable dt = f.DT(sql);
            conn.Close();

            if (dt.Rows.Count != 1)
            {
                MessageBox("Usuário ou senha inválido!");
            }
            else
            {
                Session["Nome"] = dt.Rows[0]["nome"].ToString();
                Session["Empresa"] = dt.Rows[0]["empresa"].ToString();
                Session["Ano1"] = txtAno1.Text;
                Session["Ano2"] = txtAno2.Text;
                Response.Redirect("../DRE/1Balanco.aspx", true);
            }
        }
    }
}