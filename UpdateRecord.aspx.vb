Imports System.Data.OleDb
Imports System.Data
Partial Class UpdateRecord
    Inherits System.Web.UI.Page
    Dim i As Integer
    Dim con As OleDbConnection = New OleDbConnection
    Dim cmd As OleDbCommand = New OleDbCommand
    Dim reader As OleDbDataReader
    Protected Sub drpListBrand_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpListBrand.SelectedIndexChanged
       
        
    End Sub

    Protected Sub DetailsView1_ItemUpdated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        If Page.IsValid Then
            Dim complete As Boolean = True
            Try
                If Not e.OldValues(0) = e.NewValues(0) Or Not e.OldValues(5) = e.NewValues(5) Then
                    cmd.CommandText = "Update images set Brand=@b,ModelId=@m where Brand=@brand and ModelId=@model"
                    MsgBox(cmd.CommandText.ToString)
                    cmd.Parameters.AddWithValue("@b", Integer.Parse(e.NewValues(0)))
                    MsgBox("@b: " + e.NewValues(0))
                    cmd.Parameters.AddWithValue("@m", e.NewValues(5).ToString)
                    MsgBox("@m: " + e.NewValues(5))
                    cmd.Parameters.AddWithValue("@brand", Integer.Parse(e.OldValues(0)))
                    MsgBox("@brand: " + e.OldValues(0))
                    cmd.Parameters.AddWithValue("@model", e.OldValues(5).ToString)
                    MsgBox("@modelid: " + e.OldValues(5))
                    con.ConnectionString = SqlDataSource1.ConnectionString
                    cmd.Connection = con
                    con.Open()
                    cmd.ExecuteNonQuery()
                    cmd.Parameters.Clear()
                    con.Close()
                End If
                MsgBox("Brand: " + e.NewValues(0).ToString)
                MsgBox("model: " + e.NewValues(5).ToString)
                MsgBox("data check image")
                cmd.CommandText = "Update images set img1=@img1, img2=@img2, img3=@img3, img4=@img4 where Brand=" + e.NewValues(0).ToString + " and ModelId='" + e.NewValues(5).ToString + "'"
                'cmd.Parameters.AddWithValue("@brand", Integer.Parse(e.NewValues(0)))
                'cmd.Parameters.AddWithValue("@model", e.NewValues(5).ToString)
                cmd.Parameters.AddWithValue("@img1", "Img/" + img1.Text + ".jpg")
                cmd.Parameters.AddWithValue("@img2", "Img/" + img2.Text + ".jpg")
                cmd.Parameters.AddWithValue("@img3", "Img/" + img3.Text + ".jpg")
                cmd.Parameters.AddWithValue("@img4", "Img/" + img4.Text + ".jpg")
                con.ConnectionString = SqlDataSource1.ConnectionString
                cmd.Connection = con
                'cmd.CommandText = "insert into images(Brand,ModelID,img1) values(@brand,@model,@img1)"
                'cmd.CommandText = command
                'cmd.CommandText = command
                con.Open()
                cmd.ExecuteNonQuery()
                cmd.Parameters.Clear()
                MsgBox("data check features")
                cmd.CommandText = "Update KeyFeatures set f1=@f1, f2=@f2, f3=@f3, f4=@f4, f5=@f5, f6=@f6 where ModelId=@model"
                cmd.Parameters.AddWithValue("@f1", key1.Text)
                cmd.Parameters.AddWithValue("@f2", key2.Text)
                cmd.Parameters.AddWithValue("@f3", key3.Text)
                cmd.Parameters.AddWithValue("@f4", key4.Text)
                cmd.Parameters.AddWithValue("@f5", key5.Text)
                cmd.Parameters.AddWithValue("@f6", key6.Text)
                cmd.Parameters.AddWithValue("@model", e.NewValues(5).ToString)
                'cmd.CommandText = "insert into images(Brand,ModelID,img1) values(@brand,@model,@img1)"
                'cmd.CommandText = command
                'cmd.CommandText = command
                cmd.ExecuteNonQuery()
                cmd.Parameters.Clear()
                MsgBox("data check complete")
                'Response.Redirect("./Admin.aspx")
            Catch ex As Exception
                MsgBox(ex.Message, MsgBoxStyle.OkOnly, "Testing")
                complete = False
            Finally
                If con.State = ConnectionState.Open Then
                    con.Close()
                End If
                If complete = True Then
                    Response.Redirect("./Admin.aspx?msg=U&ans=1")
                Else
                    Response.Redirect("./Admin.aspx?msg=U&ans=-1")
                End If
            End Try
            drpListBrand.DataBind()
            DropDownList1.DataBind()
        End If
        'MsgBox(e.NewValues(0).ToString)
        'drpListBrand.SelectedValue = e.NewValues(0)

        'i = Page.Session.Contents("id Value")
        'MsgBox(i.ToString)
        'DropDownList1.SelectedValue = i
    End Sub

    Protected Sub DetailsView1_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewUpdateEventArgs) Handles DetailsView1.ItemUpdating
        'MsgBox(DetailsView1.DataKey.Value.ToString)

        'i = e.CommandArgument
        'Page.Session.Add("id Value", i)

    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        Try
            con.ConnectionString = SqlDataSource1.ConnectionString
            cmd.Connection = con

            cmd.CommandText = "select * from Images where Brand=" + drpListBrand.SelectedValue + " and ModelId='" + DropDownList1.SelectedItem.ToString + "'"
            MsgBox(drpListBrand.SelectedValue)
            MsgBox(DropDownList1.SelectedItem.ToString)
            con.Open()
            reader = cmd.ExecuteReader
            MsgBox("has rows: " + reader.HasRows.ToString)
            reader.Read()
            Dim s As String
            s = reader.GetValue(3).ToString
            If s.Length > 0 Then
                s = s.Substring(4, s.Length - 8)
                img1.Text = s
            End If
            s = reader.GetValue(4).ToString
            If s.Length > 0 Then
                s = s.Substring(4, s.Length - 8)
                img2.Text = s
            End If
            s = reader.GetValue(5).ToString
            If s.Length > 0 Then
                s = s.Substring(4, s.Length - 8)
                img3.Text = s
            End If
            s = reader.GetValue(6).ToString
            If s.Length > 0 Then
                s = s.Substring(4, s.Length - 8)
                img4.Text = s
            End If
            reader.Close()
            If Not reader.IsClosed Then
                reader.Close()
            End If
            cmd.CommandText = "select * from KeyFeatures where ModelId='" + DropDownList1.SelectedItem.ToString + "'"
            reader = cmd.ExecuteReader
            MsgBox("has rows: " + reader.HasRows.ToString)
            reader.Read()

            s = reader.GetValue(2).ToString
            If s.Length > 0 Then
                key1.Text = s
            End If
            s = reader.GetValue(3).ToString
            If s.Length > 0 Then
                key2.Text = s
            End If
            s = reader.GetValue(4).ToString
            If s.Length > 0 Then
                key3.Text = s
            End If
            s = reader.GetValue(5).ToString
            If s.Length > 0 Then
                key4.Text = s
            End If
            s = reader.GetValue(6).ToString
            If s.Length > 0 Then
                key5.Text = s
            End If
            s = reader.GetValue(7).ToString
            If s.Length > 0 Then
                key6.Text = s
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If con.State = ConnectionState.Open Then
                con.Close()
            End If
        End Try
    End Sub

    Protected Sub btn123_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn123.Click
        Dim str As String
        Try
            If FileUpload1.FileName.Length > 0 Then
                str = "~/Img/" + img1.Text + ".jpg"
                FileUpload1.SaveAs(Server.MapPath(str))


            End If
            If FileUpload2.FileName.Length > 0 Then
                str = "~/Img/" + img2.Text + ".jpg"
                FileUpload2.SaveAs(Server.MapPath(str))


            End If
            If FileUpload3.FileName.Length > 0 Then
                str = "~/Img/" + img3.Text + ".jpg"
                FileUpload3.SaveAs(Server.MapPath(str))

            End If
            If FileUpload4.FileName.Length > 0 Then
                str = "~/Img/" + img4.Text + ".jpg"
                FileUpload4.SaveAs(Server.MapPath(str))

            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Try
        '    If Not Session("rajat") Is Nothing Then


        '    Else
        '        'MsgBox("illegal access")
        '        Response.Redirect("./Home.aspx")
        '    End If
        'Catch ex As Exception
        '    Response.Redirect("./Home.aspx")
        'End Try
    End Sub
End Class
