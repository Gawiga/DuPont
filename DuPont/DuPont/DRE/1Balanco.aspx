<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="1Balanco.aspx.cs" Inherits="DuPont.Balanco" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function printing() {
            window.print();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h1 id="Empresa" class="text-uppercase" runat="server"></h1>
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ATIVO</th>
                        <th id="AtivoAno2" runat="server">ANO 2</th>
                        <th id="AtivoAno1" runat="server">ANO 1</th>
                        <th>PASSIVO + P.L.</th>
                        <th id="PassivoAno2" runat="server">ANO 2</th>
                        <th id="PassivoAno1" runat="server">ANO 1</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="6">
                            <h4 class="text-center">CIRCULANTE</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>Disponível</td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCDispAno2" TextMode="Number" required="true">17000</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCDispAno1" TextMode="Number" required="true">15000</asp:TextBox>
                        </td>
                        <td>Fornecedores</td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCFornAno2" TextMode="Number" required="true">9000</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCFornAno1" TextMode="Number" required="true">5000</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Duplicatas a receber
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCDuplRecAno2" TextMode="Number" required="true">16000</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCDuplRecAno1" TextMode="Number" required="true">12000</asp:TextBox>
                        </td>
                        <td>Salários e encargos
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCSalAno2" TextMode="Number" required="true">4000</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCSalAno1" TextMode="Number" required="true">4000</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>(-) Duplicatas descontadas
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCDuplDescAno2" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCDuplDescAno1" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                        <td>Impostos a pagar
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCImpostAno2" TextMode="Number" required="true">900</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCImpostAno1" TextMode="Number" required="true">800</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Estoques
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCEstoquesAno2" TextMode="Number" required="true">14700</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCEstoquesAno1" TextMode="Number" required="true">13000</asp:TextBox>
                        </td>
                        <td>Financiamentos à pagar
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCFinAPagarAno2" TextMode="Number" required="true">6000</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCFinAPagarAno1" TextMode="Number" required="true">5000</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Outros
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCAOutrosAno2" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCAOutrosAno1" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                        <td>Outros
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCPOutrosAno2" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="CIRCPOutrosAno1" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Total AC
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="TotalACAno2" Enabled="false" /></td>
                        <td>
                            <asp:TextBox runat="server" ID="TotalACAno1" Enabled="false" /></td>
                        <td>Total PC
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="TotalPCAno2" Enabled="false" /></td>
                        <td>
                            <asp:TextBox runat="server" ID="TotalPCAno1" Enabled="false" /></td>
                    </tr>
                    <tr>
                        <td colspan="6" class="text-center">
                            <h4>NÃO CIRCULANTE</h4>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="text-center">Realizável a longo prazo
                        </td>
                        <td colspan="3" class="text-center">Exigível a longo prazo
                        </td>
                    </tr>
                    <tr>
                        <td>Contas à receber a longo prazo
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCContasARecAno2" TextMode="Number" required="true">2300</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCContasARecAno1" TextMode="Number" required="true">1000</asp:TextBox>
                        </td>
                        <td>Financiamentos à longo prazo
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCFinLongPrazoAno2" TextMode="Number" required="true">3000</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCFinLongPrazoAno1" TextMode="Number" required="true">4500</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Outras contas à longo prazo</td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCAOutrasContasLongPrazoAno2" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCAOutrasContasLongPrazoAno1" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                        <td>Outras contas à longo prazo</td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCPOutrasContasLongPrazoAno2" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCPOutrasContasLongPrazoAno1" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Total RLP</td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCATotalRLPAno2" Enabled="false" /></td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCATotalRLPAno1" Enabled="false" /></td>
                        <td>Total RLP</td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCPTotalRLPAno2" Enabled="false" /></td>
                        <td>
                            <asp:TextBox runat="server" ID="NCIRCPTotalRLPAno1" Enabled="false" /></td>
                    </tr>
                    <tr>
                        <td colspan="6" class="text-center">
                            <h4>INVESTIMENTOS</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>Imobilizado</td>
                        <td>
                            <asp:TextBox runat="server" ID="INVImobilizadoAno2" TextMode="Number" required="true">14000</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="INVImobilizadoAno1" TextMode="Number" required="true">12000</asp:TextBox>
                        </td>
                        <td colspan="3" class="text-center">Patrimonio Líquido
                        </td>
                    </tr>
                    <tr>
                        <td>(-) Depreciação acumulada</td>
                        <td>
                            <asp:TextBox runat="server" ID="INVDeprecAcumAno2" TextMode="Number" required="true">4000</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="INVDeprecAcumAno1" TextMode="Number" required="true">3000</asp:TextBox>
                        </td>
                        <td>Capital social</td>
                        <td>
                            <asp:TextBox runat="server" ID="INVCapSocialAno2" TextMode="Number" required="true">15000</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="INVCapSocialAno1" TextMode="Number" required="true">14000</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Total imobilizado</td>
                        <td>
                            <asp:TextBox runat="server" ID="INVTotalImobAno2" Enabled="false" /></td>
                        <td>
                            <asp:TextBox runat="server" ID="INVTotalImobAno1" Enabled="false" /></td>
                        <td>Lucros retidos</td>
                        <td>
                            <asp:TextBox runat="server" ID="INVLucrosRetAno2" TextMode="Number" required="true">22100</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="INVLucrosRetAno1" TextMode="Number" required="true">16700</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Intangível</td>
                        <td>
                            <asp:TextBox runat="server" ID="INVIntangivelAno2" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="INVIntangivelAno1" TextMode="Number" required="true">0</asp:TextBox>
                        </td>
                        <td>Total PL</td>
                        <td>
                            <asp:TextBox runat="server" ID="INVTotalPLAno2" Enabled="false" /></td>
                        <td>
                            <asp:TextBox runat="server" ID="INVTotalPLAno1" Enabled="false" /></td>
                    </tr>
                    <tr class="success">
                        <td>
                            <b>TOTAL</b>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="TOTALATIVOANO2" Enabled="false" /></td>
                        <td>
                            <asp:TextBox runat="server" ID="TOTALATIVOANO1" Enabled="false" /></td>
                        <td>
                            <b>TOTAL</b>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="TOTALPASSIVOANO2" Enabled="false" /></td>
                        <td>
                            <asp:TextBox runat="server" ID="TOTALPASSIVOANO1" Enabled="false" /></td>
                    </tr>
                </tbody>
            </table>
            <div>
                <div class="col-sm-4">
                    <asp:Button CssClass="btn btn-lg btn-block btn-info" Text="Imprimir" runat="server" ID="Imprimir" OnClick="Imprimir_Click" />
                </div>
                <div class="col-sm-4">
                    <asp:Button Text="Calcular" CssClass="btn btn-success btn-lg btn-block" runat="server" ID="Calcular" OnClick="Calcular_Click" />
                </div>
                <div class="col-sm-4">
                    <asp:Button Text="Continuar" CssClass="btn btn-primary btn-lg btn-block" runat="server" ID="Continuar" OnClick="Continuar_Click" Enabled="false" />
                </div>
            </div>
        </div>


    </div>
</asp:Content>
