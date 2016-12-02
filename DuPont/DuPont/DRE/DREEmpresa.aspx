<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DREEmpresa.aspx.cs" Inherits="DuPont.DREEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:ScriptManager ID="ScriptManager" runat="server" EnablePartialRendering="true">
    </asp:ScriptManager>
    <ajaxToolkit:MaskedEditExtender TargetControlID="txtAno2Receita" Mask="999.999.999,99" runat="server" />--%>
    <div class="jumbotron">
        <table class="table table-responsive table-bordered">
            <tr>
                <th id="Empresa" runat="server">DRE da Empresa</th>
                <th id="Ano2" runat="server">ANO 2</th>
                <th id="Ano1" runat="server">ANO 1</th>
                <th id="AH" runat="server">AH%</th>
            </tr>
            <tr>
                <td>
                    <b>Receita Líquida de Vendas</b>
                </td>
                <td>
                    <asp:TextBox ID="txtAno2Receita" runat="server" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1Receita" runat="server" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblPercReceita" runat="server" />
                </td>
            </tr>
            <tr>
                <td>(-) Custo das Vendas
                </td>
                <td>
                    <asp:TextBox ID="txtAno2CustoVendas" runat="server" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1CustoVendas" runat="server" TextMode="Number" >0</asp:TextBox>
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
                    <asp:TextBox ID="txtAno2LucroBruto" runat="server" Enabled="false" TextMode="Number" ></asp:TextBox>

                </td>
                <td>
                    <asp:TextBox ID="txtAno1LucroBruto" runat="server" Enabled="false" TextMode="Number" ></asp:TextBox>

                </td>
                <td>
                    <asp:Label ID="lblPercLucroBruto" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">(-) Despesas com Vendas
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtAno2DespesasVendas" runat="server" TextMode="Number" >0</asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtAno1DespesasVendas" runat="server" TextMode="Number" >0</asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lblPercDespesasVendas" runat="server" />
                </td>
            </tr>
            <tr>
                <td>(-) Despesas Administrativas
                </td>
                <td>
                    <asp:TextBox ID="txtAno2DespesasAdministrativas" runat="server" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1DespesasAdministrativas" runat="server" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblPercDespesasAdministrativas" runat="server" />
                </td>
            </tr>
            <tr>
                <td>(-) Despesas Financeiras
                </td>
                <td>
                    <asp:TextBox ID="txtAno2DespesasFinanceiras" runat="server" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1DespesasFinanceiras" runat="server" TextMode="Number" >0</asp:TextBox>
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
                    <asp:TextBox ID="txtAno2LucroAntImpRenda" runat="server" Enabled="false" TextMode="Number" ></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1LucroAntImpRenda" runat="server" Enabled="false" TextMode="Number" ></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblPercLucroAntImpRenda" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Imposto de Renda
                </td>
                <td>
                    <asp:TextBox ID="txtAno2ImpostoRenda" runat="server" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1ImpostoRenda" runat="server" TextMode="Number" >0</asp:TextBox>
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
                    <asp:TextBox ID="txtAno2LucroLiquido" runat="server" Enabled="false" TextMode="Number" ></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtAno1LucroLiquido" runat="server" Enabled="false" TextMode="Number" ></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblPercLucroLiquido" runat="server" />
                </td>
            </tr>
            <tr class="text-center">
                <td colspan="2">
                    <asp:Button ID="Calcular" Text="Calcular" CssClass="btn btn-success btn-lg btn-block" runat="server" OnClick="Calcular_Click1" />
                </td>
                <td colspan="2">
                    <asp:Button ID="Continuar" Text="Continuar" CssClass="btn btn-primary btn-lg btn-block" runat="server" OnClick="Continuar_Click1" />
                </td>
            </tr>
        </table>
    </div>

</asp:Content>
