
Partial Class Admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            If Not Session("rajat") Is Nothing Then

            Else
                'MsgBox("illegal access")
                Response.Redirect("./Home.aspx")
            End If
        Catch ex As Exception
            Response.Redirect("./Home.aspx")
        End Try

        If Request.QueryString("ans") = -1 Then

            chkBoxResponse.ForeColor = Drawing.Color.Red
            If Request.QueryString("msg") = "I" Then

                chkBoxResponse.Text = "Record Not Successfully Inserted, Check for Errors"

            ElseIf Request.QueryString("msg") = "U" Then

                chkBoxResponse.Text = "Record Not Successfully Updated, Check for Errors"

            ElseIf Request.QueryString("msg") = "D" Then

                chkBoxResponse.Text = "Record Not Successfully Deleted, Check for Errors"
            End If
            chkBoxResponse.Visible = True
        ElseIf Request.QueryString("ans") = 1 Then
            chkBoxResponse.ForeColor = Drawing.Color.Green
            If Request.QueryString("msg") = "I" Then
                chkBoxResponse.Text = "Record Successfully Inserted"

            ElseIf Request.QueryString("msg") = "U" Then
                chkBoxResponse.Text = "Record Successfully Updated"

            ElseIf Request.QueryString("msg") = "D" Then
                chkBoxResponse.Text = "Record Successfully Deleted"
            ElseIf Request.QueryString("msg") = "N" Then
                chkBoxResponse.Text = "News Successfully Updated"
            End If
            chkBoxResponse.Visible = True
        Else
            chkBoxResponse.Visible = False
        End If
        time.Text = Now

        
    End Sub

    Protected Sub chkBoxResponse_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkBoxResponse.CheckedChanged
        If chkBoxResponse.Checked = True Then
            chkBoxResponse.Visible = False

        End If
    End Sub
End Class
