<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="3IndicesDuPont.aspx.cs" Inherits="DuPont.DRE.IndicesDuPont" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function printing() {
            window.print();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 id="Empresa" class="text-uppercase" runat="server"></h1>
    <div class="jumbotron">
        <div class="table-responsive">
            <table class="table  table-bordered">
                <tr>
                    <th>Índice</th>
                    <th>Formula</th>
                    <th>Ano 2</th>
                    <th>Ano 1</th>
                    <th>Variação %</th>
                </tr>
                <tr>
                    <td>Capital Circulante Líquido</td>
                    <td>Ativo Circulante - Passivo Circulante
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="CapitalCirculanteLiqAno2" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="CapitalCirculanteLiqAno1" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="CapitalCirculanteLiqAH" Enabled="false" /></td>
                </tr>
                <tr>
                    <td>Liquidez Corrente
                    </td>
                    <td>Ativo Circulante / Passivo Circulante
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="LiqCorrenteAno2" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="LiqCorrenteAno1" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="LiqCorrenteAH" Enabled="false" /></td>
                </tr>
                <tr>
                    <td>Liquidez Seca
                    </td>
                    <td>(Ativo Circulante - Estoque) / Passivo Circulante
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="LiqSecaAno2" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="LiqSecaAno1" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="LiqSecaAH" Enabled="false" /></td>
                </tr>
                <tr>
                    <td>Giro do Estoque
                    </td>
                    <td>Custo/Estoque
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="GiroEstoqueAno2" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="GiroEstoqueAno1" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="GiroEstoqueAH" Enabled="false" /></td>
                </tr>
                <tr>
                    <td>Idade Média Estoque
                    </td>
                    <td>360/Giro Estoque
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="IdadeMediaEstoqueAno2" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="IdadeMediaEstoqueAno1" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="IdadeMediaEstoqueAH" Enabled="false" /></td>
                </tr>
                <tr>
                    <td>Perc. Médio Cobrança
                    </td>
                    <td>Dupl. Receber / Vendas Médias Diárias
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="PercMedioCobrAno2" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="PercMedioCobrAno1" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="PercMedioCobrAH" Enabled="false" /></td>
                </tr>
                <tr>
                    <td>Perc. Médio Pagamento
                    </td>
                    <td>Dupl. Paga / Compra Médias Diárias
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="PercMedioPgtoAno2" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="PercMedioPgtoAno1" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="PercMedioPgtoAH" Enabled="false" /></td>
                </tr>
                <tr>
                    <td>Giro Ativo Imobilizado
                    </td>
                    <td>Vendas (*) / Ativo Imobilizado
                    </td>
                    <td>
                        <asp:TextBox runat="server" ID="GiroAtivoImobAno2" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="GiroAtivoImobAno1" Enabled="false" /></td>
                    <td>
                        <asp:TextBox runat="server" ID="GiroAtivoImobAH" Enabled="false" /></td>
                </tr>
                <tr>
                    <td colspan="5" class="text-center">
                        <strong>Outras formulas</strong><br />
                        Vendas médias diárias = vendas / 360
                    <br />
                        Compras médias diárias = (custo x 70%) / 360
                    <br />
                        (Obs. Utilizado 70% de custos apenas para fins didáticos)<br />
                        (*) Receita líquida de vendas
                    </td>
                </tr>
            </table>
            <div>
                <div class="col-sm-6">
                    <asp:Button CssClass="btn btn-lg btn-block btn-info" Text="Imprimir" runat="server" ID="Imprimir" OnClick="Imprimir_Click" />
                </div>
<%--                <div class="col-sm-4">
                    <asp:Button CssClass="btn btn-success btn-lg btn-block" Text="Calcular" ID="Calcular" runat="server" OnClick="Calcular_Click" />
                </div>--%>
                <div class="col-sm-6">
                    <asp:Button CssClass="btn btn-primary btn-lg btn-block" Text="Continuar" ID="Continuar" runat="server" OnClick="Continuar_Click" Enabled="false" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
