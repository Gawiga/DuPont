<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="IndicesDuPont.aspx.cs" Inherits="DuPont.DRE.IndicesDuPont" %>

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
                <td>AC - PC
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
                <td>AC/PC
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
                <td>(AC - Estoque)/PC
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
                <td>Dupl. Receber/Vendas Médias Diárias
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
                <td>Dupl. Paga/Compra Médias Diárias
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
                <td>Vendas (*)/Ativo Imobilizado
                </td>
                <td>
                    <asp:TextBox runat="server" ID="GiroAtivoImobAno2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="GiroAtivoImobAno1" /></td>
                <td>
                    <asp:TextBox runat="server" ID="GiroAtivoImobAH" /></td>
            </tr>
        </table>
    </div>


</asp:Content>
