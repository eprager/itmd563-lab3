﻿<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="CalculateForm.aspx.cs" Inherits="MortgageCalculator.Calculate" %>

<%@ Register Src="~/PageHeader.ascx" TagPrefix="uc1" TagName="PageHeader" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mortgage Calculator</title>
    <style type="text/css">
     
    </style>
</head>
<body>

    <form id="form1" runat="server">

        <uc1:PageHeader runat="server" id="PageHeader" />

        <h2>Calculate Mortgage Monthly Payment</h2>

        <div>
            <asp:Label ID="Label1" AssociatedControlID="princ" runat="server" Text="Please enter the principle amount "></asp:Label>
            <asp:TextBox ID="princ" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:Label ID="duration" runat="server" AssociatedControlID="LoanDur" Text="Please enter the loan duration in years"></asp:Label>
            <asp:RadioButtonList ID="LoanDur" runat="server" AutoPostBack="true" OnSelectedIndexChanged="LoanDur_SelectedIndexChanged">
                <asp:ListItem Value="15" Selected="True">15 Years</asp:ListItem>
                <asp:ListItem Value="30">30 Years</asp:ListItem>
                <asp:ListItem Value="Other">Other</asp:ListItem>
            </asp:RadioButtonList>
            
            <asp:Label ID="Label2" AssociatedControlID="otherBox" runat="server" Text=" "></asp:Label>
            <asp:TextBox ID="otherBox" Enabled="false" runat="server" AutoPostBack="true" style="margin-left: 81px"></asp:TextBox>

            <br />
            <br />

            <asp:Label ID="rate" AssociatedControlID="InterestRate" runat="server" Text="Please select the interest rate "></asp:Label>
            <asp:DropDownList ID="InterestRate" runat="server">
                <asp:ListItem Value=".25">.25%</asp:ListItem>
                <asp:ListItem Value=".50">.50%</asp:ListItem>
                <asp:ListItem Value=".75">.75%</asp:ListItem>
                <asp:ListItem Value="1.00">1.00%</asp:ListItem>
                <asp:ListItem Value="1.25">1.25%</asp:ListItem>
                <asp:ListItem Value="1.50">1.50%</asp:ListItem>
                <asp:ListItem Value="1.75">1.75%</asp:ListItem>
                <asp:ListItem Value="2.00">2.00%</asp:ListItem>
                <asp:ListItem Value="2.25">2.25%</asp:ListItem>
                <asp:ListItem Value="2.50">2.50%</asp:ListItem>
                <asp:ListItem Value="2.75">2.75%</asp:ListItem>
                <asp:ListItem Value="3.00">3.00%</asp:ListItem>
                <asp:ListItem Value="3.25">3.25%</asp:ListItem>
                <asp:ListItem Value="3.50">3.50%</asp:ListItem>
                <asp:ListItem Value="3.75">3.75%</asp:ListItem>
                <asp:ListItem Value="4.00">4.00%</asp:ListItem>
                <asp:ListItem Value="4.25">4.25%</asp:ListItem>
                <asp:ListItem Value="4.50">4.50%</asp:ListItem>
                <asp:ListItem Value="4.75">4.75%</asp:ListItem>
                <asp:ListItem Value="5.00">5.00%</asp:ListItem>
                <asp:ListItem Value="5.25">5.25%</asp:ListItem>
                <asp:ListItem Value="5.50">5.50%</asp:ListItem>
                <asp:ListItem Value="5.75">5.75%</asp:ListItem>
                <asp:ListItem Value="6.00">6.00%</asp:ListItem>
                <asp:ListItem Value="6.25">6.25%</asp:ListItem>
                <asp:ListItem Value="6.50">6.50%</asp:ListItem>
                <asp:ListItem Value="6.75">6.75%</asp:ListItem>
                <asp:ListItem Value="7.00">7.00%</asp:ListItem>
                <asp:ListItem Value="7.25">7.25%</asp:ListItem>
                <asp:ListItem Value="7.50">7.50%</asp:ListItem>
                <asp:ListItem Value="7.75">7.75%</asp:ListItem>
                <asp:ListItem Value="8.00">8.00%</asp:ListItem>
                <asp:ListItem Value="8.25">8.25%</asp:ListItem>
                <asp:ListItem Value="8.50">8.50%</asp:ListItem>
                <asp:ListItem Value="8.75">8.75%</asp:ListItem>
                <asp:ListItem Value="9.00">9.00%</asp:ListItem>
                <asp:ListItem Value="9.25">9.25%</asp:ListItem>
                <asp:ListItem Value="9.50">9.50%</asp:ListItem>
                <asp:ListItem Value="9.75">9.75%</asp:ListItem>
                <asp:ListItem Value="10.00">10.00%</asp:ListItem>
                
            </asp:DropDownList>

            <asp:Button ID="submit" OnClick="submit_Click" runat="server" AutoPostBack="true" Text="Monthly Payment" />

            <br />
            <br />

            <asp:Label ID="result" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Label ID="result2" runat="server" Text=""></asp:Label>

        </div>
    </form>
    
</body>
</html>
