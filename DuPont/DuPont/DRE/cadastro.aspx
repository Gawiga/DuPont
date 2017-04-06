<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="DuPont.DRE.cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron">
        <h1>Cadastro de Cliente</h1>

        <div class="form-group">
            Nome Completo
            <asp:TextBox ID="txtNomeCompleto" CssClass="form-control" runat="server" placeholder="João da Silva" required="required" />
            <br />
            Nome da Empresa  
            <asp:TextBox ID="txtEmpresa" CssClass="form-control" runat="server" placeholder="Silva LTDA" Text="" required="required" />
            <br />
            E-mail
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="seuemail@provedor.com" Text="" required="required" />
            <br />
            Senha
            <asp:TextBox ID="txtSenha" CssClass="form-control" runat="server" placeholder="******" Text="" TextMode="Password" required="required" />
            <br />
            Repita a Senha
            <asp:TextBox ID="txtRepeteSenha" CssClass="form-control" runat="server" placeholder="******" Text="" TextMode="Password" required="required" />
            <br />
            <asp:Button ID="btnCadastro" CssClass="btn btn-success btn-lg btn-block" Text="CADASTRAR" runat="server" OnClick="btnCadastro_Click" />
            <br />
            <div class="text-center">
                <a href="0Default.aspx">Acessar Sistema DuPont</a>
            </div>
        </div>

    </div>
</asp:Content>
