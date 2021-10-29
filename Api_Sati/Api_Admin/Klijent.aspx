<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Klijent.aspx.cs" Inherits="Api_Admin.Klijent1" Culture="auto" meta:resourcekey="PageResource1" UICulture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="content2" runat="server" ContentPlaceHolderID="content">
    <br />
    <asp:GridView
        ID="GridView1"
        runat="server"
        AllowPaging="True"
        AllowSorting="True"
        DataKeyNames="IDKlijent"
        AutoGenerateColumns="False"
        BackColor="White"
        BorderColor="White"
        BorderStyle="None"
        BorderWidth="1px"
        CellPadding="7"
        DataSourceID="SqlDataSource1"
        GridLines="Vertical"
        Width="1105px"
        meta:resourcekey="GridView1Resource1">

        <Columns>
            <asp:BoundField DataField="IDKlijent" HeaderText="IDKlijent" SortExpression="IDKlijent" ReadOnly="True" meta:resourcekey="BoundFieldResource1" />
            <asp:BoundField DataField="Naziv" HeaderText="Naziv" SortExpression="Naziv" meta:resourcekey="BoundFieldResource2" />
            <asp:BoundField DataField="Telefon" HeaderText="Telefon" SortExpression="Telefon" meta:resourcekey="BoundFieldResource3" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" meta:resourcekey="BoundFieldResource4" />
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
        SelectCommand="SELECT * FROM [Klijent]" DeleteCommand="DELETE FROM [Klijent] WHERE [IDKlijent] = @IDKlijent" InsertCommand="INSERT INTO [Klijent] ([IDKlijent], [Naziv], [Telefon], [Email]) VALUES (@IDKlijent, @Naziv, @Telefon, @Email)" UpdateCommand="UPDATE [Klijent] SET [Naziv] = @Naziv, [Telefon] = @Telefon, [Email] = @Email WHERE [IDKlijent] = @IDKlijent">
        <DeleteParameters>
            <asp:Parameter Name="IDKlijent" Type="Byte" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDKlijent" Type="Byte" />
            <asp:Parameter Name="Naziv" Type="String" />
            <asp:Parameter Name="Telefon" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Naziv" Type="String" />
            <asp:Parameter Name="Telefon" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="IDKlijent" Type="Byte" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="container">
        <table cssclass="table table-light" style="margin-left: auto; margin-right: auto; margin-top: 2rem;">
            <tr>
                <td>
                    <asp:Label Text="Naziv: " runat="server" meta:resourcekey="LabelResource1" />
                    <asp:TextBox ID="txtNaziv" runat="server" meta:resourcekey="txtImeResource1"></asp:TextBox>
                </td>
                <td>
                    <asp:Label Text="Telefon: " runat="server" meta:resourcekey="LabelResource2" />
                    <asp:TextBox ID="txtTelefon" runat="server" meta:resourcekey="txtDatumNarudzbeResource1"></asp:TextBox>
                </td>
                <td>
                    <asp:Label Text="Email: " runat="server" meta:resourcekey="LabelResource3" />
                    <asp:TextBox ID="txtEmail" runat="server" meta:resourcekey="txtDatumNarudzbeResource1"></asp:TextBox>
                </td>
                <td>
                    <asp:Button Text="Dodaj" ID="BtnDodaj" OnClick="BtnDodaj_Click" runat="server" CssClass="btn btn-outline-secondary" Style="margin: 1rem" meta:resourcekey="BtnDodajResource1" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
