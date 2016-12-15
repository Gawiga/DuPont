<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="4Calculo.aspx.cs" Inherits="DuPont.DRE.Calculo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function print() {
            window.print();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <table class="table">
            <tr>
                <td>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">Lucro Líquido Após IR</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="LucroLiqAposIRAno2" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="LucroLiqAposIRAno1" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="LucroLiqAposIRAH" Enabled="False" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">Vendas</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="VendasAno2" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="VendasAno1" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="VendasAH" Enabled="False" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">Margem Líquida</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="MargemLiquidaAno2" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="MargemLiquidaAno1" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="MargemLiquidaAH" Enabled="False" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">ROA (Retorno s/ ativo)</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="ROAAno2" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="ROAAno1" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="ROAAH" Enabled="False" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">ROE (Retorno s/ Patr. Líquido)</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="ROEAno2" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="ROEAno1" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="ROEAH" Enabled="False" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">Giro do Ativo</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="GiroAtivoAno2" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="GiroAtivoAno1" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="GiroAtivoAH" Enabled="False" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">Total do Ativo</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="TotalAtivoAno2" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="TotalAtivoAno1" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="TotalAtivoAH" Enabled="False" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">Total do Passivo</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="TotalPassivoAno2" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="TotalPassivoAno1" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="TotalPassivoAH" Enabled="False" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">Patrimônio Líquido</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="PatrimonioLiqAno2" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="PatrimonioLiqAno1" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="PatrimonioLiqAH" Enabled="False" /></td>
                        </tr>
                    </table>

                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">MAF (Mult. Alavanc. Fin)</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="MAFAno2" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="MAFAno1" Enabled="False" /></td>
                            <td>
                                <asp:TextBox runat="server" ID="MAFAH" Enabled="False" /></td>
                        </tr>
                    </table>

                    <table>
                        <tr>
                            <td>Ciclo de Caixa = IME + PMC - PMP
                                <br />
                                Risco da Empresa = (PC + ELP) / Passivo Total
                                <br />
                                O estoque da empresa está encalhando.

                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" Visible="false"></asp:CheckBoxList>
                            </td>
                        </tr>
                    </table>
                    <asp:Button CssClass="btn btn-lg btn-block btn-info" Text="Imprimir" runat="server" ID="Imprimir" OnClientClick="print();"  />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>



