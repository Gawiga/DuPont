<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Calculo.aspx.cs" Inherits="DuPont.DRE.Calculo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <table class="table">
            <tr>
                <td>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">Lucro Líquido Após IR</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" /></td>
                            <td>
                                <asp:TextBox runat="server" /></td>
                            <td>
                                <asp:TextBox runat="server" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">Vendas</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" /></td>
                            <td>
                                <asp:TextBox runat="server" /></td>
                            <td>
                                <asp:TextBox runat="server" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">Margem Líquida</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" /></td>
                            <td>
                                <asp:TextBox runat="server" /></td>
                            <td>
                                <asp:TextBox runat="server" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">ROA (Retorno s/ ativo)</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" /></td>
                            <td>
                                <asp:TextBox runat="server" /></td>
                            <td>
                                <asp:TextBox runat="server" /></td>
                        </tr>
                    </table>
                    <table class="table table-bordered table-responsive">
                        <tr>
                            <th colspan="3">ROE (Retorno s/ Patr. Líquido)</th>
                        </tr>
                        <tr>
                            <th>Ano 2</th>
                            <th>Ano 1</th>
                            <th>AH %</th>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox runat="server" /></td>
                            <td>
                                <asp:TextBox runat="server" /></td>
                            <td>
                                <asp:TextBox runat="server" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>



