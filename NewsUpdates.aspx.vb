Imports System.Data.OleDb
Imports System.Data
Imports System.Configuration
Partial Class NewsUpdates
    Inherits System.Web.UI.Page

    Dim con As OleDbConnection = New OleDbConnection
    Dim cmd As OleDbCommand = New OleDbCommand
    Dim adp As OleDbDataAdapter = New OleDbDataAdapter
    Dim ds As DataSet = New DataSet
    Dim reader As OleDbDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not Session("rajat") Is Nothing Then
                If Not IsPostBack Then
                    Dim con As OleDbConnection = New OleDbConnection()
                    con.ConnectionString = SqlDataSource1.ConnectionString
                    Dim cmd As OleDbCommand = New OleDbCommand()
                    cmd.CommandText = "select LAST(ID) from News"
                    cmd.Connection = con
                    con.Open()
                    Dim rdr As OleDbDataReader
                    rdr = cmd.ExecuteReader
                    rdr.Read()
                    Dim i As Integer = rdr.GetInt32(0)
                    HiddenFieldId.Value = i + 1
                    con.Close()
                    rdr.Close()
                End If
            Else
                'MsgBox("illegal access")
                Response.Redirect("./Home.aspx")
            End If
        Catch ex As Exception
            Response.Redirect("./Home.aspx")
        End Try
        Page.MaintainScrollPositionOnPostBack = "True"
        If Not Page.IsPostBack Then
            lblTime.Text = DateAndTime.Now.ToString
            Label1.Text = Date.Now.ToLongDateString
            '  MsgBox(img.ImageUrl)
        End If
        'If fileUp1.HasFile Then
        '    MsgBox("hasfile- pageload")
        '    'Response.Write("<script>alert('has file');</script>")
        'End If
        '//If first time page is submitted and we have file in FileUpload control but not in session 
        '// Store the values to SEssion Object 

        'Next time submit and Session has values but FileUpload is Blank 
        ' Return the values from session to FileUpload 



        
    End Sub

    Protected Sub btnUploadNews_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUploadNews.Click
        'MsgBox(fileUp1.FileName)
        If txtImagename.Text.Length > 0 Then
            If fileUp1.HasFile Then
                fileUp1.SaveAs(Server.MapPath("~/NewsImg/" + txtImagename.Text + ".jpg"))   
                Try
                    con.ConnectionString = ConfigurationManager.ConnectionStrings("serverpath").ConnectionString
                    cmd.Connection = con
                    cmd.CommandText = "Insert into News(Id,Heading,Description,ImgUrl,DateT) values(@Id,@heading,@desc,@img,@date)"
                    cmd.Parameters.AddWithValue("@Id", Integer.Parse(HiddenFieldId.Value.ToString))
                    MsgBox("Pased")
                    cmd.Parameters.AddWithValue("@heading", txtHeading.Text)
                    cmd.Parameters.AddWithValue("@desc", txtDescription.Text)
                    cmd.Parameters.AddWithValue("@img", "NewsImg/" + txtImagename.Text + ".jpg")
                    cmd.Parameters.AddWithValue("@date", lblTime.Text).OleDbType = OleDbType.DBTimeStamp
                    'Dim p As OleDbParameter = New OleDbParameter
                    'p.ParameterName = "@date"
                    'p.Value = lblTime.Text
                    ''p.OleDbType = OleDbType.Date
                    'p.OleDbType = OleDbType.DBDate
                    'cmd.Parameters.Add(p)
                    'cmd.Parameters.AddWithValue("@date", Date.Now)
                    'cmd.CommandText = "Insert into News(Heading,ImgUrl,Description) values('" + txtHeading.Text + "','" + txtImagename.Text + "','" + txtDescription.Text + "');"
                    'MsgBox(CDate(lblTime.Text))
                    con.Open()
                    cmd.ExecuteNonQuery()
                    con.Close()
                    'MsgBox("data inserted")
                    lblResult.ForeColor = Drawing.Color.Green
                    lblResult.Text = "News Created Successfully...."
                Catch ex As Exception
                    MsgBox(ex.Message)
                Finally
                    If con.State = ConnectionState.Open Then
                        con.Close()
                    End If
                End Try
            Else
                lblResult.ForeColor = Drawing.Color.Red
                lblResult.Text = "Image is not selected...."

            End If

        Else
            lblResult.ForeColor = Drawing.Color.Red
            lblResult.Text = "Image name should be given and you need to select an image again...."

        End If
    End Sub
    Protected Sub btnDeleteSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDeleteSearch.Click
        Try
            Dim str As String = "select * from News where id=@dt"
            con.ConnectionString = ConfigurationManager.ConnectionStrings("serverpath").ConnectionString
            cmd.CommandText = str
            cmd.Connection = con
            'cmd.Parameters.AddWithValue("@dt", DateTime.Parse(drpDownSearchDate.SelectedItem.ToString))
            cmd.Parameters.AddWithValue("@dt", drpDownSearchDate.SelectedValue)
            adp.SelectCommand = cmd
            adp.Fill(ds, "data")
            'MsgBox(str)
            'MsgBox("cmd.execute")
            'txtHeading.Text = reader.GetValue(1)
            txtDeleteHeading.Text = ds.Tables("data").Rows(0)(1).ToString
            txtDeleteDescription.Text = ds.Tables("data").Rows(0)(2).ToString
            img1.ImageUrl = ds.Tables("data").Rows(0)(3).ToString
            txtDeleteImage.Text = ds.Tables("data").Rows(0)(3).ToString.Substring(8)
            'MsgBox(ds.Tables("data").Rows(0)(1).ToString)

            
        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            If con.State = ConnectionState.Open Then
                con.Close()
                reader.Close()
            End If
        End Try
    End Sub
    Protected Sub btnDeleteNews_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDeleteNews.Click
        Try
            con.ConnectionString = ConfigurationManager.ConnectionStrings("serverpath").ConnectionString
            cmd.CommandText = "delete from News where id=@id"
            cmd.Parameters.AddWithValue("@id", drpDownSearchDate.SelectedValue)
            cmd.Connection = con
            con.Open()
            cmd.ExecuteScalar()
            con.Close()

        Catch ex As Exception
            MsgBox(ex.Message)
            lblDeleteResult.Text = "Error Occured during deletion......"
        Finally
            If con.State = ConnectionState.Open Then
                con.Close()
            Else
                Response.Redirect("./Admin.aspx?ans=1&msg=N")
            End If
        End Try

    End Sub
End Class
