<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="VBAutoCenter9._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 328px;
            
        }
        .style5
        {
            width: 107px;
        }
        .style6
        {
            height: 23px;
            width: 107px;
        }
        .style7
        {
            width: 69px;
        }
        .style8
        {
            height: 23px;
            width: 69px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1>VB Auto Center
    </h1><asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
            runat="server" ControlToValidate="BasePriceTextBox" 
            ErrorMessage="Please enter Numbers for Base Price and Trade In" 
            ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
    <div id="MainArea">
       <table class="style1">
           <tr>
               <td align="right" class="style7">
                   Base Price</td>
               <td class="style5">
                   <asp:TextBox ID="BasePriceTextBox" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td align="right" class="style7">
                   Accessories and Finish</td>
               <td class="style5">
                   <asp:Label ID="FinishLabel" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td align="right" class="style7">
                   SubTotal</td>
               <td class="style5" >
                   <asp:Label ID="SubTotalLabel" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td align="right" class="style8">
                   Sales Tax (8%)</td>
               <td class="style6">
                   <asp:Label ID="SalesTaxLabel" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td align="right" class="style7">
                   Total w/ Tax</td>
               <td class="style5">
                   <asp:Label ID="TotalWTaxLabel" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td align="right" class="style7">
                   Trade in Allowance</td>
               <td class="style5">
                   <asp:TextBox ID="TradeInTextBox" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td align="right" class="style7">
                   Ammount Due</td>
               <td class="style5">
                   <asp:Label ID="AmntDueLabel" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td align="right" class="style7" colspan="2">
                   
                    <asp:Button ID="CalculateButton" runat="server" Text="Calculate" />
                    <asp:Button ID="ClearButton" runat="server" Text="Clear" />
               </td>
               
           </tr>
       </table>
   </div>
    <div id="AdditionalAccessories">
    <h3>Additional Accessories</h3>
        <asp:CheckBoxList ID="AdditionalAccessoriesCheckBoxList" runat="server">
            <asp:ListItem>Stereo System</asp:ListItem>
            <asp:ListItem>Leather Interior</asp:ListItem>
            <asp:ListItem>Computer Navigation</asp:ListItem>
        </asp:CheckBoxList>
    
    </div>
    <div id="ExteriorFinish">
    <h3>Exterior Finish</h3>
        <asp:RadioButtonList ID="ExteriorFinishRadioList" runat="server">
            <asp:ListItem Selected="True">Standard</asp:ListItem>
            <asp:ListItem>Pearlized</asp:ListItem>
            <asp:ListItem>Customized</asp:ListItem>
        </asp:RadioButtonList>
    
    </div>
   

    
    
    <a href="Contact.aspx">Contact info</a>
   

    
    </form>
    </body>
</html>
