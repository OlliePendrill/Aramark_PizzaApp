<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeView.aspx.cs" Inherits="AramarkPizzaApp.EmployeeView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Employee order view<br />
            <asp:GridView ID="CustomerOrderTable" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                    <asp:BoundField DataField="CustomerAddress" HeaderText="CustomerAddress" SortExpression="CustomerAddress" />
                    <asp:BoundField DataField="CustomerPostCode" HeaderText="CustomerPostCode" SortExpression="CustomerPostCode" />
                    <asp:BoundField DataField="Order" HeaderText="Order" SortExpression="Order" />
                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
            <br />
            <asp:Button ID="homeButton" runat="server" OnClick="homeButton_Click" Text="Return to home screen" />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Exit" />
        </div>
    </form>
</body>
</html>
