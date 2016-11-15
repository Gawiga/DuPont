<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DuPont.DRE.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h1>Sistema Dupont</h1>
        <br />
        Nome da Empresa  
        <asp:TextBox ID="txtEmpresa" CssClass="form-control" runat="server" placeholder="SILVA LTDA" />
        <br />
        Ano 1
        <asp:TextBox ID="txtAno1" CssClass="form-control" runat="server" placeholder="2015" />
        <br />
        Ano 2
        <asp:TextBox ID="txtAno2" CssClass="form-control" runat="server" placeholder="2016" />
        <br />
        <asp:Button ID="btnEnviar" CssClass="btn btn-default" Text="Começar" runat="server" OnClick="btnEnviar_Click" />
    </div>
</asp:Content>
