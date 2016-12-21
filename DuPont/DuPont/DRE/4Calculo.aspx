<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="4Calculo.aspx.cs" Inherits="DuPont.DRE.Calculo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function print() {
            window.print();
        }
    </script>
    <style type="text/css">
        .auto-style1 {
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <table class="table table-bordered table-responsive">
            <tr>
                <th>VALORES</th>
                <th>ANO 2</th>
                <th>ANO 1</th>
                <th>AH %</th>
            </tr>
            <tr>
                <td>Lucro Líquido Após IR</td>

                <td>
                    <asp:TextBox runat="server" ID="LucroLiqAposIRAno2" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="LucroLiqAposIRAno1" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="LucroLiqAposIRAH" Enabled="False" /></td>
            </tr>
            <tr>
                <td>Vendas</td>

                <td>
                    <asp:TextBox runat="server" ID="VendasAno2" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="VendasAno1" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="VendasAH" Enabled="False" /></td>
            </tr>

            <tr>
                <td>Margem Líquida</td>

                <td>
                    <asp:TextBox runat="server" ID="MargemLiquidaAno2" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="MargemLiquidaAno1" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="MargemLiquidaAH" Enabled="False" /></td>
            </tr>

            <tr>
                <td>ROA (Retorno s/ ativo)</td>

                <td>
                    <asp:TextBox runat="server" ID="ROAAno2" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="ROAAno1" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="ROAAH" Enabled="False" /></td>
            </tr>

            <tr>
                <td>ROE (Retorno s/ Patr. Líquido)</td>

                <td>
                    <asp:TextBox runat="server" ID="ROEAno2" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="ROEAno1" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="ROEAH" Enabled="False" /></td>
            </tr>

            <tr>
                <td>Giro do Ativo</td>

                <td>
                    <asp:TextBox runat="server" ID="GiroAtivoAno2" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="GiroAtivoAno1" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="GiroAtivoAH" Enabled="False" /></td>
            </tr>

            <tr>
                <td>Total do Ativo</td>

                <td>
                    <asp:TextBox runat="server" ID="TotalAtivoAno2" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TotalAtivoAno1" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TotalAtivoAH" Enabled="False" /></td>
            </tr>

            <tr>
                <td>Total do Passivo</td>

                <td>
                    <asp:TextBox runat="server" ID="TotalPassivoAno2" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TotalPassivoAno1" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TotalPassivoAH" Enabled="False" /></td>
            </tr>

            <tr>
                <td>Patrimônio Líquido</td>

                <td>
                    <asp:TextBox runat="server" ID="PatrimonioLiqAno2" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="PatrimonioLiqAno1" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="PatrimonioLiqAH" Enabled="False" /></td>
            </tr>

            <tr>
                <td>MAF (Mult. Alavanc. Fin)</td>

                <td>
                    <asp:TextBox runat="server" ID="MAFAno2" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="MAFAno1" Enabled="False" /></td>
                <td>
                    <asp:TextBox runat="server" ID="MAFAH" Enabled="False" /></td>
            </tr>

            <tr>
                <td>Ciclo de Caixa = IME + PMC - PMP
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CicloCaixaAno2" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CicloCaixaAno1" />
                </td>
            </tr>
            <tr>
                <td>Risco da Empresa = (PC + ELP) / Passivo Total
                </td>
                <td>
                    <asp:TextBox runat="server" ID="RiscoEmpresaAno2" />
                </td>
                <td>
                    <asp:TextBox runat="server" ID="RiscoEmpresaAno1" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Label runat="server" ID="Resultado" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:Button CssClass="btn btn-lg btn-block btn-info" Text="Imprimir" runat="server" ID="Imprimir" OnClientClick="print();" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>



