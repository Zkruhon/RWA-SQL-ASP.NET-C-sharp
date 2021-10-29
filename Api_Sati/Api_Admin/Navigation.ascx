<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navigation.ascx.cs" Inherits="Api_Admin.Navigation" %>

<nav id="nav1" class="navbar navbar-dark navbar-expand-md sticky-top navigation-clean-button" style="background-color: black;">
    <div>
        <asp:Button Text="Hrvatski" Style="margin-right: 1em;" runat="server" CssClass="btn btn-danger btn-sm" ID="btnHR" OnClick="btnHR_Click" meta:resourcekey="btnHRResource1" />
        <asp:Button Text="Engleski" runat="server" CssClass="btn btn-primary btn-sm" ID="btnEN" OnClick="btnEN_Click" meta:resourcekey="btnENResource1" />
    </div>
    <div class="container">
        <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <asp:HyperLink ID="HyperLink1" class="nav-link active" runat="server" NavigateUrl="~/Klijent.aspx" meta:resourcekey="HyperLink1Resource1">Klijent</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" class="nav-link active" runat="server" NavigateUrl="~/Timovi.aspx" meta:resourcekey="HyperLink2Resource1">Timovi</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" class="nav-link active" runat="server" NavigateUrl="~/Projekti.aspx" meta:resourcekey="HyperLink3Resource1">Projekti</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" class="nav-link active" runat="server" NavigateUrl="~/Izvjestaji.aspx" meta:resourcekey="HyperLink4Resource1">Izvjestaji</asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" class="nav-link active" runat="server" NavigateUrl="~/Djelatnici.aspx" meta:resourcekey="HyperLink5Resource1">Djelatnici</asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" class="nav-link active" runat="server" NavigateUrl="~/LogIn.aspx" meta:resourcekey="HyperLink6Resource1">Log out</asp:HyperLink>
            </ul>
        </div>
    </div>
</nav>
