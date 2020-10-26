<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClearMortgages.aspx.cs" Inherits="MortgageCalculator.ClearMortgages" %>

<%@ Register Src="~/PageHeader.ascx" TagPrefix="uc1" TagName="PageHeader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clear Mortgages</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:PageHeader runat="server" id="PageHeader" />
        <h2>Clear Mortgages</h2>
        <div>
            <asp:Button ID="clear" runat="server" onClick="clear_Click" Text="Clear Submissions" />
            <asp:Label ID="output" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
