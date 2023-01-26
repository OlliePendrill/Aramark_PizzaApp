<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="AramarkPizzaApp.EmployeeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Return to home" Width="196px" />
            <br />
            <br />
            Username: <asp:TextBox ID="usernamebox" runat="server"></asp:TextBox>
            <br />
            <br />
            Password:
            <asp:TextBox ID="pwordbox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="employeebutton" runat="server" OnClick="Button1_Click" Text="Login" Width="195px" />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
