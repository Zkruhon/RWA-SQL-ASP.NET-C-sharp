<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Projekti.aspx.cs" Inherits="Api_Admin.Projekti" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="content2" runat="server" ContentPlaceHolderID="content">
    <br />
    <asp:GridView ID="GridView1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="7" DataKeyNames="IDProjekt" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="1020px" meta:resourcekey="GridView1Resource1">

        <Columns>
            <asp:BoundField DataField="IDProjekt" HeaderText="IDProjekt" SortExpression="IDProjekt" ReadOnly="True" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="KlijentID" HeaderText="KlijentID" SortExpression="KlijentID" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="DatumOtvaranja" HeaderText="DatumOtvaranja" SortExpression="DatumOtvaranja" meta:resourcekey="BoundFieldResource4" />
            <asp:BoundField DataField="VoditeljProjektaID" HeaderText="VoditeljProjektaID" SortExpression="VoditeljProjektaID" meta:resourcekey="BoundFieldResource5" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="white" Font-Bold="false" ForeColor="black" />
        <PagerStyle BackColor="white" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="white" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="lightgray" />
        <SortedAscendingHeaderStyle BackColor="green" />
        <SortedDescendingCellStyle BackColor="lightgray" />
        <SortedDescendingHeaderStyle BackColor="red" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PRAConnectionString %>"
        SelectCommand="SELECT * FROM [Projekt]"></asp:SqlDataSource>
    <div class="container">
        <table cssclass="table table-light" style="margin-left: auto; margin-right: auto; margin-top: 2rem">
            <tr>
                <td>
                    <asp:Label Text="Naziv Projekta: " runat="server" meta:resourcekey="LabelResource2" />
                    <asp:TextBox ID="txtNaziv" runat="server" meta:resourcekey="txtNazivResource1"></asp:TextBox>
                </td>
                <td>
                    <asp:Label Text="Ime Klijenta " runat="server" meta:resourcekey="LabelResource4" />
                    <asp:TextBox ID="txtNazivKlijenta" runat="server" meta:resourcekey="txtNazivKlijentaResource1"></asp:TextBox>
                </td>
                <td>
                    <asp:Label Text="Datum Otvaranja: " runat="server" meta:resourcekey="LabelResource3" />
                    <asp:TextBox ID="txtDatumOtvaranja" runat="server" meta:resourcekey="txtDatumOtvaranjaResource1" TextMode="Date"></asp:TextBox>
                </td>
                <td>
                    <asp:Label Text="Voditelj Projekta " runat="server" meta:resourcekey="LabelResource1" />
                    <asp:TextBox ID="txtVoditeljProjekta" runat="server" meta:resourcekey="txtVoditeljProjektaResource1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button Text="Dodaj" ID="BtnDodaj" OnClick="BtnDodaj_Click" runat="server" CssClass="btn btn-outline-secondary" Style="margin: 1rem" meta:resourcekey="BtnDodajResource1" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
