<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Api_Admin.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/custom.css" rel="stylesheet" />
</head>
<body style="background-color: lightgray;">

        <div class="container">
            <div class="jumbotron" style="margin-top:20%; background-color: lightgray;" >
                 <form runat="server" style="color: black; background-color:white; margin-top: 1rem;">
                     <h2 style="color:black; text-align:center ">Login</h2
                                 <div class="form-group text-center" style="color: black;">
                <asp:RequiredFieldValidator ErrorMessage="Pogrešan unos Email adrese" ControlToValidate="emaillog" runat="server" ForeColor="Red" />
                <asp:TextBox runat="server" ID="emaillog" class="form-control" type="email" name="email" placeholder="E-mail" Style="background-color: white; color:black;" />
                                 <div class="form-group">
                    <asp:RequiredFieldValidator ErrorMessage="Pogrešan unos zaporke" ControlToValidate="passlog" runat="server" ForeColor="Red" />
                    <asp:TextBox runat="server" ID="passlog" class="form-control" type="password" name="password" placeholder="Password" Style="background-color: white;
                            color: black;
                            margin-bottom: 2rem;" />
                                  <div class="form-group">
                        <asp:ValidationSummary runat="server" ForeColor="Red" />
                        <asp:Button ID="dalje" Text="Log in" runat="server" OnClick="btnDalje_Click" class="btn btn-primary btn-block" type="submit" Style="background-color: white; color: black" />
                        <asp:Label Text="" ID="validationlog" runat="server" Style="margin-top: 2rem; margin-left: 2rem" />
                 </form>
            </div>
        </div>
</body>
</html>
