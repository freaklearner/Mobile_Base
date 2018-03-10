<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UpdateRecord.aspx.vb" Inherits="UpdateRecord" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>Admin: UpdatePanel</title>
	<link rel="icon" href="slide/fav.ico" type="image/x-icon"/>
	<style type="text/css" media="screen">
        @import "c.css";
        .style1
        {
            left: 0px;
            top: 235px;
        }
    </style>
    <script type="text/javascript">
	function over(s)
		{
				s.id="h1";
		}
	function out(s)
		{
			s.id="sub1";
		}
	function ShowOn(f1)
        {
            
            document.getElementById("AdminMain").style.visibility="Hidden";
	        document.getElementById("AdminMainImage").style.visibility="Visible";
        }
    function ShowOff()
        {
            
            document.getElementById("AdminMain").style.visibility="Visible";
	        document.getElementById("AdminMainImage").style.visibility="Hidden";
        }
    function KeyOn(f1)
        {
            
            document.getElementById("AdminMain").style.visibility="Hidden";
	        document.getElementById("AdminMainImage").style.visibility="Hidden";
	        document.getElementById("KeyFeature").style.visibility="Visible";
        }
    function KeyOff()
        {
            
            document.getElementById("AdminMain").style.visibility="Visible";
	        document.getElementById("AdminMainImage").style.visibility="Hidden";
	        document.getElementById("KeyFeature").style.visibility="Hidden";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
         ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
         ProviderName="System.Data.OleDb" 
         SelectCommand="SELECT * FROM [Specifications] where Id=?" 
         
         
         UpdateCommand="UPDATE Specifications SET BrandNo = ?, HandsetColor = ?, SimSize = ?, TouchScreen = ?,
          SimType = ?, ModelID = ?, InTheBox = ?, VideoRecording = ?, SecondaryCamera = ?, Flash = ?, 
          OtherCameraFeature = ?, Zoom = ?, HDRecording = ?, PrimaryCamera = ?, SoundEnhancement = ?,
           VideoPlayer = ?, Fm = ?, AudioJack = ?, PreinstalledBrowser = ?, Bluetooth = ?, NavigationTechnology = ?,
            InternetFeatures = ?, Wifi = ?, GPRS = ?, EDGE = ?, USBConnectivity = ?, Tethering = ?, [3G] = ?, Sensors = ?, PhoneBookMemory = ?, CallMemory = ?, SMSMemory = ?, SARValue = ?, ImportantApps = ?, AdditionalFeatures = ?, Resolution = ?, OtherDisplayFeature = ?, DisplaySize = ?, Color = ?, Weight = ?, [Size] = ?, WarrantySummary = ?, TalkTime = ?, StandByTime = ?, RemovableTime = ?, Type = ?, ExpandableMemory = ?, Memory = ?, Internal = ?, OperatingFreq = ?, OS = ?, Graphics = ?, Processor = ?, Price=?, PriceNo=? WHERE ID = ?">
         <SelectParameters>
             <asp:ControlParameter ControlID="DropDownList1" Name="?" 
                 PropertyName="SelectedValue" />
         </SelectParameters>
         <UpdateParameters>
            <asp:Parameter Name="BrandNo" DbType="Int32" />
            <asp:Parameter Name="HandsetColor" DbType="String" />
            <asp:Parameter Name="SimSize" DbType="String" />
            <asp:Parameter Name="TouchScreen" DbType="String" />
            <asp:Parameter Name="SimType" DbType="String" />
            <asp:Parameter Name="ModelId" DbType="String" />
            <asp:Parameter Name="InTheBox" DbType="String" />
            <asp:Parameter Name="VideoRecording" DbType="String" />
            <asp:Parameter Name="SecondaryCamera" DbType="String" />
            <asp:Parameter Name="Flash" DbType="String" />
            <asp:Parameter Name="OtherCameraFeature" DbType="String" />
            <asp:Parameter Name="Zoom" DbType="String" />
            <asp:Parameter Name="HDRecording" DbType="String" />
            <asp:Parameter Name="PrimaryCamera" DbType="String" />
            <asp:Parameter Name="SoundEnhancement" DbType="String" />
            <asp:Parameter Name="VideoPlayer" DbType="String" />
            <asp:Parameter Name="Fm" DbType="String" />
            <asp:Parameter Name="AudioJack" DbType="String" />
            <asp:Parameter Name="PreinstalledBrowser" DbType="String" />
            <asp:Parameter Name="Bluetooth" DbType="String" />
            <asp:Parameter Name="NavigationTechnology" DbType="String" />
            <asp:Parameter Name="InternetFeatures" DbType="String" />
            <asp:Parameter Name="Wifi" DbType="String" />
            <asp:Parameter Name="GPRS" DbType="String" />
            <asp:Parameter Name="EDGE" DbType="String" />
            <asp:Parameter Name="USBConnectivity" DbType="String" />
            <asp:Parameter Name="Tethering" DbType="String" />
            <asp:Parameter Name="3G" DbType="String" />
            <asp:Parameter Name="Sensors" DbType="String" />
            <asp:Parameter Name="PhoneBookMemory" DbType="String" />
            <asp:Parameter Name="CallMemory" DbType="String" />
            <asp:Parameter Name="SMSMemory" DbType="String" />
            <asp:Parameter Name="SARValue" DbType="String" />
            <asp:Parameter Name="ImportantApps" DbType="String" />
            <asp:Parameter Name="AdditionalFeatures" DbType="String" />
            <asp:Parameter Name="Resolution" DbType="String" />
            <asp:Parameter Name="OtherDisplayFeature" DbType="String" />
            <asp:Parameter Name="DisplaySize" DbType="String" />
            <asp:Parameter Name="Color" DbType="String" />
            <asp:Parameter Name="Weight" DbType="String" />
            <asp:Parameter Name="Size" DbType="String" />
            <asp:Parameter Name="WarrantySummary" DbType="String" />
            <asp:Parameter Name="TalkTime" DbType="String" />
            <asp:Parameter Name="StandByTime" DbType="String" />  
            <asp:Parameter Name="RemovableTime" DbType="String" />
            <asp:Parameter Name="Type" DbType="String" />
            <asp:Parameter Name="ExpandableMemory" DbType="String" />
            <asp:Parameter Name="Memory" DbType="String" />
            <asp:Parameter Name="Internal" DbType="String" />
            <asp:Parameter Name="OperatingFreq" DbType="String" />
            <asp:Parameter Name="OS" DbType="String" />
            <asp:Parameter Name="Graphics" DbType="String" />
            <asp:Parameter Name="Processor" DbType="String" />
            <asp:Parameter Name="Price" DbType="Double" />
            <asp:Parameter Name="PriceNo" DbType="Int64" />
            <asp:Parameter Name="Id" DbType="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
         ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
         ProviderName="System.Data.OleDb" 
         
         SelectCommand="SELECT [ID], [ModelID] FROM [Specifications] WHERE ([BrandNo] = ?) order by id">
         <SelectParameters>
             <asp:ControlParameter ControlID="drpListBrand" Name="BrandNo" 
                 PropertyName="SelectedValue" Type="Int32" />
         </SelectParameters>
     </asp:SqlDataSource>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
         ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
         ProviderName="System.Data.OleDb" 
         SelectCommand="SELECT * FROM [Brand]"></asp:SqlDataSource>
		    <font style="font-family:cursive;font-size:90px;font-weight:bold;color:royalblue;text-indent:20px;letter-spacing:4px;">
			    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
         ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
         ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [PriceCatogary]">
     </asp:SqlDataSource>
			</font>    
     <div id="outer">
	    <div id="top" style="height:auto;padding-top:42px;padding-left:0px">
		    <a href="Admin.aspx"><img src="slide/adminlogo.png" alt="Smiley face" style="float:left;padding-left:30px;width:228px;height:198px" /></a>
		        
		        <font style="font-family:courier;font-size:90px;font-weight:bold; padding-left:170px; color:#4B95DF; text-indent:20px;letter-spacing:4px;">
		    	    Adminstrator<br>
		    	    <font style="font-family:courier;font-size:90px;font-weight:bold; padding-left:370px; color:#4B95DF; text-indent:20px;letter-spacing:4px;">
		    	    Panel
		    	    </font> 
		    	</font>      
		</div>
	    	   <!---------------------------- dp starts here-------------------------------------->
	   	    <div id="cssmenu" style="margin-top:251px;">
<ul>
	<li >
		<a href="admin.aspx"><span>Home</span></a>
	</li>
	<li class="has-sub">
		<a href="#"><span>New Record</span></a>
	
		<ul>
			<li class='has-sub'>
				<a href="InsertRecord.aspx"><span>Mobile</span></a>
			</li>
			<li class='has-sub'>
				<a href="InsertTablet.aspx"><span>Tablet</span></a>
			</li>
		</ul>
	
	</li>
	<li class='active has-sub'>
		<a href='#'><span>Update Record</span></a>
		<ul>
			<li class='has-sub'>
				<a href="UpdateRecord.aspx"><span>Mobile</span></a>
			</li>
			<li class='has-sub'>
				<a href="Updatetablet.aspx"><span>Tablet</span></a>
			</li>
		</ul>
	</li>
	<li class=' has-sub'>
		<a href='#'><span>Delete Record</span></a>
		<ul>
			<li class='has-sub'>
				<a href="deleteRecord.aspx"><span>Mobile</span></a>
			</li>
			<li class='has-sub'>
				<a href="deletetablet.aspx"><span>Tablet</span></a>
			</li>
		</ul>
	</li>
	<li  class="last" id="adl">
        <a href="newsupdates.aspx"><span>News</span></a> 
    </li>
	
</ul>
</div>
<!--div:dropdown ends -------->
		<div id="AdminMain">
		    <asp:label runat="server" ID="LblHeading" Width="95%" Height="40px" style="border-radius:2em;text-align:center; font-family:Andalus;" BackColor="royalblue" ForeColor="White" Font-Size="X-Large" Text="Update Record"></asp:label>
		    
		    <div id="SearchBox" style="width:95%; height:auto; margin-top:20px; border-bottom:solid 2px green; padding-bottom:5px;">
		    
		        <table width="100%">
		            <tr>
		                <td align="right" style="font-family:Cooper Black;font-size:larger;color:royalblue">Brand Name</td>
		                
		                <td align="left" style="padding-left:10px"><asp:DropDownList runat="server" AutoPostBack="true" ID="drpListBrand" style="width:200px;"
                                DataSourceID="SqlDataSource2" DataTextField="BrandName" DataValueField="ID" Font-Size="Larger"
                               ></asp:DropDownList></td>
		                <td align="right" style="font-family:Cooper Black;font-size:larger;color:royalblue">Model</td>
		                <td align="left" style="padding-left:10px"><asp:DropDownList runat="server" AutoPostBack="True" ID="DropDownList1" style="width:200px;" 
                                DataSourceID="SqlDataSource3" DataTextField="ModelID" DataValueField="ID" Font-Size="Larger"
                                ></asp:DropDownList>
                                </td>
		            </tr>
		        </table>		        
		    </div><!--Div: SearchBox ends--->
		    <div id="imgButton" style="width:auto;height:auto;margin-left:820px;margin-top:10px;">
		            <input type="button" name="b1" value="Select Image" id="btnImage" onclick="ShowOn(form);" />
		            <input type="button" name="b1" style="margin-left:10px;" value="Key Features" id="btnFeature" onclick="KeyOn(form);" />
		        </div>            
		        <asp:ValidationSummary runat="server" ID="ValidationSummary1" Width="100%" />
		    <br />
		    <asp:DetailsView runat="server"  Width="95%" ID="DetailsView1"  
                     AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" 
                     AllowPaging="True" BorderColor="#0099ff" 
                     BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="Vertical">
                <Fields>
                    <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                      <asp:TemplateField HeaderText="Brand Name" HeaderStyle-CssClass="HeaderStyle" ItemStyle-CssClass="ItemStyle"
                        ControlStyle-CssClass="ControlStyle" >
                        <EditItemTemplate>
                           <asp:DropDownList runat="server" ID="brandlist" DataSourceID="SqlDataSource2" DataTextField="BrandName" 
                           DataValueField="ID" SelectedValue='<%# Bind("BrandNo") %>' ></asp:DropDownList>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" display="None" ControlToValidate="brandlist" ErrorMessage="Must Select Brand name" ></asp:RequiredFieldValidator>
                        </EditItemTemplate>
 
                     </asp:TemplateField>
                    <asp:BoundField DataField="HandsetColor" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="HandsetColor" ControlStyle-CssClass="ControlStyle"
                        SortExpression="HandsetColor" />
                        
                    <asp:BoundField DataField="SimSize" HeaderText="SimSize" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                    ControlStyle-CssClass="ControlStyle"
                        SortExpression="SimSize" />
                                                
                    <asp:BoundField DataField="TouchScreen" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="TouchScreen" ControlStyle-CssClass="ControlStyle"
                        SortExpression="TouchScreen" />
                        
                    <asp:BoundField DataField="SimType" HeaderText="SimType" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        SortExpression="SimType" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="ModelID" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="ModelID" ControlStyle-CssClass="ControlStyle"
                        SortExpression="ModelID" />
                        
                    <asp:BoundField DataField="InTheBox" HeaderText="InTheBox" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        SortExpression="InTheBox" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="VideoRecording" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="VideoRecording" ControlStyle-CssClass="ControlStyle"
                        SortExpression="VideoRecording" />
                        
                    <asp:BoundField DataField="SecondaryCamera" HeaderText="SecondaryCamera" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        SortExpression="SecondaryCamera" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="Flash" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="Flash" SortExpression="Flash" ControlStyle-CssClass="ControlStyle" />
                    
                    <asp:BoundField DataField="OtherCameraFeature" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="OtherCameraFeature" ControlStyle-CssClass="ControlStyle"
                     SortExpression="OtherCameraFeature" />
                     
                    <asp:BoundField DataField="Zoom" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                    HeaderText="Zoom" SortExpression="Zoom" ControlStyle-CssClass="ControlStyle" />
                    
                    <asp:BoundField DataField="HDRecording" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="HDRecording" ControlStyle-CssClass="ControlStyle" 
                     SortExpression="HDRecording" />
                    
                    <asp:BoundField DataField="PrimaryCamera" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="PrimaryCamera" ControlStyle-CssClass="ControlStyle"
                        SortExpression="PrimaryCamera" />
                        
                    <asp:BoundField DataField="SoundEnhancement" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="SoundEnhancement" ControlStyle-CssClass="ControlStyle"
                     SortExpression="SoundEnhancement" />
                     
                    <asp:BoundField DataField="VideoPlayer" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="VideoPlayer" ControlStyle-CssClass="ControlStyle"
                        SortExpression="VideoPlayer" />
                        
                    <asp:BoundField DataField="Fm" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="Fm" SortExpression="Fm" ControlStyle-CssClass="ControlStyle" />
                     
                    <asp:BoundField DataField="AudioJack" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="AudioJack" ControlStyle-CssClass="ControlStyle"
                        SortExpression="AudioJack" />
                    <asp:BoundField DataField="PreinstalledBrowser" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="PreinstalledBrowser" SortExpression="PreinstalledBrowser" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="Bluetooth" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Bluetooth" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Bluetooth" />
                        
                    <asp:BoundField DataField="NavigationTechnology" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="NavigationTechnology" ControlStyle-CssClass="ControlStyle" SortExpression="NavigationTechnology" />
                        
                    <asp:BoundField DataField="InternetFeatures" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="InternetFeatures" ControlStyle-CssClass="ControlStyle"
                        SortExpression="InternetFeatures" />
                        
                    <asp:BoundField DataField="Wifi" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="Wifi" SortExpression="Wifi" ControlStyle-CssClass="ControlStyle" />
                     
                    <asp:BoundField DataField="GPRS" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="GPRS" SortExpression="GPRS" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="EDGE" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="EDGE" SortExpression="EDGE" ControlStyle-CssClass="ControlStyle" />
                    
                    <asp:BoundField DataField="USBConnectivity" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="USBConnectivity" ControlStyle-CssClass="ControlStyle"
                        SortExpression="USBConnectivity" />
                        
                    <asp:BoundField DataField="Tethering" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="Tethering" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Tethering" />
                        
                    <asp:BoundField DataField="3G" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                         HeaderText="3G" SortExpression="3G" ControlStyle-CssClass="ControlStyle" />
                         
                    <asp:BoundField DataField="Sensors" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="Sensors" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Sensors" />
                        
                    <asp:BoundField DataField="PhoneBookMemory" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                         HeaderText="PhoneBookMemory" ControlStyle-CssClass="ControlStyle"
                        SortExpression="PhoneBookMemory" />
                        
                    <asp:BoundField DataField="CallMemory" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="CallMemory" ControlStyle-CssClass="ControlStyle"
                        SortExpression="CallMemory" />
                        
                    <asp:BoundField DataField="SMSMemory" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="SMSMemory" ControlStyle-CssClass="ControlStyle"
                        SortExpression="SMSMemory" />
                        
                    <asp:BoundField DataField="SARValue" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="SARValue" ControlStyle-CssClass="ControlStyle"
                        SortExpression="SARValue" />
                        
                    <asp:BoundField DataField="ImportantApps" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="ImportantApps" ControlStyle-CssClass="ControlStyle"
                        SortExpression="ImportantApps" />
                        
                    <asp:BoundField DataField="AdditionalFeatures" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="AdditionalFeatures" ControlStyle-CssClass="ControlStyle"
                        SortExpression="AdditionalFeatures" />
                        
                    <asp:BoundField DataField="Resolution" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Resolution" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Resolution" />
                        
                    <asp:BoundField DataField="OtherDisplayFeature" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="OtherDisplayFeature" SortExpression="OtherDisplayFeature" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="DisplaySize" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="DisplaySize" ControlStyle-CssClass="ControlStyle"
                        SortExpression="DisplaySize" />
                        
                    <asp:BoundField DataField="Color" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="Color" SortExpression="Color" ControlStyle-CssClass="ControlStyle" />
                    
                    <asp:BoundField DataField="Weight" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Weight" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Weight" />
                    <asp:BoundField DataField="Size" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="Size" SortExpression="Size" ControlStyle-CssClass="ControlStyle" />
                    
                    <asp:BoundField DataField="WarrantySummary" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="WarrantySummary" ControlStyle-CssClass="ControlStyle"
                        SortExpression="WarrantySummary" />
                        
                    <asp:BoundField DataField="TalkTime" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="TalkTime" ControlStyle-CssClass="ControlStyle"
                        SortExpression="TalkTime" />
                        
                    <asp:BoundField DataField="StandByTime" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="StandByTime" ControlStyle-CssClass="ControlStyle"
                        SortExpression="StandByTime" />
                        
                    <asp:BoundField DataField="RemovableTime" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="RemovableTime" ControlStyle-CssClass="ControlStyle"
                        SortExpression="RemovableTime" />
                        
                    <asp:BoundField DataField="Type" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Type" SortExpression="Type" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="ExpandableMemory" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="ExpandableMemory" ControlStyle-CssClass="ControlStyle"
                        SortExpression="ExpandableMemory" />
                        
                    <asp:BoundField DataField="Memory" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                    HeaderText="Memory" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Memory" />
                        
                    <asp:BoundField DataField="Internal" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                    HeaderText="Internal" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Internal" />
                        
                    <asp:BoundField DataField="OperatingFreq" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="OperatingFreq" ControlStyle-CssClass="ControlStyle"
                        SortExpression="OperatingFreq" />
                        
                    <asp:BoundField DataField="OS" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="OS" SortExpression="OS" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="Graphics" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Graphics" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Graphics" />
                        
                    <asp:BoundField DataField="Processor" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="Processor" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Processor" />
                    <asp:BoundField DataField="Price" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Price" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Price" />
                    <asp:TemplateField HeaderText="Price Catogary" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        ControlStyle-CssClass="ControlStyle">
                        <ItemTemplate>
                            <asp:Literal runat="server" ID="PriceNo" Text='<%# Eval("PriceNo") %>'></asp:Literal>
                        </ItemTemplate>
                            <EditItemTemplate>
                                <asp:DropDownList runat="server" ID="pricelist" 
                                DataSourceID="SqlDataSource4" DataTextField="PriceCatogary" DataValueField="PriceId"
                                SelectedValue='<%# Bind("PriceNo") %>'></asp:DropDownList>
                            </EditItemTemplate>
                        </asp:TemplateField>
                    <asp:CommandField ShowEditButton="True" ItemStyle-HorizontalAlign="Center" ButtonType="Button" ControlStyle-Width="200px" />
                </Fields>
                 </asp:DetailsView>
       </div><!---div: AdminMain ends--------->
       <div id="AdminMainImage" class="style1">
		<asp:label runat="server" ID="Label1" Width="95%" Height="40px" style="border-radius:2em;text-align:center; font-family:Andalus;" BackColor="royalblue" ForeColor="White" Font-Size="X-Large" Text="Select Image"></asp:label>
		<br />
		<br />
		    <table width="90%"  cellpadding="5px" style="padding-top:10px;padding-bottom:10px;border-style:outset;border-color:royalblue;border-radius:2em;border-width:1px;margin-left:25px;">
		        <tr align="center">
		            <td width="30%" >Image 1</td>
		            <td width="30%"><asp:TextBox runat="server" ID="img1" ReadOnly="false"></asp:TextBox>
		            
		                <asp:RequiredFieldValidator runat="server" ID="ImgCheck" ControlToValidate="img1" ForeColor="Red" 
		                  ErrorMessage="Must select Image1 at least" Display="None" ></asp:RequiredFieldValidator></td>
		            <td width="30%"><asp:FileUpload runat="server" ID="FileUpload1"  /></td>
		        </tr>
		        <tr align="center">
		            <td width="30%">Image 2</td>
		            <td width="30%"><asp:TextBox runat="server" ID="img2" ReadOnly="false"></asp:TextBox>
		               </td>
		            <td width="30%"><asp:FileUpload runat="server" ID="FileUpload2" /></td>
		        </tr>
		        <tr align="center">
		            <td width="30%">Image 3</td>
		            <td width="30%"><asp:TextBox runat="server" ID="img3" ReadOnly="false"></asp:TextBox>
		                </td>
		            <td width="30%"><asp:FileUpload runat="server" ID="FileUpload3"  /></td>
		        </tr>
		        <tr align="center">
		            <td width="30%">Image 4</td>
		            <td width="30%"><asp:TextBox runat="server" ID="img4" ReadOnly="false"></asp:TextBox>
		                </td>
		            <td width="30%"><asp:FileUpload runat="server" ID="FileUpload4" /></td>
		        </tr>
		        <tr align="center">
		            <td colspan="3">
		                <asp:Button runat="server" ID="btn123" Text="Submit" OnClientClick="ShowOff();"/>
		           
		               <input type="button" id="Cancel" onclick="ShowOff();" style="margin-left:10px" value="Cancel" />
		            </td>
		            
		        </tr>
		    </table>
	<asp:ValidationSummary runat="server" ID="ValidationSummary3" Width="100%" />	
		</div><!----Div: AdminImage ends------------->
		<div id="KeyFeature">
		<asp:label runat="server" ID="Label2" Width="95%" Height="40px" style="border-radius:2em;text-align:center; font-family:Andalus;" BackColor="royalblue" ForeColor="White" Font-Size="X-Large" Text="Select Image"></asp:label>
		<br />
		<br />
		    <table width="90%"  cellpadding="5px" style="padding-top:10px;padding-bottom:10px;border-style:outset;border-color:royalblue;border-radius:2em;border-width:1px;margin-left:25px;">
		        <tr align="center">
		            <td width="30%" >Feature 1</td>
		            <td width="30%"><asp:TextBox runat="server" ID="key1" ReadOnly="false"></asp:TextBox>        
		        </tr>
		        <tr align="center">
		            <td width="30%">Feature 2</td>
		            <td width="30%"><asp:TextBox runat="server" ID="key2" ReadOnly="false"></asp:TextBox>
		            </td>
		        </tr>
		        <tr align="center">
		            <td width="30%">Feature 3</td>
		            <td width="30%"><asp:TextBox runat="server" ID="key3" ReadOnly="false"></asp:TextBox>
		        </tr>
		        <tr align="center">
		            <td width="30%">Feature 4</td>
		            <td width="30%"><asp:TextBox runat="server" ID="key4" ReadOnly="false"></asp:TextBox>
		                </td>
		        </tr>
		        <tr align="center">
		            <td width="30%">Feature 5</td>
		            <td width="30%"><asp:TextBox runat="server" ID="key5" ReadOnly="false"></asp:TextBox>
		                </td>
		        </tr>
		        <tr align="center">
		            <td width="30%">Feature 6</td>
		            <td width="30%"><asp:TextBox runat="server" ID="key6" ReadOnly="false"></asp:TextBox>
		                </td>
		        </tr>
		        <tr align="center">
		            <td colspan="3">
		                <asp:Button runat="server" ID="Button1" Text="Submit" OnClientClick="KeyOff();"/>
		            </td>
		        </tr>
		    </table>
	
		</div>
	
	</div><!--div: Outer ends----->
    </form>
</body>
</html>
