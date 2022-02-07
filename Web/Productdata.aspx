<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Productdata.aspx.vb" Inherits="Web_Product" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ข้อมูลยี่ห้อสินค้า</title>

    <link href="css/mygrid.css" type="text/css" rel="stylesheet" />

</head>
<body>
   <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="txtSearchCategoryName" runat="server" Text="search" />
        <asp:GridView ID="gvBrand" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="productDS" Width="600px" CssClass="mydatagrid" BackColor="#66CCFF" BorderColor="#FFFFCC" ForeColor="#99CCFF" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName">
                </asp:BoundField>
                <asp:BoundField DataField="UnitBuyKey" HeaderText="UnitBuyKey" SortExpression="UnitBuyKey" />
                <asp:BoundField DataField="UnitSaleKey" HeaderText="UnitSaleKey" SortExpression="UnitSaleKey">
                </asp:BoundField>
                <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
                <asp:BoundField DataField="SizeDescription" HeaderText="SizeDescription" SortExpression="SizeDescription" />
            </Columns>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
    </div>
        <asp:SqlDataSource ID="productDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [UnitBuyKey], [UnitSaleKey], [SalePrice], [SizeDescription] FROM [Product]" CancelSelectOnNullParameter="False">
       </asp:SqlDataSource>
    </form>
</body>
</html>
