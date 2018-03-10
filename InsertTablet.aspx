<%@ Page Language="VB" AutoEventWireup="false" CodeFile="InsertTablet.aspx.vb" Inherits="InsertTablet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>Admin|Insert-Tablet-Record</title>
	<link rel="icon" href="slide/fav.ico" type="image/x-icon"/>
	<style type="text/css" media="screen">
        @import "c.css";
        
        .style1
        {
            height: 1471px;
            position: absolute;
            left: 6px;
            top: 376px;
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
            document.getElementById("KeyFeature").style.visibility="Hidden";
	        document.getElementById("AdminMainImage").style.visibility="Visible";
        }
    function ShowOff()
        {
            
            document.getElementById("AdminMain").style.visibility="Visible";
            document.getElementById("KeyFeature").style.visibility="Hidden";
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
    <asp:HiddenField ID="HiddenFieldSpec" runat="server" />
    <asp:HiddenField ID="HiddenFieldImg" runat="server" />
    <asp:HiddenField ID="HiddenFieldKey" runat="server" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
                DeleteCommand="DELETE FROM [SpecificationsTablet] WHERE [ID] = ?" 
                InsertCommand="INSERT INTO [SpecificationsTablet] ([ID],[MemoryCard], [ExpandableStorage], [InternalStorage], [Ram], [Brand], [InTheBox], [Sim], [SuportedNetwork], [ModelID], [VoiceCall], [Color], [Processor], [AudioFormatSupported], [SecondaryCamera], [OtherCameraFeature], [PrimaryCamera], [Weigth], [Dimension], [4G], [PreInstalledBrowser], [WiFi], [3G], [DisplayType], [OtherDisplayFeature], [WarrentySummery], [StandByTime], [BatteryType], [OtherConnectivityFeature], [AudioJack], [Bluetooth], [MapSupport], [GPS], [OS], [AdditionalFeatures], [Price], [PriceCatogary]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)" 
                ProviderName="System.Data.OleDb" 
                SelectCommand="SELECT * FROM [SpecificationsTablet]">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter Name="Id" Type="Int32" ControlID="HiddenFieldSpec" PropertyName="Value" />
                    <asp:Parameter Name="MemoryCard" Type="String" />
                    <asp:Parameter Name="ExpandableStorage" Type="String" />
                    <asp:Parameter Name="InternalStorage" Type="String" />
                    <asp:Parameter Name="Ram" Type="String" />
                    <asp:Parameter Name="Brand" Type="Int16" />
                    <asp:Parameter Name="InTheBox" Type="String" />
                    <asp:Parameter Name="Sim" Type="String" />
                    <asp:Parameter Name="SuportedNetwork" Type="String" />
                    <asp:Parameter Name="ModelID" Type="String" />
                    <asp:Parameter Name="VoiceCall" Type="String" />
                    <asp:Parameter Name="Color" Type="String" />
                    <asp:Parameter Name="Processor" Type="String" />
                    <asp:Parameter Name="AudioFormatSupported" Type="String" />
                    <asp:Parameter Name="SecondaryCamera" Type="String" />
                    <asp:Parameter Name="OtherCameraFeature" Type="String" />
                    <asp:Parameter Name="PrimaryCamera" Type="String" />
                    <asp:Parameter Name="Weigth" Type="String" />
                    <asp:Parameter Name="Dimension" Type="String" />
                    <asp:Parameter Name="4G" Type="String" />
                    <asp:Parameter Name="PreInstalledBrowser" Type="String" />
                    <asp:Parameter Name="WiFi" Type="String" />
                    <asp:Parameter Name="3G" Type="String" />
                    <asp:Parameter Name="DisplayType" Type="String" />
                    <asp:Parameter Name="OtherDisplayFeature" Type="String" />
                    <asp:Parameter Name="WarrentySummery" Type="String" />
                    <asp:Parameter Name="StandByTime" Type="String" />
                    <asp:Parameter Name="BatteryType" Type="String" />
                    <asp:Parameter Name="OtherConnectivityFeature" Type="String" />
                    <asp:Parameter Name="AudioJack" Type="String" />
                    <asp:Parameter Name="Bluetooth" Type="String" />
                    <asp:Parameter Name="MapSupport" Type="String" />
                    <asp:Parameter Name="GPS" Type="String" />
                    <asp:Parameter Name="OS" Type="String" />
                    <asp:Parameter Name="AdditionalFeatures" Type="String" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="PriceCatogary" Type="Int64" />
                    
                </InsertParameters>
            </asp:SqlDataSource>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
        ProviderName="System.Data.OleDb" 
        SelectCommand="SELECT * FROM [TabletBrands]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server"
         ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True"
         ProviderName="System.Data.OleDb" 
        SelectCommand="SELECT * FROM PriceCatogary"></asp:SqlDataSource>
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
	    <div id="cssmenu" style="margin-top:251px;">
<ul>
	<li id="adl" style="margin-left:0px;">
		<a href="admin.aspx"><span>Home</span></a>
	</li>
	<li class="active has-sub">
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
	<li class='has-sub'>
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
	<li class='has-sub'>
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
	<li  class="last" id="Li1">
        <a href="newsupdates.aspx"><span>News</span></a> 
    </li>
	
</ul>
</div>
		<div id="AdminMain">
		    <asp:label runat="server" ID="LblHeading" Width="95%" Height="40px" style="border-radius:2em;text-align:center; font-family:Andalus;" BackColor="ROYALBLUE" ForeColor="White" Font-Size="X-Large" Text="Insert Tablet Record"></asp:label>
		    
		        <div id="imgButton" style="width:auto;height:auto;margin-left:820px;margin-top:10px;">
		            <input type="button" name="b1" value="Select Image" id="btnImage" onclick="ShowOn(form);" />
		            <input type="button" name="b1" style="margin-left:10px;" value="Key Features" id="btnFeature" onclick="KeyOn(form);" />
		        </div>            
		        <asp:ValidationSummary runat="server" ID="ValidationSummary1" Width="100%" />
		    <br />
		    <asp:Label runat="server" ID="msg" Text="" ForeColor="Red" Font-Size="15" ></asp:Label>
		    <asp:DetailsView runat="server" style="width:95%; height:auto;" 
                ID="DetailsView1" AutoGenerateRows="False" BackColor="White" 
                BorderColor="#0099FF" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" 
                DataSourceID="SqlDataSource1" GridLines="Vertical" 
                            FooterStyle-HorizontalAlign="Center">
                    <FooterStyle HorizontalAlign="Center"></FooterStyle>
                <Fields>                       
                    <asp:BoundField DataField="MemoryCard" HeaderText="Memory Card Slot Type" 
                         ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                    ControlStyle-CssClass="ControlStyle"
                        SortExpression="MemoryCard" >
                    </asp:BoundField>
                                                
                    <asp:BoundField DataField="ExpandableStorage" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="Expandable Storage" ControlStyle-CssClass="ControlStyle"
                        SortExpression="ExpandableStorage" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="InternalStorage" HeaderText="Internal Storage" 
                         ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        SortExpression="InternalStorage" ControlStyle-CssClass="ControlStyle" >
                    </asp:BoundField>
                    <asp:BoundField DataField="Ram" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="Ram" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Ram" >
                    </asp:BoundField>
                    <asp:TemplateField HeaderText="Brand Name" HeaderStyle-CssClass="HeaderStyle" ItemStyle-CssClass="ItemStyle"
                        ControlStyle-CssClass="ControlStyle" >
                        <InsertItemTemplate>
                           <asp:DropDownList runat="server" ID="brandlist" DataSourceID="SqlDataSource2" DataTextField="BrandName" 
                           DataValueField="ID" SelectedValue='<%# Bind("Brand") %>' ></asp:DropDownList>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" display="None" ControlToValidate="brandlist" ErrorMessage="Must Select Brand name" ></asp:RequiredFieldValidator>
                        </InsertItemTemplate>
                        </asp:TemplateField>
                        
                    <asp:BoundField DataField="InTheBox" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="In The Box" ControlStyle-CssClass="ControlStyle"
                        SortExpression="InTheBox" >
                    </asp:BoundField>
                    <asp:BoundField DataField="Sim" HeaderText="Sim" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        SortExpression="Sim" ControlStyle-CssClass="ControlStyle" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="SuportedNetwork" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="Suported Network" SortExpression="SuportedNetwork" 
                         ControlStyle-CssClass="ControlStyle" >
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="ModelID" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="Model ID" ControlStyle-CssClass="ControlStyle"
                     SortExpression="ModelID" >
                    </asp:BoundField>
                     
                    <asp:BoundField DataField="VoiceCall" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                    HeaderText="Voice Call" SortExpression="VoiceCall" 
                         ControlStyle-CssClass="ControlStyle" >
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="Color" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="Color" ControlStyle-CssClass="ControlStyle" 
                     SortExpression="Color" >
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="Processor" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="Processor" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Processor" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="AudioFormatSupported" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="Audio Format Supported" ControlStyle-CssClass="ControlStyle"
                     SortExpression="AudioFormatSupported" >
                    </asp:BoundField>
                     
                    <asp:BoundField DataField="SecondaryCamera" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="Secondary Camera" ControlStyle-CssClass="ControlStyle"
                        SortExpression="SecondaryCamera" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="OtherCameraFeature" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="Other Camera Feature" SortExpression="OtherCameraFeature" 
                         ControlStyle-CssClass="ControlStyle" >
                    </asp:BoundField>
                     
                    <asp:BoundField DataField="PrimaryCamera" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="Primary Camera" ControlStyle-CssClass="ControlStyle"
                        SortExpression="PrimaryCamera" >
                    </asp:BoundField>
                    <asp:BoundField DataField="Weigth" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="Weigth" SortExpression="Weigth" 
                         ControlStyle-CssClass="ControlStyle" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="Dimension" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Dimension" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Dimension" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="4G" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="4G" ControlStyle-CssClass="ControlStyle" SortExpression="4G" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="PreInstalledBrowser" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="PreInstalled Browser" ControlStyle-CssClass="ControlStyle"
                        SortExpression="PreInstalledBrowser" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="WiFi" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="Wi-Fi" SortExpression="WiFi" 
                        ControlStyle-CssClass="ControlStyle" >
                    </asp:BoundField>
                     
                    <asp:BoundField DataField="3G" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="3G" SortExpression="3G" ControlStyle-CssClass="ControlStyle" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="DisplayType" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="Display Type" SortExpression="DisplayType" 
                         ControlStyle-CssClass="ControlStyle" >
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="OtherDisplayFeature" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Other Display Feature" ControlStyle-CssClass="ControlStyle"
                        SortExpression="OtherDisplayFeature" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="WarrentySummery" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="Warrenty Summery" ControlStyle-CssClass="ControlStyle"
                        SortExpression="WarrentySummery" >
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="StandByTime" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                         HeaderText="StandBy Time" SortExpression="StandByTime" 
                         ControlStyle-CssClass="ControlStyle" >
                    </asp:BoundField>
                         
                    <asp:BoundField DataField="BatteryType" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="Battery Type" ControlStyle-CssClass="ControlStyle"
                        SortExpression="BatteryType" >
                        
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="OtherConnectivityFeature" 
                         ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                         HeaderText="Other Connectivity Feature" ControlStyle-CssClass="ControlStyle"
                        SortExpression="OtherConnectivityFeature" >
                        
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="AudioJack" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="AudioJack" ControlStyle-CssClass="ControlStyle"
                        SortExpression="AudioJack" >
                        

                    </asp:BoundField>
                        
                    <asp:BoundField DataField="Bluetooth" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Bluetooth" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Bluetooth" >
                        
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="MapSupport" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="Map Support" ControlStyle-CssClass="ControlStyle"
                        SortExpression="MapSupport" >
                        
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="GPS" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="GPS" ControlStyle-CssClass="ControlStyle"
                        SortExpression="GPS" >
                        
                    </asp:BoundField>
                        
                    <asp:BoundField DataField="OS" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="OS" ControlStyle-CssClass="ControlStyle"
                        SortExpression="OS" >
                     </asp:BoundField>
                    <asp:BoundField DataField="AdditionalFeatures" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Additional Features" ControlStyle-CssClass="ControlStyle"
                        SortExpression="AdditionalFeatures" />
                        
                    <asp:BoundField DataField="Price" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="Price" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Price" />
                    <asp:TemplateField ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Price Catogary" ControlStyle-CssClass="ControlStyle">
                        <InsertItemTemplate>
                            <asp:DropDownList runat="server" ID="drpPrice" DataSourceID="SqlDataSource3" DataTextField="PriceCatogary"
                            DataValueField="PriceId" SelectedValue='<%# Bind("PriceCatogary") %>' ></asp:DropDownList>
                        </InsertItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowInsertButton="True"  ItemStyle-HorizontalAlign="Center" ButtonType="Button" ControlStyle-Width="200px" />
                 
                </Fields>

                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#008A8C" ForeColor="White" Font-Bold="True" />
                <AlternatingRowStyle BackColor="#DCDCDC" />
		    </asp:DetailsView>
		    
		</div><!---div: mainBody ends--------->
		<div id="AdminMainImage">
		<asp:label runat="server" ID="Label1" Width="95%" Height="40px" style="border-radius:2em;text-align:center; font-family:Andalus;margin-top:50px" BackColor="royalblue" ForeColor="White" Font-Size="X-Large" Text="Select Image"></asp:label>
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
		            </td>
		            
		            
		        </tr>
		    </table>
	<asp:ValidationSummary runat="server" ID="ValidationSummary3" Width="100%" />	
		</div>
		
	<div id="KeyFeature">
	<asp:label runat="server" ID="Label2" Width="95%" Height="40px" style="border-radius:2em;text-align:center; font-family:Andalus;margin-top:10px" BackColor="royalblue" ForeColor="White" Font-Size="X-Large" Text="Key Features"></asp:label>
		<br />
		<br />
		    <table width="90%"  cellpadding="5px" style="padding-top:10px;padding-bottom:10px;border-style:outset;border-color:royalblue;border-radius:2em;border-width:1px;margin-left:25px;margin-top:10px">
		        <tr align="center">
		            <td width="30%" >Feature 1</td>
		            <td width="30%"><asp:TextBox runat="server" ID="key1" ReadOnly="false"></asp:TextBox>
		            </td>
		        </tr>
		        <tr align="center">
		            <td width="30%">Feature 2</td>
		            <td width="30%"><asp:TextBox runat="server" ID="key2" ReadOnly="false"></asp:TextBox>
		            </td>
		        </tr>
		        <tr align="center">
		            <td width="30%">Feature 3</td>
		            <td width="30%"><asp:TextBox runat="server" ID="key3" ReadOnly="false"></asp:TextBox>
		                </td>
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
		                <asp:Label runat="server" ID="test"></asp:Label>
		            </td>
		        </tr>
		    </table>
	
		</div>
	
    
</div> <!--------div:outer ends----------->
    </form>
</body>
</html>
