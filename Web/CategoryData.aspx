<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CategoryData.aspx.vb" Inherits="Web_CategoryData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/mygrid.css" type="text/css" rel="stylesheet" />
    <style type="text/css">

.mydatagrid
{
	width: 100%;
	border: solid 2px #646464;
	min-width: 80%;
	font-family: prakas;
}
.header
{
	background-color: #646464;
	color: White;
	border: none 0px transparent;
	height: 25px;
	text-align: center;
}
.mydatagrid th
{
	padding: 5px;
}
.mydatagrid a /** FOR THE PAGING ICONS  **/
{
	background-color: Transparent;
	padding: 5px 5px 5px 5px;
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}
.rows
{
	background-color: #fff;
	color: #000;
	min-height: 25px;
	text-align: left;
	border: none 0px transparent;
	font-size: 0.9em;
}
.mydatagrid td
{
	padding: 2px;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
	background-color: #c9c9c9;
	color: #000;
	padding: 5px 5px 5px 5px;
}
    </style>
</head>
<body>
   <form id="form2" runat="server">
    <div>
       
        <asp:TextBox ID="TextCategory" runat="server"></asp:TextBox>
        <asp:Button ID="searchCategory" runat="server" Text="Search" />
        <br />
        <br />
        <asp:GridView ID="gvBrand" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="CategoryDS" Width="600px" CssClass="mydatagrid">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID">
                </asp:BoundField>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="CategoryKey" HeaderText="CategoryKey" SortExpression="CategoryKey">
                </asp:BoundField>
                <asp:BoundField DataField="BrandKey" HeaderText="BrandKey" SortExpression="BrandKey" />
                <asp:BoundField DataField="UnitBuyKey" HeaderText="UnitBuyKey" SortExpression="UnitBuyKey" />
                <asp:BoundField DataField="UnitSaleKey" HeaderText="UnitSaleKey" SortExpression="UnitSaleKey" />
                <asp:BoundField DataField="ReOrderUnit" HeaderText="ReOrderUnit" SortExpression="ReOrderUnit" />
                <asp:BoundField DataField="UnitBuyToSale" HeaderText="UnitBuyToSale" SortExpression="UnitBuyToSale" />
                <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
                <asp:BoundField DataField="SizeDescription" HeaderText="SizeDescription" SortExpression="SizeDescription" />
                <asp:BoundField DataField="UserModify" HeaderText="UserModify" SortExpression="UserModify" />
                <asp:BoundField DataField="ModifyDate" HeaderText="ModifyDate" SortExpression="ModifyDate" />
                <asp:BoundField DataField="Barcode2" HeaderText="Barcode2" SortExpression="Barcode2" />
                <asp:BoundField DataField="Barcode1" HeaderText="Barcode1" SortExpression="Barcode1" />
                <asp:BoundField DataField="Barcode3" HeaderText="Barcode3" SortExpression="Barcode3" />
                <asp:BoundField DataField="Barcode4" HeaderText="Barcode4" SortExpression="Barcode4" />
                <asp:BoundField DataField="Barcode5" HeaderText="Barcode5" SortExpression="Barcode5" />
            </Columns>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
        <asp:SqlDataSource ID="CategoryDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [CategoryKey], [BrandKey], [UnitBuyKey], [UnitSaleKey], [ReOrderUnit], [UnitBuyToSale], [SalePrice], [SizeDescription], [UserModify], [ModifyDate], [Barcode2], [Barcode1], [Barcode3], [Barcode4], [Barcode5] FROM [Product]" CancelSelectOnNullParameter="False">
        </asp:SqlDataSource>
       
        </div>
    </form>
</body>
</html>
