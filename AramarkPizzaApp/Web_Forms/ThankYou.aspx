<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="AramarkPizzaApp.ThankYou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            THANK YOU FOR YOUR ORDER<br />
            <br />
            Available for collection soon.<br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Return to home" />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Exit" />
        </div>
    </form>
</body>
</html>
