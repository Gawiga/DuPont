<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Balanco.aspx.cs" Inherits="DuPont.Balanco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h1 id="Empresa" runat="server"></h1>
        <table class="table table-bordered table-responsive">
            <tr>
                <th>ATIVO</th>
                <th id="AtivoAno2" runat="server">ANO 2</th>
                <th id="AtivoAno1" runat="server">ANO 1</th>
                <th>PASSIVO + P.L.</th>
                <th id="PassivoAno2" runat="server">ANO 2</th>
                <th id="PassivoAno1" runat="server">ANO 1</th>
            </tr>
            <tr>
                <td colspan="6" class="text-center">
                    <b>CIRCULANTE</b>
                </td>
            </tr>
            <tr>
                <td>Disponível</td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCDispAno2" TextMode="Number">0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCDispAno1" TextMode="Number">0</asp:TextBox>
                </td>
                <td>Fornecedores</td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCFornAno2" TextMode="Number">0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCFornAno1" TextMode="Number">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Duplicatas a receber
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCDuplRecAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCDuplRecAno1" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>Salários e encargos
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCSalAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCSalAno1" TextMode="Number" >0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>() Duplicatas descontadas
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCDuplDescAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCDuplDescAno1" TextMode="Number">0</asp:TextBox>
                </td>
                <td>Impostos a pagar
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCImpostAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCImpostAno1" TextMode="Number">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Estoques
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCEstoquesAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCEstoquesAno1" TextMode="Number">0</asp:TextBox>
                </td>
                <td>Financiamentos à pagar
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCFinAPagarAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCFinAPagarAno1" TextMode="Number">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Outros
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCAOutrosAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCAOutrosAno1" TextMode="Number">0</asp:TextBox>
                </td>
                <td>Outros
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCPOutrosAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="CIRCPOutrosAno1" TextMode="Number">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Total AC
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TotalACAno2" Enabled="false" /></td>
                <td>
                    <asp:TextBox runat="server" ID="TotalACAno1" Enabled="false"/></td>
                <td>Total PC
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TotalPCAno2" Enabled="false"/></td>
                <td>
                    <asp:TextBox runat="server" ID="TotalPCAno1" Enabled="false"/></td>
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
                    <asp:TextBox runat="server" ID="NCIRCContasARecAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCContasARecAno1" TextMode="Number">0</asp:TextBox>
                </td>
                <td>Financiamentos à longo prazo
                </td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCFinLongPrazoAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCFinLongPrazoAno1" TextMode="Number">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Outras contas à longo prazo</td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCAOutrasContasLongPrazoAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCAOutrasContasLongPrazoAno1" TextMode="Number">0</asp:TextBox>
                </td>
                <td>Outras contas à longo prazo</td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCPOutrasContasLongPrazoAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCPOutrasContasLongPrazoAno1" TextMode="Number">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Total RLP</td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCATotalRLPAno2" Enabled="false"/></td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCATotalRLPAno1" Enabled="false"/></td>
                <td>Total RLP</td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCPTotalRLPAno2" Enabled="false"/></td>
                <td>
                    <asp:TextBox runat="server" ID="NCIRCPTotalRLPAno1" Enabled="false"/></td>
            </tr>
            <tr>
                <td colspan="6" class="text-center">
                    <b>INVESTIMENTOS</b>
                </td>
            </tr>
            <tr>
                <td>Imobilizado</td>
                <td>
                    <asp:TextBox runat="server" ID="INVImobilizadoAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="INVImobilizadoAno1" TextMode="Number" >0</asp:TextBox>
                </td>
                <td colspan="3">Patrimonio Líquido
                </td>
            </tr>
            <tr>
                <td>(-) Depreciação acumulada</td>
                <td>
                    <asp:TextBox runat="server" ID="INVDeprecAcumAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="INVDeprecAcumAno1" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>Capital social</td>
                <td>
                    <asp:TextBox runat="server" ID="INVCapSocialAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="INVCapSocialAno1" TextMode="Number" >0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Total imobilizado</td>
                <td>
                    <asp:TextBox runat="server" ID="INVTotalImobAno2" Enabled="false"/></td>
                <td>
                    <asp:TextBox runat="server" ID="INVTotalImobAno1" Enabled="false"/></td>
                <td>Lucros retidos</td>
                <td>
                    <asp:TextBox runat="server" ID="INVLucrosRetAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="INVLucrosRetAno1" TextMode="Number" >0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Intangível</td>
                <td>
                    <asp:TextBox runat="server" ID="INVIntangivelAno2" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="INVIntangivelAno1" TextMode="Number" >0</asp:TextBox>
                </td>
                <td>Total PL</td>
                <td>
                    <asp:TextBox runat="server" ID="INVTotalPLAno2" Enabled="false"/></td>
                <td>
                    <asp:TextBox runat="server" ID="INVTotalPLAno1" Enabled="false"/></td>
            </tr>
            <tr class="success">
                <td>
                    <b>TOTAL</b>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TOTALATIVOANO2" Enabled="false"/></td>
                <td>
                    <asp:TextBox runat="server" ID="TOTALATIVOANO1" Enabled="false"/></td>
                <td>
                    <b>TOTAL</b>
                </td>
                <td>
                    <asp:TextBox runat="server" ID="TOTALPASSIVOANO2" Enabled="false"/></td>
                <td>
                    <asp:TextBox runat="server" ID="TOTALPASSIVOANO1" Enabled="false"/></td>
            </tr>
            <tr>
                <td colspan="3" class="text-center">
                    <asp:Button Text="Calcular" CssClass="btn btn-success btn-lg" runat="server" ID="Calcular" OnClick="Calcular_Click"/>
                </td>
                <td colspan="3" class="text-center">
                    <asp:Button Text="Continuar" CssClass="btn btn-primary btn-lg" runat="server" ID="Continuar" OnClick="Continuar_Click"/>
                </td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>
