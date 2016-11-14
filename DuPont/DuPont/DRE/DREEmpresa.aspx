<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DREEmpresa.aspx.cs" Inherits="DuPont.DREEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <table class="table table-responsive table-bordered">
            <tr>
                <th>
                    <asp:Label ID="lblEmpresa" Text="DRE da Empresa X" runat="server" /></th>
                <th>
                    <asp:Label ID="lblAno1" Text="ANO1" runat="server" />
                </th>
                <th>
                    <asp:Label ID="lblAno2" Text="ANO2" runat="server" />
                </th>
                <th>
                    <asp:Label ID="lblAH" Text="AH%" runat="server" />
                </th>
            </tr>
            <tr>
                <td>
                    <b>Receita Líquida de Vendas</b>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1Receita" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtAno2Receita" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblPercReceita" runat="server" />
                </td>
            </tr>
            <tr>
                <td>(-) Custo das Vendas
                </td>
                <td>
                    <asp:TextBox ID="txtAno1CustoVendas" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtAno2CustoVendas" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblPercCustoVendas" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <b>(=) Lucro Bruto</b>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1LucroBruto" runat="server" />

                </td>
                <td>
                    <asp:TextBox ID="txtAno2LucroBruto" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblPercLucroBruto" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">(-) Despesas com Vendas
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtAno1DespesasVendas" runat="server" />
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtAno2DespesasVendas" runat="server" />
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lblPercDespesasVendas" runat="server" />
                </td>
            </tr>
            <tr>
                <td>(-) Despesas Administrativas
                </td>
                <td>
                    <asp:TextBox ID="txtAno1DespesasAdministrativas" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtAno2DespesasAdministrativas" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblPercDespesasAdministrativas" runat="server" />
                </td>
            </tr>
            <tr>
                <td>(-) Despesas Financeiras
                </td>
                <td>
                    <asp:TextBox ID="txtAno1DespesasFinanceiras" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtAno2DespesasFinanceiras" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblPercDespesasFinanceiras" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <b>Lucro Antes do Imp. Renda</b>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1LucroAntImpRenda" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtAno2LucroAntImpRenda" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblPercLucroAntImpRenda" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Imposto de Renda
                </td>
                <td>
                    <asp:TextBox ID="txtAno1ImpostoRenda" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtAno2ImpostoRenda" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblPercImpostoRenda" runat="server" />
                </td>
            </tr>
            <tr class="success">
                <td>
                    <b>Lucro Líquido</b>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1LucroLiquido" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtAno2LucroLiquido" runat="server" />
                </td>
                <td>
                    <asp:Label ID="lblPercLucroLiquido" runat="server" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
