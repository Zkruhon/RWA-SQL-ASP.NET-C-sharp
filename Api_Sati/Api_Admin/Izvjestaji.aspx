<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Izvjestaji.aspx.cs" Inherits="Api_Admin.Izvjestaji" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    <%@ Register Src="~/Navigation.ascx" TagPrefix="uc1" TagName="Navigacija" %>

    <div class="container">
        <div class="jumbotron" style="background-color: dimgray; margin-top: 5em;">
            <div class="alert-dark" style="margin-bottom: 2em;">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/IzvjestajKlijent.aspx">&nbsp;Izvjestaj za klijente</asp:HyperLink>
            </div>
            <div class="alert-dark">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/IzvjestajTim.aspx">&nbsp;Izvjestaj za Timove</asp:HyperLink>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
