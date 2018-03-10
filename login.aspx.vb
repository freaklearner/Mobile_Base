Imports System.Data.OleDb
Imports System.Data

Partial Class login
    Inherits System.Web.UI.Page
    Dim con As OleDbConnection = New OleDbConnection
    Dim cmd As OleDbCommand = New OleDbCommand
    Dim ds As DataSet = New DataSet
    Dim adp As OleDbDataAdapter = New OleDbDataAdapter
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            'MsgBox("not post back")
            Session.Abandon()
            'Response.Cache.SetCacheability(HttpCacheability.NoCache)
            'Response.Cache.SetExpires(DateTime.UtcNow.AddHours(-1))
            'Response.Cache.SetNoStore()
        End If
    End Sub
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Try
            label1.Text = ""
            con.ConnectionString = SqlDataSource1.ConnectionString
            cmd.Connection = con
            cmd.CommandText = "select * from login"
            adp.SelectCommand = cmd
            adp.Fill(ds, "login")
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        If txtusr.Text = ds.Tables("login").Rows(0)(1).ToString Then
            If txtpsw.Text = ds.Tables("login").Rows(0)(2).ToString Then

                Session("rajat") = "rajat1234"
                txtusr.Text = ""
                txtpsw.Text = ""

                Response.Redirect("./admin.aspx")
            Else
                label1.Text = "* user id or password may not correct"
            End If
        Else
            label1.Text = "* user id or password is may not correct"
        End If
    End Sub
End Class
