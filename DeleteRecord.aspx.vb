Imports System.Data.OleDb
Imports System.Data
Imports System.IO
Partial Class DeleteRecord
    Inherits System.Web.UI.Page
    Dim con As OleDbConnection = New OleDbConnection
    Dim cmd As OleDbCommand = New OleDbCommand
    Dim reader As OleDbDataReader


    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Try
            con.ConnectionString = SqlDataSource1.ConnectionString
            cmd.Connection = con
            cmd.CommandText = "select * from Images where Brand=" + drpListBrand.SelectedValue + " and ModelId='" + DropDownList1.SelectedItem.ToString + "'"
            'MsgBox(cmd.CommandText)
            con.Open()
            reader = cmd.ExecuteReader
            'MsgBox("has rows: " + reader.HasRows.ToString)
            reader.Read()


            Dim s As String
            s = reader.GetValue(3).ToString
            If s.Length > 0 Then

                s = s.Substring(4, s.Length - 8)
                img1.Text = s
                ViewState("fileupload1") = s

            End If
            s = reader.GetValue(4).ToString
            If s.Length > 0 Then
                s = s.Substring(4, s.Length - 8)
                img2.Text = s
                ViewState("fileupload2") = s
            End If
            s = reader.GetValue(5).ToString
            If s.Length > 0 Then
                s = s.Substring(4, s.Length - 8)
                img3.Text = s
                ViewState("fileupload3") = s
            End If
            s = reader.GetValue(6).ToString
            If s.Length > 0 Then
                s = s.Substring(4, s.Length - 8)
                img4.Text = s
                ViewState("fileupload4") = s
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
        End Try
    End Sub

    Protected Sub DetailsView1_ItemDeleted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Response.Redirect("./Admin.aspx?msg=D&ans=1")


        'drpListBrand.DataBind()
        'DropDownList1.DataBind()

        

    End Sub

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
        If Not IsPostBack Then
            ViewState("fileupload1") = ""
            ViewState("fileupload2") = ""
            ViewState("fileupload3") = ""
            ViewState("fileupload4") = ""
        End If
    End Sub

    Protected Sub DetailsView1_ItemDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewDeleteEventArgs) Handles DetailsView1.ItemDeleting
        Dim complete As Boolean = True
        Try
            cmd.CommandText = "delete from images where modelid='" + e.Values(4).ToString + "'"
            'MsgBox("cmd to delete from images: " + cmd.CommandText)
            con.ConnectionString = SqlDataSource1.ConnectionString
            cmd.Connection = con
            'cmd.CommandText = "insert into images(Brand,ModelID,img1) values(@brand,@model,@img1)"
            'cmd.CommandText = command
            'cmd.CommandText = command
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            cmd.CommandText = "delete from KeyFeatures where modelid='" + e.Values(4).ToString + "'"
            'con.ConnectionString = SqlDataSource1.ConnectionString
            'cmd.Connection = con
            'cmd.CommandText = "insert into images(Brand,ModelID,img1) values(@brand,@model,@img1)"
            'cmd.CommandText = command
            'cmd.CommandText = command
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Dim s As String
            'MsgBox("viewstate value: " + ViewState("fileupload1"))
            If ViewState("fileupload1").ToString.Length > 0 Then
                Try
                    s = "~/Img/" + ViewState("fileupload1").ToString + ".jpg"
                    File.Delete(Server.MapPath(s))
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
            If ViewState("fileupload2").ToString.Length > 0 Then
                Try
                    s = "~/Img/" + ViewState("fileupload2").ToString + ".jpg"
                    File.Delete(Server.MapPath(s))
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
            If ViewState("fileupload3").ToString.Length > 0 Then
                Try
                    s = "~/Img/" + ViewState("fileupload3").ToString + ".jpg"
                    File.Delete(Server.MapPath(s))
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
            If ViewState("fileupload4").ToString.Length > 0 Then
                Try
                    s = "~/Img/" + ViewState("fileupload4").ToString + ".jpg"
                    File.Delete(Server.MapPath(s))
                Catch ex As Exception
                    MsgBox(ex.Message)
                End Try
            End If
            'Response.Redirect("./Admin.aspx")
        Catch ex As Exception
            MsgBox(ex.Message, MsgBoxStyle.OkOnly, "Testing")
            complete = False
            e.Cancel = True
        Finally
            ViewState.Clear()
            'e.Cancel = True
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
            If complete = False Then
                'Response.Redirect("./Admin.aspx?msg=D&ans=1")
                '                ViewState("flag") = 1
                '           Else
                Response.Redirect("./Admin.aspx?msg=D&ans=-1")
                'ViewState("flag") = 0
            End If
        End Try
    End Sub
End Class
