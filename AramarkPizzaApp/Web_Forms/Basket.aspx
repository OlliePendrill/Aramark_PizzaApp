<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Basket.aspx.cs" Inherits="AramarkPizzaApp.Basket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Basket<br />
            <br />
            <asp:Button ID="menuBack" runat="server" Height="25px" OnClick="menuBack_Click" Text="Back to menu" Width="98px" />
            <br />
            <br />
            Your basket contains:<br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="clearB" runat="server" OnClick="clearB_Click" Text="Clear basket (double-click)" Width="177px" />
            <br />
            <br />
            Total cost:
            <asp:Label ID="resultLabelTotalCost" runat="server"></asp:Label>
            <br />
            <br />
            Returning to the menu will not clear the basket!<br />
            <br />
            Information required to place order:<br />
            <br />
            Name:
            <asp:TextBox ID="PersonNameInput" runat="server"></asp:TextBox>
            <br />
            Email:
            <asp:TextBox ID="PersonAddressInput" runat="server"></asp:TextBox>
            <br />
            S0 number:
            <asp:TextBox ID="PostCodeInput" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="SavePersonInfo" runat="server" OnClick="SavePersonInfo_Click" Text="Confirm order and save" Width="147px" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Return to home" />
            <br />
            <asp:GridView ID="grdOrders" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" InsertVisible="False" />
                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                    <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail" SortExpression="CustomerEmail" />
                    <asp:BoundField DataField="CustomerS0" HeaderText="CustomerS0" SortExpression="CustomerS0" />
                    <asp:BoundField DataField="Order" HeaderText="Order" SortExpression="Order" />
                    <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customer] ([CustomerName], [CustomerAddress], [CustomerPostCode], [Order], [Cost]) VALUES (@CustomerName, @CustomerAddress, @CustomerPostCode, @Order, @Cost)" SelectCommand="SELECT [CustomerID], [CustomerName], [CustomerEmail], [CustomerS0], [Order], [Cost] FROM [Customer]" UpdateCommand="UPDATE [Customer] SET [CustomerName] = @CustomerName, [CustomerAddress] = @CustomerAddress, [CustomerPostCode] = @CustomerPostCode, [Order] = @Order, [Cost] = @Cost WHERE [CustomerID] = @CustomerID">
                <DeleteParameters>
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="CustomerAddress" Type="String" />
                    <asp:Parameter Name="CustomerPostCode" Type="String" />
                    <asp:Parameter Name="Order" Type="String" />
                    <asp:Parameter Name="Cost" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CustomerName" Type="String" />
                    <asp:Parameter Name="CustomerAddress" Type="String" />
                    <asp:Parameter Name="CustomerPostCode" Type="String" />
                    <asp:Parameter Name="Order" Type="String" />
                    <asp:Parameter Name="Cost" Type="Decimal" />
                    <asp:Parameter Name="CustomerID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
