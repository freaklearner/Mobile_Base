Partial Class _Default
    Inherits System.Web.UI.Page
    Dim i As Integer = 0

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        If radioSearch.SelectedIndex = 0 Then
            Response.Redirect("./MobileView.aspx?md=" + DropDownList1.SelectedValue.ToString + "&bd=" + ViewState("bd").ToString + "&V=1")
        ElseIf radioSearch.SelectedIndex = 1 Then
            Response.Redirect("./TabletView.aspx?md=" + DropDownList1.SelectedValue.ToString + "&bd=" + ViewState("bd").ToString + "&V=1")
        End If


    End Sub

    Protected Sub radioSearch_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles radioSearch.SelectedIndexChanged
        'ClientScript.RegisterStartupScript(Me.GetType, "", "window.scrollTo(200,0)")
        'MsgBox(radioSearch.SelectedIndex)
        drpListBrand.Text = ""
        If radioSearch.SelectedIndex = 1 Then
            SqlDataSource1.SelectCommand = "select * from TabletBrands"
            '   MsgBox(radioSearch.SelectedIndex.ToString)
            drpListBrand.DataBind()
            i = 0
        Else
            SqlDataSource1.SelectCommand = "select * from Brand"
            '  MsgBox(radioSearch.SelectedIndex.ToString)
            drpListBrand.DataBind()
            i = 1
        End If


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.MaintainScrollPositionOnPostBack = "true"


    End Sub

    'Protected Sub drpListBrand_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpListBrand.SelectedIndexChanged
    '    If radioSearch.SelectedIndex = 0 Then
    '        'If i = 0 Then
    '        SqlDataSource2.SelectCommand = "select ID, ModelId from Specifications where BrandNo=" + drpListBrand.SelectedValue
    '        DropDownList1.DataBind()
    '        'ElseIf radioSearch.SelectedIndex = 1 Then
    '    Else
    '        SqlDataSource2.SelectCommand = "select Id, ModelId from SpecificationsTablet where Brand=" + drpListBrand.SelectedValue
    '        DropDownList1.DataBind()
    '    End If
    'End Sub




    Protected Sub dataListBrands_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles dataListBrands.ItemCommand
        drpListBrand.Text = e.CommandName
        ViewState("bd") = e.CommandArgument
        If radioSearch.SelectedIndex = 0 Then
            'If i = 0 Then
            SqlDataSource2.SelectCommand = "select ID, ModelId from Specifications where BrandNo=" + e.CommandArgument.ToString
            DropDownList1.DataBind()
            'ElseIf radioSearch.SelectedIndex = 1 Then
        Else
            SqlDataSource2.SelectCommand = "select Id, ModelId from SpecificationsTablet where Brand=" + e.CommandArgument.ToString
            DropDownList1.DataBind()
        End If
    End Sub
End Class