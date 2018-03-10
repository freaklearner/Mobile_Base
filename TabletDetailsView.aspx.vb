Imports System.Data.OleDb
Imports System.Data
Imports System.Configuration
Partial Class TabletDetailsView
    Inherits System.Web.UI.Page

    Dim con As OleDbConnection = New OleDbConnection
    Dim cmd As OleDbCommand = New OleDbCommand
    Dim reader As OleDbDataReader

    Protected Sub datalist1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles datalist1.ItemCommand
        CType(e.Item.FindControl("bigpicture"), Image).ImageUrl = e.CommandArgument
        'ob.ImageUrl = e.CommandArgument
        'datalist1.FindControl("im3").GetType()

    End Sub

    Protected Sub datalist1_ItemDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.DataListItemEventArgs) Handles datalist1.ItemDataBound
        CType(e.Item.FindControl("bigpicture"), Image).ImageUrl = CType(e.Item.FindControl("ib1"), ImageButton).ImageUrl

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Page.MaintainScrollPositionOnPostBack = True
        'Try
        'If Not Session("rajat") Is Nothing Then


        'Else
        'MsgBox("illegal access")
        'Response.Redirect("./Home.aspx")
        'End If
        'Catch ex As Exception
        'Response.Redirect("./Home.aspx")
        'End Try
        Try
            Dim str As String = "select * from SpecificationsTablet where id=@id"
            'MsgBox("pageload")
            con.ConnectionString = ConfigurationManager.ConnectionStrings("serverpath").ConnectionString
            cmd.Connection = con
            cmd.CommandText = str
            'MsgBox("before query string")
            'MsgBox(Request.QueryString("md").ToString)
            cmd.Parameters.AddWithValue("@id", Request.QueryString("md").ToString).OleDbType = OleDbType.Integer
            'MsgBox("after query string")
            con.Open()
            reader = cmd.ExecuteReader
            'MsgBox("after cmd.execute()")
            If reader.Read Then
                lblGnFeatInBox.Text = reader("InTheBox")
                lblGnFeatSim.Text = reader("SIM")
                lblGnFeatSupportedNetw.Text = reader("SuportedNetwork")
                lblGnFeatModelId.Text = reader("ModelId")
                lblGnFeatVoiceCall.Text = reader("VoiceCall")
                lblGnFeatColor.Text = reader("Color")
                lblGnFeatProcessor.Text = reader("Processor")
                lblDispType.Text = reader("DisplayType")
                lblDispOF.Text = reader("OtherDisplayFeature")
                lblStorMemCardSlotType.Text = reader("MemoryCard")
                lblStorExpndCapac.Text = reader("ExpandableStorage")
                lblStorIntrStr.Text = reader("InternalStorage")
                lblMemoryRAM.Text = reader("RAM")
                lblMultimediaAudioFormat.Text = reader("AudioFormatSupported")
                lblCameraSecondry.Text = reader("SecondaryCamera")
                lblcameraOF.Text = reader("OtherCameraFeature")
                lblCameraPrimary.Text = reader("PrimaryCamera")
                lblDimensionWeight.Text = reader("Weigth")
                lblDimensionsD.Text = reader("Dimension")
                lblInternet4G.Text = reader("4G")
                lblInternetPreInstalledBrowser.Text = reader("PreInstalledBrowser")
                lblInternetWifi.Text = reader("Wifi")
                lblInternet3G.Text = reader("3G")
                lblBatteryBa.Text = reader("BatteryType")
                lblBatteryStandByTi.Text = reader("StandByTime")
                lblConnOF.Text = reader("OtherConnectivityFeature")
                lblConnAudioJack.Text = reader("AudioJack")
                lblConnBluetooth.Text = reader("Bluetooth")
                lblNavMap.Text = reader("MapSupport")
                lblNavGPS.Text = reader("GPS")
                lblPlatOS.Text = reader("OS")
                lblOF.Text = reader("AdditionalFeatures")

                'lblDispSize.Text = reader("DisplaySize")
                'lblDispResolution.Text = reader("Resolution")
                'lblDispColor.Text = reader("Color")
                'lblDispOF.Text = reader("OtherDisplayFeature")
                'lblPlatOperaFreq.Text = reader("OperatingFreq")
                'lblPlatOS.Text = reader("OS")
                'lblPlatProcessor.Text = reader("Processor")
                'lblPlatGraphics.Text = reader("Graphics")
                'lblCamRearCam.Text = reader("PrimaryCamera")
                'lblCamFrontFacing.Text = reader("SecondaryCamera")
                'lblCamFlash.Text = reader("Flash")
                'lblCamVideoRec.Text = reader("VideoRecording")
                'lblCamHDRec.Text = reader("HDRecording")
                'lblCamZoom.Text = reader("Zoom")
                'lblCamOF.Text = reader("OtherCameraFeature")

                'lblMultiVideoPlayer.Text = reader("VideoPlayer")
                'lblMultiFM.Text = reader("Fm")
                'lblMultiSoundEnh.Text = reader("SoundEnhancement")
                ''lblMultiMusicPlyr.Text = reader("MusicPlayer")     'this is hide because
                ''lblMultiAudio.Text = reader("AudioJack")
                'lblIntrContAudio.Text = reader("AudioJack")
                'lblIntrCont3G.Text = reader("3G")
                'lblIntrContPreBrowser.Text = reader("PreinstalledBrowser")
                'lblIntrContBlueth.Text = reader("Bluetooth")
                'lblIntrContNavTech.Text = reader("NavigationTechnology")
                'lblIntrContWifi.Text = reader("Wifi")
                'lblIntrContInFeat.Text = reader("Internetfeatures")
                'lblIntrContGPRS.Text = reader("gprs")
                'lblIntrContEDGE.Text = reader("edge")
                'lblIntrContUSB.Text = reader("USBConnectivity")
                'lblIntrContTethering.Text = reader("Tethering")
                'lblWarrantySumm.Text = reader("Warrantysummary")
                'lblDimnSize.Text = reader("Size")
                'lblDimnWeight.Text = reader("Weight")
                'lblBattTalkTime.Text = reader("TalkTime")
                'lblBattStandbyTime.Text = reader("StandByTime")
                'lblBattType.Text = reader("Type")
                'lblMemoryExpend.Text = reader("ExpandableMemory")
                'lblMemoryMem.Text = reader("Memory")
                'lblMemoryInternal.Text = reader("Internal")
                'lblOtherFeatSens.Text = reader("Sensors")
                'lblOtherFeatPhnBook.Text = reader("PhoneBookMemory")
                'lblOtherFeatSMS.Text = reader("SMSMemory")
                'lblOtherFeatCall.Text = reader("CALLMemory")
                'lblOtherFeatSAR.Text = reader("SARValue")
                'lblOtherFeatImpApps.Text = reader("ImportantApps")
                'lblOtherFeatAdditionFeat.Text = reader("AdditionalFeatures")
            Else
                'MsgBox("no row found")
            End If
            con.Close()
            reader.Close()
        Catch ex As Exception
            'MsgBox(ex.Message)

        Finally
            If con.State = ConnectionState.Open Then
                con.Close()
                reader.Close()
            End If

        End Try

    End Sub
End Class
