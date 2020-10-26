<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListMortgages.aspx.cs" Inherits="MortgageCalculator.ListMortgages" %>

<%@ Register Src="~/PageHeader.ascx" TagPrefix="uc1" TagName="PageHeader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List Mortgages</title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:PageHeader runat="server" id="PageHeader" />
        <h2>List Mortgages</h2>
        <div>
            <asp:Button ID="list" runat="server" onClick="list_Click" Text="View Submissions" />
            <br />
            <br />

            <asp:Label ID="data" runat="server" AssociatedControlID="Mortgages" Text=""></asp:Label>
            <asp:TextBox ID="Mortgages" Text="" runat="server" Multiline="true" Height="146px" Width="672px" ReadOnly="True" Rows="1000" TextMode="MultiLine"></asp:TextBox>
            
        </div>
    </form>
</body>
</html>
