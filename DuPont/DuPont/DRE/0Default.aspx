<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="0Default.aspx.cs" Inherits="DuPont.DRE.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h1>Sistema Dupont</h1>
        <br />
        E-mail 
        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="seunome@provedor.com" required="true" />
        <br />
        Senha
        <asp:TextBox ID="txtSenha" CssClass="form-control" runat="server" placeholder="******" TextMode="Password" required="true" />
        <br />
        Ano 1
        <asp:TextBox ID="txtAno1" CssClass="form-control" runat="server" placeholder="2015" required="true" />
        <br />
        Ano 2
        <asp:TextBox ID="txtAno2" CssClass="form-control" runat="server" placeholder="2016" required="true" />
        <br />
        <asp:Button ID="btnEnviar" CssClass="btn btn-success btn-lg btn-block" Text="Entrar" runat="server" OnClick="btnEnviar_Click" />
        <br />
        <div class="text-center">
            <a href="cadastro.aspx">Cadastre-se</a>
        </div>
    </div>
</asp:Content>
