<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AramarkPizzaApp._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Home page<br />
            <br />
            <asp:Button ID="menuButton" runat="server" OnClick="menuButton_Click" Text="Menu" Width="130px" />
            <br />
            <br />
            <asp:Button ID="employeeView" runat="server" OnClick="employeeView_Click" Text="Employee view" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Exit" />
            <br />
        </div>
    </form>
</body>
</html>
