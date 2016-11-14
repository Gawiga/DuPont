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
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Liquidez Corrente
                </td>
                <td>AC/PC
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Liquidez Seca
                </td>
                <td>(AC - Estoque)/PC
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Giro do Estoque
                </td>
                <td>Custo/Estoque
                </td>
                <td></td>
                <td></td>

                <td></td>
            </tr>
            <tr>
                <td>Idade Média Estoque
                </td>
                <td>360/Giro Estoque
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Perc. Médio Cobrança
                </td>
                <td>Dupl. Receber/Vendas Médias Diárias
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Perc. Médio Pagamento
                </td>
                <td>Dupl. Paga/Compra Médias Diárias
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>Giro Ativo Imobilizado
                </td>
                <td>Vendas (*)/Ativo Imobilizado
                </td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>


</asp:Content>
