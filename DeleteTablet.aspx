<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DeleteTablet.aspx.vb" Inherits="DeleteTablet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>Admin|Delete-Tablet-Record</title>
	<link rel="icon" href="slide/fav.ico" type="image/x-icon"/>
	<style type="text/css" media="screen">
        @import "c.css";
        .style1
        {
            left: 0px;
            top: 235px;
        }
        .style2
        {
            height: 1785px;
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
    </script>
</head>
<body>
    <form id="form1" runat="server">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
            ProviderName="System.Data.OleDb" 
            SelectCommand="SELECT BrandName, ID FROM TabletBrands"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
            ProviderName="System.Data.OleDb" 
            
            SelectCommand="SELECT [ID], [ModelID] FROM [SpecificationsTablet] where Brand=?">
                <SelectParameters>
                    <asp:ControlParameter Name="Brand" ControlID="drpListBrand" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
		    <font style="font-family:cursive;font-size:90px;font-weight:bold;color:royalblue;text-indent:20px;letter-spacing:4px;">
	    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
            ProviderName="System.Data.OleDb" 
            SelectCommand="SELECT * FROM [SpecificationsTablet] WHERE ([ID] = ?)"
            DeleteCommand="Delete from SpecificationsTablet where id=?">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int64" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="ID" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
        </asp:SqlDataSource>
			</font>    
        <div id="outer">
	    <div id="top" style="height:auto;padding-top:42px; padding-left:0px">
		    <a href="Admin.aspx"><img src="slide/adminlogo.png" alt="Smiley face" style="float:left;padding-left:30px;width:228px;height:198px" /></a> 
		        <font style="font-family:courier;font-size:90px;font-weight:bold; padding-left:170px; color:#4B95DF; text-indent:20px;letter-spacing:4px;">
		    	    Adminstrator<br />
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
	<li class='active has-sub'>
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
		    <asp:label runat="server" ID="LblHeading" Width="95%" Height="40px" style="border-radius:2em;text-align:center; font-family:Andalus;" BackColor="royalblue" ForeColor="White" Font-Size="X-Large" Text="Delete Record"></asp:label>
		    
		    <div id="SearchBox" style="width:95%; height:auto; margin-top:20px; border-bottom:solid 2px green; padding-bottom:5px;">
		    
		        <table width="100%">
		            <tr>
		                <td align="right" style="font-family:Cooper Black;font-size:larger;color:royalblue">Brand Name</td>
		                
		                <td align="left" style="padding-left:10px"><asp:DropDownList runat="server" AutoPostBack="true" ID="drpListBrand" style="width:200px;"
                                DataSourceID="SqlDataSource1" DataTextField="BrandName" DataValueField="ID" Font-Size="Larger"
                               ></asp:DropDownList></td>
		                <td align="right" style="font-family:Cooper Black;font-size:larger;color:royalblue">Model</td>
		                <td align="left" style="padding-left:10px"><asp:DropDownList runat="server" AutoPostBack="True" ID="DropDownList1" style="width:200px;" 
                                DataSourceID="SqlDataSource2" DataTextField="ModelID" DataValueField="ID" Font-Size="Larger"
                                ></asp:DropDownList>
                                </td>
		            </tr>
		        </table>
		     </div>
		     <div id="imgButton" style="width:auto;height:auto;margin-left:950px;margin-top:10px;">
		            <input type="button" name="b1" value="Select Image" id="btnImage" onclick="ShowOn(form);" />
		        </div>            
		        <asp:ValidationSummary runat="server" ID="ValidationSummary1" Width="100%" />
		    <br />
		    <asp:DetailsView runat="server" ID="DetailsView1" Width="95%" 
		    AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" 
                     AllowPaging="True" BorderColor="#0099FF" 
                     BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="Vertical">
                <Fields>
                    <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="MemoryCard" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="MemoryCard" ControlStyle-CssClass="ControlStyle"
                        SortExpression="MemoryCard" />
                        
                    <asp:BoundField DataField="ExpandableStorage" HeaderText="ExpandableStorage" 
                        ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                    ControlStyle-CssClass="ControlStyle"
                        SortExpression="ExpandableStorage" />
                                                
                    <asp:BoundField DataField="InternalStorage" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="InternalStorage" ControlStyle-CssClass="ControlStyle"
                        SortExpression="InternalStorage" />
                        
                    <asp:BoundField DataField="Ram" HeaderText="Ram" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        SortExpression="Ram" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="Brand" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="Brand" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Brand" />
                        
                    <asp:BoundField DataField="InTheBox" HeaderText="InTheBox" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        SortExpression="InTheBox" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="Sim" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="Sim" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Sim" />
                        
                    <asp:BoundField DataField="SuportedNetwork" HeaderText="SuportedNetwork" 
                        ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        SortExpression="SuportedNetwork" ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="ModelID" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="ModelID" SortExpression="ModelID" 
                        ControlStyle-CssClass="ControlStyle" />
                    
                    <asp:BoundField DataField="VoiceCall" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="VoiceCall" ControlStyle-CssClass="ControlStyle"
                     SortExpression="VoiceCall" />
                     
                    <asp:BoundField DataField="Color" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                    HeaderText="Color" SortExpression="Color" 
                        ControlStyle-CssClass="ControlStyle" />
                    
                    <asp:BoundField DataField="Processor" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="Processor" ControlStyle-CssClass="ControlStyle" 
                     SortExpression="Processor" />
                    
                    <asp:BoundField DataField="AudioFormatSupported" 
                        ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="AudioFormatSupported" ControlStyle-CssClass="ControlStyle"
                        SortExpression="AudioFormatSupported" />
                        
                    <asp:BoundField DataField="SecondaryCamera" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="SecondaryCamera" ControlStyle-CssClass="ControlStyle"
                     SortExpression="SecondaryCamera" />
                     
                    <asp:BoundField DataField="OtherCameraFeature" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="OtherCameraFeature" ControlStyle-CssClass="ControlStyle"
                        SortExpression="OtherCameraFeature" />
                        
                    <asp:BoundField DataField="PrimaryCamera" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="PrimaryCamera" SortExpression="PrimaryCamera" 
                        ControlStyle-CssClass="ControlStyle" />
                     
                    <asp:BoundField DataField="Weigth" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="Weigth" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Weigth" />
                    <asp:BoundField DataField="Dimension" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="Dimension" SortExpression="Dimension" 
                        ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="4G" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="4G" ControlStyle-CssClass="ControlStyle"
                        SortExpression="4G" />
                        
                    <asp:BoundField DataField="PreInstalledBrowser" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                        HeaderText="PreInstalledBrowser" ControlStyle-CssClass="ControlStyle" 
                        SortExpression="PreInstalledBrowser" />
                        
                    <asp:BoundField DataField="WiFi" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="WiFi" ControlStyle-CssClass="ControlStyle"
                        SortExpression="WiFi" />
                        
                    <asp:BoundField DataField="3G" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle" 
                     HeaderText="3G" SortExpression="3G" ControlStyle-CssClass="ControlStyle" />
                     
                    <asp:BoundField DataField="DisplayType" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1"
                        HeaderText="DisplayType" SortExpression="DisplayType" 
                        ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:BoundField DataField="OtherDisplayFeature" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="OtherDisplayFeature" SortExpression="OtherDisplayFeature" 
                        ControlStyle-CssClass="ControlStyle" />
                    
                    <asp:BoundField DataField="WarrentySummery" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="WarrentySummery" ControlStyle-CssClass="ControlStyle"
                        SortExpression="WarrentySummery" />
                        
                    <asp:BoundField DataField="StandByTime" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="StandByTime" ControlStyle-CssClass="ControlStyle"
                        SortExpression="StandByTime" />
                        
                    <asp:BoundField DataField="BatteryType" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                         HeaderText="BatteryType" SortExpression="BatteryType" 
                        ControlStyle-CssClass="ControlStyle" />
                         
                    <asp:BoundField DataField="OtherConnectivityFeature" 
                        ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="OtherConnectivityFeature" ControlStyle-CssClass="ControlStyle"
                        SortExpression="OtherConnectivityFeature" />
                        
                    <asp:BoundField DataField="AudioJack" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                         HeaderText="AudioJack" ControlStyle-CssClass="ControlStyle"
                        SortExpression="AudioJack" />
                        
                    <asp:BoundField DataField="Bluetooth" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="Bluetooth" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Bluetooth" />
                        
                    <asp:BoundField DataField="MapSupport" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="MapSupport" ControlStyle-CssClass="ControlStyle"
                        SortExpression="MapSupport" />
                        
                    <asp:BoundField DataField="GPS" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="GPS" ControlStyle-CssClass="ControlStyle"
                        SortExpression="GPS" />
                        
                    <asp:BoundField DataField="OS" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="OS" ControlStyle-CssClass="ControlStyle"
                        SortExpression="OS" />
                        
                    <asp:BoundField DataField="AdditionalFeatures" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="AdditionalFeatures" ControlStyle-CssClass="ControlStyle"
                        SortExpression="AdditionalFeatures" />
                        
                    <asp:BoundField DataField="Price" ItemStyle-CssClass="ItemStyle1" HeaderStyle-CssClass="HeaderStyle1" 
                        HeaderText="Price" ControlStyle-CssClass="ControlStyle"
                        SortExpression="Price" />
                        
                    <asp:BoundField DataField="PriceCatogary" ItemStyle-CssClass="ItemStyle" HeaderStyle-CssClass="HeaderStyle"
                        HeaderText="PriceCatogary" SortExpression="PriceCatogary" 
                        ControlStyle-CssClass="ControlStyle" />
                        
                    <asp:CommandField ShowDeleteButton="True" ItemStyle-HorizontalAlign="Center" ButtonType="Button" ControlStyle-Width="200px" />
                </Fields>
		    
		    </asp:DetailsView>
		   </div><!----Div: AdminMain Ends---->
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
		   </div><!----Div: Outer Ends------->
    </form>
</body>
</html>
