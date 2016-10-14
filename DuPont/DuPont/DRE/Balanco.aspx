<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Balanco.aspx.cs" Inherits="DuPont.Balanco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="col-sm-8 col-sm-push-2">
        <table class="table table-bordered">
            <tr>
                <th>ATIVO</th>
                <th>ANO</th>
                <th>PASSIVO + P.L.</th>
                <th>ANO</th>
            </tr>
            <tr>
                <td colspan="4">CIRCULANTE</td>
            </tr>
            <tr>
                <td>Disponível</td>
                <td>
                </td>
                <td>Fornecedores</td>
                <td>

                </td>
            </tr>
            <tr>
                <td>Duplicatas a receber
                </td>
                <td></td>
                <td>Salários e encargos
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style1">(-) Duplicatas descontadas
                </td>
                <td class="auto-style1"></td>
                <td class="auto-style1">Impostos a pagar
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>Estoques
                </td>
                <td></td>
                <td>Financiamentos à pagar
                </td>
                <td></td>
            </tr>
            <tr>
                <td colspan="4">NÃO CIRCULANTE
                </td>
            </tr>
            <tr>
                <td colspan="2">Realizável a longo prazo
                </td>
                <td colspan="2">Exigível a longo prazo
                </td>
            </tr>
            <tr>
                <td>Contas à receber a longo prazo
                </td>
                <td></td>
                <td>Financiamentos à longo prazo
                </td>
                <td></td>
            </tr>
            <tr>
                <td>Outras contas à longo prazo</td>
                <td></td>
                <td>Outras contas à longo prazo</td>
                <td></td>
            </tr>
            <tr>
                <td>Total</td>
                <td></td>
                <td>Total</td>
                <td></td>
            </tr>
            <tr>
                <td colspan="4">INVESTIMENTOS</td>
            </tr>
            <tr>
                <td>Imobilizado</td>
                <td></td>
                <td colspan="2">Patrimônio líquido</td>
            </tr>
            <tr>
                <td>(-) Depreciação acumulada</td>
                <td></td>
                <td>Capital social</td>
                <td></td>
            </tr>
            <tr>
                <td>Total imobilizado</td>
                <td></td>
                <td>Lucros retidos</td>
                <td></td>
            </tr>
            <tr>
                <td>Intangível</td>
                <td></td>
                <td>Total</td>
                <td></td>
            </tr>
            <tr>
                <td>TOTAL</td>
                <td></td>
                <td>TOTAL</td>
                <td></td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
