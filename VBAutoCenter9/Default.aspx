<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="VBAutoCenter9._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 39%;
        }
        .style2
        {
            width: 125px;
        }
        .style3
        {
            width: 39%;
        }
        .style4
        {
            width: 121px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Selling Price:
                </td>
                <td>
                    <asp:TextBox ID="SellingPriceTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Cost Value:</td>
                <td>
                    <asp:TextBox ID="CostValueTextBox" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    <p>
        &nbsp;</p>
    <table class="style3">
        <tr>
            <td class="style4">
        Commision:   
            </td>
            <td>
                <asp:TextBox ID="CommisionTextBox" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="CalculateButton" runat="server" Text="Calculate" />
    <asp:Button ID="ClearButton" runat="server" Text="Clear" />
    <asp:Button ID="PrintButton" runat="server" Text="Print" />
    <asp:Button ID="ExitButton" runat="server" Text="Exit" />
    
    </form>
    </body>
</html>
