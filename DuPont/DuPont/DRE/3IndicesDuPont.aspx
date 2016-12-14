<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="3IndicesDuPont.aspx.cs" Inherits="DuPont.DRE.IndicesDuPont" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jumbotron">
        <table class="table table-responsive table-bordered">
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
                    <asp:TextBox runat="server" ID="CapitalCirculanteLiqAno2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="CapitalCirculanteLiqAno1" /></td>
                <td>
                    <asp:TextBox runat="server" ID="CapitalCirculanteLiqAH" /></td>
            </tr>
            <tr>
                <td>Liquidez Corrente
                </td>
                <td>Ativo Circulante / Passivo Circulante
                </td>
                <td>
                    <asp:TextBox runat="server" ID="LiqCorrenteAno2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="LiqCorrenteAno1" /></td>
                <td>
                    <asp:TextBox runat="server" ID="LiqCorrenteAH" /></td>
            </tr>
            <tr>
                <td>Liquidez Seca
                </td>
                <td>(Ativo Circulante - Estoque) / Passivo Circulante
                </td>
                <td>
                    <asp:TextBox runat="server" ID="LiqSecaAno2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="LiqSecaAno1" /></td>
                <td>
                    <asp:TextBox runat="server" ID="LiqSecaAH" /></td>
            </tr>
            <tr>
                <td>Giro do Estoque
                </td>
                <td>Custo/Estoque
                </td>
                <td>
                    <asp:TextBox runat="server" ID="GiroEstoqueAno2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="GiroEstoqueAno1" /></td>
                <td>
                    <asp:TextBox runat="server" ID="GiroEstoqueAH" /></td>
            </tr>
            <tr>
                <td>Idade Média Estoque
                </td>
                <td>360/Giro Estoque
                </td>
                <td>
                    <asp:TextBox runat="server" ID="IdadeMediaEstoqueAno2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="IdadeMediaEstoqueAno1" /></td>
                <td>
                    <asp:TextBox runat="server" ID="IdadeMediaEstoqueAH" /></td>
            </tr>
            <tr>
                <td>Perc. Médio Cobrança
                </td>
                <td>Dupl. Receber / Vendas Médias Diárias
                </td>
                <td>
                    <asp:TextBox runat="server" ID="PercMedioCobrAno2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="PercMedioCobrAno1" /></td>
                <td>
                    <asp:TextBox runat="server" ID="PercMedioCobrAH" /></td>
            </tr>
            <tr>
                <td>Perc. Médio Pagamento
                </td>
                <td>Dupl. Paga / Compra Médias Diárias
                </td>
                <td>
                    <asp:TextBox runat="server" ID="PercMedioPgtoAno2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="PercMedioPgtoAno1" /></td>
                <td>
                    <asp:TextBox runat="server" ID="PercMedioPgtoAH" /></td>
            </tr>
            <tr>
                <td>Giro Ativo Imobilizado
                </td>
                <td>Vendas (*) / Ativo Imobilizado
                </td>
                <td>
                    <asp:TextBox runat="server" ID="GiroAtivoImobAno2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="GiroAtivoImobAno1" /></td>
                <td>
                    <asp:TextBox runat="server" ID="GiroAtivoImobAH" /></td>
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
            <tr class="text-center">
                <td colspan="2">
                    <asp:Button CssClass="btn btn-success btn-lg btn-block" Text="Calcular" ID="Calcular" runat="server" OnClick="Calcular_Click" />
                </td>
                <td colspan="3">
                    <asp:Button CssClass="btn btn-primary btn-lg btn-block" Text="Continuar" ID="Continuar" runat="server" OnClick="Continuar_Click" Enabled="false" />
                </td>
            </tr>
        </table>
    </div>


</asp:Content>
