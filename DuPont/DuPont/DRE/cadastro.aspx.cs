using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DuPont.DRE
{
    public partial class cadastro : BaseWebUI
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {
            if (txtSenha.Text == txtRepeteSenha.Text)
            {
                string strConexao = ConfigurationManager.ConnectionStrings["Conexao"].ConnectionString;
                SqlConnection conn = new SqlConnection(strConexao);
                conn.Open();

                string sql = String.Format("SET NOCOUNT ON; INSERT INTO tblCadastro " +
                    "VALUES ('{0}', '{1}', '{2}', '{3}'); SELECT SCOPE_IDENTITY() AS ID",
                    txtNomeCompleto.Text, txtEmpresa.Text, txtEmail.Text, txtSenha.Text);

                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.ExecuteNonQuery();

                conn.Close();

                //limpar form
                txtNomeCompleto.Text = "";
                txtEmpresa.Text = "";
                txtEmail.Text = "";

                MessageBox("Cadastro realizado com sucesso!");
            }
            else
            {
                MessageBox("As senhas digitadas não são iguais!");
            }
        }

    }
}