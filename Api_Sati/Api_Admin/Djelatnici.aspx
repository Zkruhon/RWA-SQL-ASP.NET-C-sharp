<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Djelatnici.aspx.cs" Inherits="Api_Admin.Djelatnici" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<%@ Register Src="~/DjelatniciControl.ascx" TagPrefix="uc1" TagName="DjelatniciControl" %>

<asp:Content ID="content1" runat="server" ContentPlaceHolderID="content">
    <br />
    <div>
        <asp:GridView
            ID="GridView1"
            runat="server"
            AutoGenerateColumns="False"
            OnRowDataBound="GridView1_RowDataBound"
            DataKeyNames="IDDjelatnik"
            DataSourceID="SqlDataSource1"
            CellPadding="7"
            AllowPaging="True"
            BackColor="Black"
            BorderColor="White"
            BorderStyle="Outset"
            BorderWidth="1px"
            Width="1105px"
            AllowSorting="True"
            meta:resourcekey="GridView1Resource1"
            GridLines="Vertical"
            CssClass="auto-style1">

            <Columns>
                <asp:BoundField DataField="IDDjelatnik" HeaderText="IDDjelatnik" SortExpression="IDDjelatnik" ReadOnly="True" />
                <asp:BoundField DataField="Ime" HeaderText="Ime" SortExpression="Ime" />
                <asp:BoundField DataField="Prezime" HeaderText="Prezime" SortExpression="Prezime" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="DatumZaposlenja" HeaderText="DatumZaposlenja" SortExpression="DatumZaposlenja" />
                <asp:BoundField DataField="Zaporka" HeaderText="Zaporka" SortExpression="Zaporka" />
                <asp:BoundField DataField="TipDjelatnikaID" HeaderText="TipDjelatnikaID" SortExpression="TipDjelatnikaID" />
                <asp:BoundField DataField="TimID" HeaderText="TimID" SortExpression="TimID" />

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
            SelectCommand="SELECT * FROM [Djelatnik]" DeleteCommand="DELETE FROM [Djelatnik] WHERE [IDDjelatnik] = @IDDjelatnik" InsertCommand="INSERT INTO [Djelatnik] ([IDDjelatnik], [Ime], [Prezime], [Email], [DatumZaposlenja], [Zaporka], [TipDjelatnikaID], [TimID]) VALUES (@IDDjelatnik, @Ime, @Prezime, @Email, @DatumZaposlenja, @Zaporka, @TipDjelatnikaID, @TimID)" UpdateCommand="UPDATE [Djelatnik] SET [Ime] = @Ime, [Prezime] = @Prezime, [Email] = @Email, [DatumZaposlenja] = @DatumZaposlenja, [Zaporka] = @Zaporka, [TipDjelatnikaID] = @TipDjelatnikaID, [TimID] = @TimID WHERE [IDDjelatnik] = @IDDjelatnik">
            <DeleteParameters>
                <asp:Parameter Name="IDDjelatnik" Type="Byte" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IDDjelatnik" Type="Byte" />
                <asp:Parameter Name="Ime" Type="String" />
                <asp:Parameter Name="Prezime" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter DbType="Date" Name="DatumZaposlenja" />
                <asp:Parameter Name="Zaporka" Type="String" />
                <asp:Parameter Name="TipDjelatnikaID" Type="Byte" />
                <asp:Parameter Name="TimID" Type="Byte" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ime" Type="String" />
                <asp:Parameter Name="Prezime" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter DbType="Date" Name="DatumZaposlenja" />
                <asp:Parameter Name="Zaporka" Type="String" />
                <asp:Parameter Name="TipDjelatnikaID" Type="Byte" />
                <asp:Parameter Name="TimID" Type="Byte" />
                <asp:Parameter Name="IDDjelatnik" Type="Byte" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:PRAConnectionString %>"
            SelectCommand="SELECT [IDTipDjelatnika], [Naziv] FROM [TipDjelatnika]"></asp:SqlDataSource>
    </div>

    <table cssclass="table table-light" style="display: flex; justify-content: center; margin-left: auto; margin-right: auto; margin-top: 2rem">
        <tr>
            <td>
                <asp:Label Text="Ime: " runat="server" meta:resourcekey="LabelResource1" />
                <asp:TextBox ID="txtIme" runat="server" controltovalidate="txtName" meta:resourcekey="txtImePrezimeResource1"></asp:TextBox>
            </td>
            <td>
                <asp:Label Text="Prezime: " runat="server" meta:resourcekey="LabelResource6" />
                <asp:TextBox ID="txtPrezime" runat="server" controltovalidate="txtSurname" meta:resourcekey="txtImePrezimeResource1"></asp:TextBox>
            </td>
            <td>
                <asp:Label Text="Email: " runat="server" meta:resourcekey="LabelResource3" />
                <asp:TextBox ID="txtEmail" runat="server" controltovalidate="txtEmail" meta:resourcekey="txtEmailResource1"></asp:TextBox>
            </td>
            <td>
                <asp:Label Text="Datum Zaposlenja: " runat="server" meta:resourcekey="LabelResource5" />
                <asp:TextBox ID="txtDatumZaposlenja" runat="server" controltovalidate="txtDate" meta:resourcekey="txtEmailResource1" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                <asp:Label Text="Zaporka: " runat="server" meta:resourcekey="LabelResource7" />
                <asp:TextBox ID="txtZaporka" runat="server" controltovalidate="txtPass" meta:resourcekey="txtEmailResource1" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:Label Text="Tip Djelatnika: " runat="server" meta:resourcekey="LabelResource2" />
                <asp:DropDownList ID="ddlTipDjelatnika"
                    AutoPostBack="True"
                    runat="server"
                    DataSourceID="SqlDataSource3"
                    DataTextField="Naziv"
                    DataValueField="IDTipDjelatnika" meta:resourcekey="ddlTipDjelatnikaResource1">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label Text="Tim: " runat="server" meta:resourcekey="LabelResource4" />
                <asp:TextBox ID="txtImeTima" runat="server" controltovalidate="txtTim" meta:resourcekey="txtImeTimaResource1"></asp:TextBox>
                <%--<asp:DropDownList runat="server"
                    AutoPostBack="true"
                    ID="ddlImenaTimova"
                    DataSourceID="SqlDataSource2"
                    DataTextField="Naziv"
                    DataValueField="IDTim">
                </asp:DropDownList>--%>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button Text="Dodaj" ID="BtnDodaj" OnClick="BtnDodaj_Click" runat="server" CssClass="btn btn-outline-secondary" meta:resourcekey="btnDodajResource1" />
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style1 {
            margin-left: 8px;
        }

        .btnEditCancle {
            margin-top: 8px;
        }
    </style>
</asp:Content>
