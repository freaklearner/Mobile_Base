Imports System.Data.OleDb
Imports System.Data
Partial Class InsertRecord
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not Session("rajat") Is Nothing Then
                If Not IsPostBack Then
                    Dim con As OleDbConnection = New OleDbConnection()
                    con.ConnectionString = SqlDataSource1.ConnectionString
                    Dim cmd As OleDbCommand = New OleDbCommand()
                    cmd.CommandText = "select LAST(ID) from Specifications"
                    cmd.Connection = con
                    con.Open()
                    Dim rdr As OleDbDataReader
                    rdr = cmd.ExecuteReader
                    rdr.Read()
                    Dim i As Integer = rdr.GetInt32(0)
                    HiddenFieldSpec.Value = (i + 1).ToString
                    'MsgBox("Spec: " + HiddenFieldSpec.Value)
                    rdr.Close()
                    cmd.CommandText = "select LAST(ID) from Images"
                    rdr = cmd.ExecuteReader
                    rdr.Read()
                    i = rdr.GetInt32(0)
                    HiddenFieldImg.Value = (i + 1).ToString
                    'MsgBox("Img: " + HiddenFieldImg.Value)
                    rdr.Close()
                    cmd.CommandText = "select LAST(ID) from KeyFeatures"
                    rdr = cmd.ExecuteReader
                    rdr.Read()
                    i = rdr.GetInt32(0)
                    HiddenFieldKey.Value = (i + 1).ToString
                    'MsgBox("Key: " + HiddenFieldKey.Value)
                    rdr.Close()
                    con.Close()
                End If
            Else
                'MsgBox("illegal access")
                Response.Redirect("./Home.aspx")
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
            'Response.Redirect("./Home.aspx")
        Finally


        End Try
        If Page.IsPostBack = False Then
            DetailsView1.ChangeMode(DetailsViewMode.Insert)
        End If

    End Sub

    Protected Sub DetailsView1_ItemCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewCommandEventArgs) Handles DetailsView1.ItemCommand

    End Sub

    Protected Sub DetailsView1_ItemInserted(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        If Page.IsValid Then
            Dim command As String
            Dim complete As Boolean = True
            Dim cmd As OleDbCommand = New OleDbCommand
            Dim con As OleDbConnection = New OleDbConnection
            Try
                If img4.Text.Length > 0 Then
                    command = "insert into images(Id,Brand,ModelID,img1,img2,img3,img4) values(@Id,@brand,@model,@img1,@img2,@img3,@img4)"
                    cmd.CommandText = command
                    cmd.Parameters.AddWithValue("@Id", Integer.Parse(HiddenFieldImg.Value))
                    cmd.Parameters.AddWithValue("@brand", Integer.Parse(e.Values(0).ToString))
                    cmd.Parameters.AddWithValue("@model", e.Values(5).ToString)
                    cmd.Parameters.AddWithValue("@img1", "Img/" + img1.Text + ".jpg")
                    cmd.Parameters.AddWithValue("@img2", "Img/" + img2.Text + ".jpg")
                    cmd.Parameters.AddWithValue("@img3", "Img/" + img3.Text + ".jpg")
                    cmd.Parameters.AddWithValue("@img4", "Img/" + img4.Text + ".jpg")

                ElseIf img3.Text.Length > 0 Then
                    command = "insert into images(Id,Brand,ModelID,img1,img2,img3) values(@Id,@brand,@model,@img1,@img2,@img3)"
                    cmd.CommandText = command
                    cmd.Parameters.AddWithValue("@Id", Integer.Parse(HiddenFieldImg.Value))
                    cmd.Parameters.AddWithValue("@brand", Integer.Parse(e.Values(0).ToString))
                    cmd.Parameters.AddWithValue("@model", e.Values(5).ToString)
                    cmd.Parameters.AddWithValue("@img1", "Img/" + img1.Text + ".jpg")
                    cmd.Parameters.AddWithValue("@img2", "Img/" + img2.Text + ".jpg")
                    cmd.Parameters.AddWithValue("@img3", "Img/" + img3.Text + ".jpg")
                ElseIf img2.Text.Length > 0 Then
                    command = "insert into images(Id,Brand,ModelID,img1,img2) values(@Id,@brand,@model,@img1,@img2)"
                    cmd.CommandText = command
                    cmd.Parameters.AddWithValue("@Id", Integer.Parse(HiddenFieldImg.Value))
                    cmd.Parameters.AddWithValue("@brand", Integer.Parse(e.Values(0).ToString))
                    cmd.Parameters.AddWithValue("@model", e.Values(5).ToString)
                    cmd.Parameters.AddWithValue("@img1", "Img/" + img1.Text + ".jpg")
                    cmd.Parameters.AddWithValue("@img2", "Img/" + img2.Text + ".jpg")

                ElseIf img1.Text.Length > 0 Then
                    command = "insert into images(Id,Brand,ModelID,img1) values(@Id,@brand,@model,@img1)"
                    cmd.CommandText = command
                    cmd.Parameters.AddWithValue("@Id", Integer.Parse(HiddenFieldImg.Value))
                    cmd.Parameters.AddWithValue("@brand", Integer.Parse(e.Values(0).ToString))
                    cmd.Parameters.AddWithValue("@model", e.Values(5).ToString)
                    cmd.Parameters.AddWithValue("@img1", "Img/" + img1.Text + ".jpg")
                End If
                con.ConnectionString = SqlDataSource1.ConnectionString
                cmd.Connection = con
                'cmd.CommandText = "insert into images(Brand,ModelID,img1) values(@brand,@model,@img1)"
                'cmd.CommandText = command
                'cmd.CommandText = command
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                cmd.Parameters.Clear()
                command = "insert into KeyFeatures(Id,ModelID,f1,f2,f3,f4,f5,f6) values(@Id,@model,@f1,@f2,@f3,@f4,@f5,@f6)"
                cmd.CommandText = command
                cmd.Parameters.AddWithValue("@Id", Integer.Parse(HiddenFieldKey.Value))
                cmd.Parameters.AddWithValue("@model", e.Values(5).ToString)
                cmd.Parameters.AddWithValue("@f1", key1.Text)
                cmd.Parameters.AddWithValue("@f2", key2.Text)
                cmd.Parameters.AddWithValue("@f3", key3.Text)
                cmd.Parameters.AddWithValue("@f4", key4.Text)
                cmd.Parameters.AddWithValue("@f5", key5.Text)
                cmd.Parameters.AddWithValue("@f6", key6.Text)
                con.ConnectionString = SqlDataSource1.ConnectionString
                cmd.Connection = con
                'cmd.CommandText = "insert into images(Brand,ModelID,img1) values(@brand,@model,@img1)"
                'cmd.CommandText = command
                'cmd.CommandText = command
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
                cmd.Parameters.Clear()
                'cmd.CommandText = "Update Specifications set PriceCatogary=(select PriceCatogary from PriceCatogary where PriceId=" + e.Values(54).ToString + " ) where ModelId='" + e.Values(5) + "' and Brand=" + e.Values(0).ToString
                'MsgBox(cmd.CommandText)
                'con.ConnectionString = SqlDataSource1.ConnectionString
                'cmd.Connection = con
                'con.Open()
                'cmd.ExecuteNonQuery()
                'con.Close()
            Catch ex As Exception
                MsgBox(ex.Message, MsgBoxStyle.OkOnly, "Testing")
                complete = False
            Finally
                If con.State = ConnectionState.Open Then
                    con.Close()
                End If
                If complete = True Then
                    Response.Redirect("./Admin.aspx?msg=I&ans=1")
                Else
                    Response.Redirect("./Admin.aspx?msg=I&ans=-1")
                End If
            End Try
        End If
    End Sub

    Protected Sub DetailsView1_ItemInserting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DetailsViewInsertEventArgs) Handles DetailsView1.ItemInserting
        If Not Page.IsValid Then
            e.Cancel = True
        End If
        If key1.Text.Length = 0 Then
            msg.Text = "* key features must be submited"
            'MsgBox("key features must be submited")
            e.Cancel = True
        End If
        'MsgBox(e.Values(54).ToString)
        'e.Cancel = True

    End Sub

    Protected Sub btn123_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn123.Click
        Dim str As String
        If FileUpload1.FileName.Length > 0 Then
            Str = "~/Img/" + img1.Text + ".jpg"
            FileUpload1.SaveAs(Server.MapPath(Str))

        End If
        If FileUpload2.FileName.Length > 0 Then
            Str = "~/Img/" + img2.Text + ".jpg"
            FileUpload2.SaveAs(Server.MapPath(Str))
            'MsgBox("file upload")

        End If
        If FileUpload3.FileName.Length > 0 Then
            Str = "~/Img/" + img3.Text + ".jpg"
            FileUpload3.SaveAs(Server.MapPath(Str))
            'MsgBox("file upload")
        End If
        If FileUpload4.FileName.Length > 0 Then
            Str = "~/Img/" + img4.Text + ".jpg"
            FileUpload4.SaveAs(Server.MapPath(Str))
            'MsgBox("file upload")
        End If
    End Sub
End Class

