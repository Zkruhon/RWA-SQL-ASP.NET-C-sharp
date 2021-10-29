<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Timovi.aspx.cs" Inherits="Api_Admin.Timovi" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="7" DataKeyNames="IDTim" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="1015px" BackColor="White" BorderColor="White" BorderStyle="None" BorderWidth="1px" meta:resourcekey="GridView1Resource1" CssClass="auto-style1">
        <Columns>
            <asp:BoundField DataField="IDTim" HeaderText="IDTim" SortExpression="IDTim" ReadOnly="True" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="DatumKreiranja" HeaderText="DatumKreiranja" SortExpression="DatumKreiranja" meta:resourcekey="BoundFieldResource3" />
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
        InsertCommand="INSERT INTO [Tim] ( [Naziv],[DatumKreiranja]) VALUES (@Naziv, @DatumKreiranja)"
        SelectCommand="select Tim.IDTim, Tim.Naziv, Tim.DatumKreiranja from Tim"
        UpdateCommand="Update Tim set Naziv = @Naziv, DatumKreiranja = @DatumKreiranja where IDTim=@IDTim">
        <DeleteParameters>
            <asp:Parameter Name="IDTim" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDTim" Type="Byte" />
            <asp:Parameter Name="Naziv" Type="String" />
            <asp:Parameter DbType="Date" Name="DatumKreiranja" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Naziv" Type="String" />
            <asp:Parameter DbType="Date" Name="DatumKreiranja" />
            <asp:Parameter Name="IDTim" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="container">
        <table cssclass="table table-light" style="border-color: darkblue; margin-left: auto; margin-right: auto; margin-top: 2rem;">
            <tr>
                <td>
                    <asp:Label Text="Ime Tima: " runat="server" meta:resourcekey="LabelResource2" />
                    <asp:TextBox ID="txtNaziv" runat="server" meta:resourcekey="txtImeTimaResource1"></asp:TextBox>
                </td>
                <td>
                    <asp:Label Text="Datum Kreiranja: " runat="server" meta:resourcekey="LabelResource3" />
                    <asp:TextBox ID="txtDatumKreiranja" runat="server" meta:resourcekey="txtDatumKreiranjaResource1" TextMode="Date"></asp:TextBox>
                </td>
                <td>
                    <asp:Button Text="Dodaj" ID="BtnDodaj" OnClick="BtnDodaj_Click" runat="server" CssClass="btn btn-outline-secondary" meta:resourcekey="BtnDodajResource1" Style="margin: 1rem" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

