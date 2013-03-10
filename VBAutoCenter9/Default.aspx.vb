Public Class _Default
    Inherits System.Web.UI.Page

    Dim SelectedFinish As Decimal

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    
    Protected Sub CalculateButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles CalculateButton.Click
        If BasePriceTextBox.Text <> "" Then
            Dim BasePrice As Decimal
            Dim TradeIn As Decimal
            Dim SubTotal As Decimal = 0
            Dim TotalWTax As Decimal
            Dim AmountDue As Decimal
            Dim Finish As Decimal = 0
            Dim SalesTax As Decimal
            Const Stereo As Decimal = 425.76
            Const Leather As Decimal = 987.41
            Const Nav As Decimal = 1741.23
            Const Tax As Decimal = 0.08

            Try
                If TradeInTextBox.Text = "" Then
                    TradeIn = 0
                    TradeInTextBox.Text = 0
                Else
                    TradeIn = Decimal.Parse(TradeInTextBox.Text)
                End If
                BasePrice = Decimal.Parse(BasePriceTextBox.Text)

                If AdditionalAccessoriesCheckBoxList.Items.FindByText("Stereo System").Selected = True Then
                    Finish += Stereo
                End If

                If AdditionalAccessoriesCheckBoxList.Items.FindByText("Leather Interior").Selected = True Then
                    Finish += Leather
                End If

                If AdditionalAccessoriesCheckBoxList.Items.FindByText("Computer Navigation").Selected = True Then
                    Finish += Nav
                End If



                SubTotal += BasePrice
                Finish += SelectedFinish
                SubTotal += Finish

                SalesTax = SubTotal * Tax
                TotalWTax = SalesTax + SubTotal

                AmountDue = TotalWTax - TradeIn

                'Display calculations
                SubTotalLabel.Text = SubTotal.ToString("C")
                FinishLabel.Text = Finish.ToString("C")
                SalesTaxLabel.Text = SalesTax.ToString("C")
                TotalWTaxLabel.Text = TotalWTax.ToString("C")
                AmntDueLabel.Text = AmountDue.ToString("C")


            Catch ex As FormatException
                MsgBox("Enter Numbers for Base Price and Trade In Value")

            End Try
        Else
            ' MsgBox("Please enter Numbers for Base Price and Trade In")
        End If
    End Sub

    Protected Sub ExteriorFinishRadioList_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ExteriorFinishRadioList.SelectedIndexChanged
        

        If ExteriorFinishRadioList.Items.FindByText("Standard").Selected = True Then
            SelectedFinish = 0
        ElseIf ExteriorFinishRadioList.Items.FindByText("Pearlized").Selected = True Then
            SelectedFinish = 345.72
        ElseIf ExteriorFinishRadioList.Items.FindByText("Customized").Selected = True Then
            SelectedFinish = 599.99
        End If

       
    End Sub

    Protected Sub ClearButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ClearButton.Click
        BasePriceTextBox.Text = ""
        TradeInTextBox.Text = ""
        FinishLabel.Text = ""
        SubTotalLabel.Text = ""
        SalesTaxLabel.Text = ""
        TotalWTaxLabel.Text = ""
        AmntDueLabel.Text = ""
        AdditionalAccessoriesCheckBoxList.Items.FindByText("Stereo System").Selected = False
        AdditionalAccessoriesCheckBoxList.Items.FindByText("Leather Interior").Selected = False
        AdditionalAccessoriesCheckBoxList.Items.FindByText("Computer Navigation").Selected = False
        ExteriorFinishRadioList.Items.FindByText("Standard").Selected = True
        ExteriorFinishRadioList.Items.FindByText("Pearlized").Selected = False
        ExteriorFinishRadioList.Items.FindByText("Customized").Selected = False
    End Sub

    
End Class