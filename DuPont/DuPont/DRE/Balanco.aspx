<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Balanco.aspx.cs" Inherits="DuPont.Balanco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron table">
        <h1 id="txtEmpresa" runat="server"></h1>
        <table class="table table-bordered table-responsive ">
            <tr>
                <th>ATIVO</th>
                <th>ANO 2</th>
                <th>ANO 1</th>
                <th>PASSIVO + P.L.</th>
                <th>ANO 2</th>
                <th>ANO 1</th>
            </tr>
            <tr>
                <td colspan="6" class="text-center">
                    <b>CIRCULANTE</b>
                </td>
            </tr>
            <tr>
                <td>Disponível</td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-Disp-Ano2"/></td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-Disp-Ano1"/></td>
                <td>Fornecedores</td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-Forn-Ano2"/></td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-Forn-Ano1"/></td>
            </tr>
            <tr>
                <td>Duplicatas a receber
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-DuplRec-Ano2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-DuplRec-Ano1" /></td>
                <td>Salários e encargos
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-Sal-Ano2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-Sal-Ano1" /></td>
            </tr>
            <tr>
                <td>(-) Duplicatas descontadas
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-DuplDesc-Ano2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-DuplDesc-Ano1"/></td>
                <td>Impostos a pagar
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-Impost-Ano2" /></td>
                <td>
                    <asp:TextBox runat="server" ID="CIRC-Impost-Ano1"/></td>
            </tr>
            <tr>
                <td>Estoques
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox4" /></td>
                <td>
                    <asp:TextBox runat="server" /></td>
                <td>Financiamentos à pagar
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox21" /></td>
                <td>
                    <asp:TextBox runat="server" /></td>
            </tr>
            <tr>
                <td colspan="6" class="text-center">
                    <b>NÃO CIRCULANTE</b>
                </td>
            </tr>
            <tr>
                <td colspan="3">Realizável a longo prazo
                </td>
                <td colspan="3">Exigível a longo prazo
                </td>
            </tr>
            <tr>
                <td>Contas à receber a longo prazo
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox5" /></td>
                <td>
                    <asp:TextBox runat="server" /></td>
                <td>Financiamentos à longo prazo
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox22" /></td>
                <td>
                    <asp:TextBox runat="server" /></td>
            </tr>
            <tr>
                <td>Outras contas à longo prazo</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox6" /></td>
                <td>
                    <asp:TextBox runat="server" /></td>
                <td>Outras contas à longo prazo</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox23" /></td>
                <td>
                    <asp:TextBox runat="server" /></td>
            </tr>
            <tr>
                <td>Total RLP</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox7" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox24" /></td>
                <td>Total RLP</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox17" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox34" /></td>
            </tr>
            <tr>
                <td colspan="6" class="text-center">
                    <b>INVESTIMENTOS</b>
                </td>
            </tr>
            <tr>
                <td>Imobilizado</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox8" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox27" /></td>
                <td colspan="3">Patrimonio Líquido
                </td>

            </tr>
            <tr>
                <td>(-) Depreciação acumulada</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox9" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox26" /></td>
                <td>Capital social</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox16" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox33" /></td>
            </tr>
            <tr>
                <td>Total imobilizado</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox10" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox25" /></td>
                <td>Lucros retidos</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox15" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox32" /></td>
            </tr>
            <tr>
                <td>Intangível</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox11" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox28" /></td>
                <td>Total PL</td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox14" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox31" /></td>
            </tr>
            <tr class="success">
                <td>
                    <b>TOTAL</b>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox12" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox29" /></td>
                <td>
                    <b>TOTAL</b>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox13" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TextBox30" /></td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
