<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="AramarkPizzaApp.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Menu<br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="201px" ImageUrl="~/pizzapictures/istockphoto-1168754685-170667a.jpg" Width="201px" />
            <br />
            Margherita £3.60
            <br />
            <asp:Button ID="cheeseButton" runat="server" Height="26px" OnClick="cheeseButton_Click" Text="Add Margherita pizza to basket" Width="201px" />
            <br />
            <br />
            <asp:Image ID="Image2" runat="server" Height="201px" ImageUrl="~/pizzapictures/istockphoto-183889977-612x612.jpg" Width="201px" />
            <br />
            Pepperoni £3.80<br />
            <asp:Button ID="MeatButton" runat="server" Height="26px" OnClick="MeatButton_Click" Text="Add Pepperoni pizza to basket" Width="201px" />
            <br />
            <br />
            <asp:Button ID="homeBack" runat="server" OnClick="homeBack_Click" Text="Return to home page" />
            <br />
            <br />
            <asp:Button ID="basketButton" runat="server" OnClick="basketButton_Click" Text="View basket" Width="183px" />
            <br />
        </div>
    </form>
</body>
</html>
