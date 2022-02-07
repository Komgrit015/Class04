<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UnitData.aspx.vb" Inherits="Web_UnitData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="UnitDS">
                <Columns>
                    <asp:BoundField DataField="UnitName" HeaderText="UnitName" SortExpression="UnitName" />
                    <asp:BoundField DataField="UnitABBR" HeaderText="UnitABBR" SortExpression="UnitABBR" />
                    <asp:BoundField DataField="UserModify" HeaderText="UserModify" SortExpression="UserModify" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="UnitDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT [UnitName], [UnitABBR], [UserModify] FROM [Unit]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
