Partial Class TabletView
    Inherits System.Web.UI.Page

    Public Sub chklist()
        Dim str As String = "SELECT distinct P.PriceID, P.PriceCatogary FROM (PriceCatogary as P INNER JOIN SpecificationsTablet as s ON s.PriceCatogary = P.PriceID) WHERE s.brand=" + Request.QueryString("bd")
        'MsgBox(str)
        SqlDataSource2.SelectCommand = str
        'MsgBox(SqlDataSource3.SelectCommand)
        'MsgBox(str)
        'MsgBox(chkListBrands.SelectedItem.ToString)
        'End If
    End Sub

    Protected Sub chkListBrands_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkListBrands.SelectedIndexChanged
        'If ViewState("flag") = 0 Then
        Dim str As String = "SELECT distinct P.PriceID, P.PriceCatogary FROM (PriceCatogary as P INNER JOIN SpecificationsTablet as s ON s.PriceCatogary = P.PriceID) WHERE"
        Dim str1 As String = "SELECT s.ID, s.Brand, s.ModelID, s.Price, B.BrandName, I.img1, I.img2, I.img3, I.img4 FROM ((SpecificationsTablet s INNER JOIN Images I ON s.ModelID = I.ModelId) INNER JOIN TabletBrands B ON s.Brand = B.ID) WHERE"
        Dim st As String = ""
        Dim flag As Boolean = False
        For i = 0 To chkListBrands.Items.Count - 1 Step 1
            If chkListBrands.Items(i).Selected Then
                ' MsgBox(chkListBrands.Items(i).ToString)
                If flag = False Then
                    st = " (s.brand=" + chkListBrands.Items(i).Value
                    flag = True
                    HeadingLabel.Text = chkListBrands.Items(i).ToString
                Else
                    st = st + " or s.brand=" + chkListBrands.Items(i).Value
                    HeadingLabel.Text = HeadingLabel.Text + "/" + chkListBrands.Items(i).ToString
                End If
                'MsgBox(str)
            End If
        Next
        If flag = True Then
            str = str + st + ")"
            str1 = str1 + st + ")"
            ViewState("str") = str1
            'MsgBox(st)
            SqlDataSource3.SelectCommand = str1
            datalist1.DataBind()
            'MsgBox(st)
            SqlDataSource2.SelectCommand = str
            'MsgBox(SqlDataSource3.SelectCommand)
        Else
            'chkListBrands.ClearSelection()
            HeadingLabel.Text = "All Brands"
            SqlDataSource3.SelectCommand = "SELECT s.ID, s.Brand, s.ModelID, s.Price, B.BrandName, I.img1, I.img2, I.img3, I.img4 FROM ((SpecificationsTablet s INNER JOIN Images I ON s.ModelID = I.ModelId) INNER JOIN TabletBrands B ON s.Brand = B.ID)"
            datalist1.DataBind()
            'MsgBox(SqlDataSource3.SelectCommand)
        End If
        'MsgBox(str)
        'MsgBox(chkListBrands.SelectedItem.ToString)
        'End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.MaintainScrollPositionOnPostBack = True

        If Not Page.IsPostBack Then
            ViewState("str") = ""
            chkListBrands.SelectedValue = Request.QueryString("bd").ToString
            'SqlDataSource2.SelectCommand = "SELECT distinct P.PriceID, P.PriceCatogary FROM (PriceCatogary as P INNER JOIN Specifications as s ON s.PriceNo = P.PriceID)"
            If Request.QueryString("V") = 1 Then
                SqlDataSource3.SelectCommand = "SELECT s.ID, s.Brand, s.ModelID, s.Price, B.BrandName, I.img1, I.img2, I.img3, I.img4 FROM ((SpecificationsTablet s INNER JOIN Images I ON s.ModelID = I.ModelId) INNER JOIN TabletBrands B ON s.Brand = B.ID) WHERE s.ID =" + Request.QueryString("md") ' + " or s.BrandNo=" + Request.QueryString("bd")
                ViewState("str") = "SELECT s.ID, s.Brand, s.ModelID, s.Price, B.BrandName, I.img1, I.img2, I.img3, I.img4 FROM ((SpecificationsTablet s INNER JOIN Images I ON s.ModelID = I.ModelId) INNER JOIN TabletBrands B ON s.Brand = B.ID) WHERE s.Brand =" + Request.QueryString("bd")
                HeadingLabel.Text = "Search Result"
                'SqlDataSource3.SelectCommand = "SELECT s.ID, s.BrandNo, s.ModelID, s.Price, B.BrandName, I.img1 FROM ((Specifications s INNER JOIN Images I ON s.ModelID = I.ModelId) INNER JOIN Brand B ON s.BrandNo = B.ID)"
                'MsgBox(SqlDataSource3.SelectCommand)
                datalist1.DataBind()
                chklist()
            Else
                SqlDataSource3.SelectCommand = "SELECT s.ID, s.Brand, s.ModelID, s.Price, B.BrandName, I.img1, I.img2, I.img3, I.img4 FROM ((SpecificationsTablet s INNER JOIN Images I ON s.ModelID = I.ModelId) INNER JOIN TabletBrands B ON s.Brand = B.ID) WHERE s.Brand =" + Request.QueryString("bd")
                ViewState("str") = SqlDataSource3.SelectCommand
                HeadingLabel.Text = Request.QueryString("md").ToString
                'MsgBox(SqlDataSource3.SelectCommand)
                chklist()
            End If
        End If
    End Sub

    Protected Sub CheckBoxList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBoxList1.SelectedIndexChanged
        'Dim str As String = "SELECT distinct P.PriceID, P.PriceCatogary FROM (PriceCatogary as P INNER JOIN Specifications as s ON s.PriceNo = P.PriceID) WHERE"
        Dim str1 As String = ViewState("str")
        'SqlDataSource3.SelectCommand '"SELECT s.ID, s.BrandNo, s.ModelID, s.Price, B.BrandName, I.img1 FROM ((Specifications s INNER JOIN Images I ON s.ModelID = I.ModelId) INNER JOIN Brand B ON s.BrandNo = B.ID) WHERE"
        Dim st As String = ""
        Dim flag As Boolean = False
        For i = 0 To CheckBoxList1.Items.Count - 1 Step 1
            If CheckBoxList1.Items(i).Selected Then
                ' MsgBox(chkListBrands.Items(i).ToString)
                If flag = False Then
                    st = " (s.priceCatogary=" + CheckBoxList1.Items(i).Value
                    flag = True
                Else
                    st = st + " or s.priceCatogary=" + CheckBoxList1.Items(i).Value
                End If

                'MsgBox(str)
            End If
        Next
        'str = str + st
        If flag = True Then
            str1 = str1 + " and " + st + ")"
        End If

        'MsgBox(str1)
        SqlDataSource3.SelectCommand = str1
        'MsgBox(st)
        'SqlDataSource2.SelectCommand = str
    End Sub

    Protected Sub datalist1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles datalist1.ItemCommand
        'If e.CommandName = "B1" Then
        'MsgBox(e.CommandArgument)
        Response.Redirect("./TabletDetailsView.aspx?md=" + e.CommandArgument)
        'End If
    End Sub

End Class