<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TabletDetailsView.aspx.vb" Inherits="TabletDetailsView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>TABLET | SPECIFICATION</title>
	<link rel="icon" href="slide/fav.ico" type="image/x-icon"/>
	<style type="text/css" media="screen">
        @import "c.css";
        
        .style1
        {
            height: 1471px;
            position: absolute;
            left: 6px;
        }
               
        
    </style>
    <script type="text/javascript">
        function over(s) {
            s.id = "h1";
        }
        function out(s) {
            s.id = "sub1";
        }
        function ShowOn(f1) {

            document.getElementById("AdminMain").style.visibility = "Hidden";
            document.getElementById("AdminMainImage").style.visibility = "Visible";
        }
        function ShowOff() {

            document.getElementById("AdminMain").style.visibility = "Visible";
            document.getElementById("AdminMainImage").style.visibility = "Hidden";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
            ProviderName="System.Data.OleDb" 
            
            SelectCommand="SELECT I.img1, I.img2, I.img3, I.img4, B.BrandName, s.ModelID, s.Price, s.ID, k.f1, k.f2, k.f3, k.f4, k.f5, k.f6, s.Amazon, s.Flipkart, s.SnapDeal, s.Ebay  FROM (((Images I INNER JOIN SpecificationsTablet s ON s.ModelID = I.ModelId) INNER JOIN TabletBrands B ON s.Brand = B.ID) INNER JOIN KeyFeatures k ON s.ModelID = k.ModelId) WHERE (s.ID = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="?" QueryStringField="md" DefaultValue="6" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div id="outer">
            <div id="top">
                <div id="topstyle">
                    <a href="home.aspx">
                        <img src="slide/logo.png" style="border: dotted 1px transparent;
                            width: 600px; height: 130px" /></a>
                </div>
                <!---------------------------------- social icons ------------------------------------->
            <div id="social" style="width: 250px; float: right; margin-top: 20px; margin-right: -50px">
                <span id="soci"><a href="http://www.facebook.com" target="_blank">
                    <img src="SLIDE/fb.png" width="40px" height="30px" title="Facebook" /></a> </span>
                <span id="soci"><a href="http://www.Gmail.com" target="_blank">
                    <img src="SLIDE/goo.png" width="40px" height="30px" title="Gmail" /></a> </span>
                <span id="soci"><a href="http://www.Linkin.com" target="_blank">
                    <img src="SLIDE/linkin.png" width="40px" height="30px" title="LinkIn" /></a>
                </span><span id="soci"><a href="http://www.twitter.com" target="_blank">
                    <img src="SLIDE/twitter.png" width="40px" height="30px" title="Twitter" /></a>
                </span>
            </div>
            <!----------------------------- social icons ends here ---------------------------->
            </div>
            <!-------------------- MENU HEAD START FROM HERE ------------------------>	
	    <div id='cssmenu'>
<ul>
	<li >
		<a href="home.aspx"><span>Home</span></a>
	</li>
	<li class='has-sub'>
		<a href='#'><span>Mobile</span></a>
		<ul>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=40&V=0&md=LG"><span>LG</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=26&V=0&md=Asus"><span>Asus</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=27&V=0&md=Nokia"><span>Nokia</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=28&V=0&md=Sony"><span>Sony</span></a>
			</li>
            <li class='has-sub'>
				<a href="MobileView.aspx?bd=32&V=0&md=Apple"><span>Apple</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=35&V=0&md=Motorola"><span>Motorola</span></a>
			</li>
            <li class='has-sub'>
				<a href="MobileView.aspx?bd=34&V=0&md=Samsung"><span>Samsumg</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=25&V=0&md=HTC"><span>HTC</span></a>
			</li>
            <li class='has-sub'>
				<a href="MobileView.aspx?bd=41&V=0&md=Micromax"><span>More......</span></a>
			</li>
			<!------
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=33&V=0&md=Intex"><span>Intex</span></a>
			</li>
            <li class='has-sub'>
				<a href="MobileView.aspx?bd=29&V=0&md=Lava"><span>Lava</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=30&V=0&md=Oppo"><span>Oppo</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=31&V=0&md=Gionee"><span>Gionee</span></a>
			</li>
			
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=41&V=0&md=Micromax"><span>Micromax</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=36&V=0&md=Karbonn"><span>Karbonn</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=37&V=0&md=Xiaomi"><span>Xiaomi</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=38&V=0&md=Lenovo"><span>Lenovo</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=39&V=0&md=Blackberry"><span>Blackberry</span></a>
			</li> ------->
            </ul>
	</li>
	        <li class='active has-sub'>
		            <a href='#'><span>Tablet</span></a>
                <ul>
			        <li class='has-sub'>
				        <a href="TabletView.aspx?bd=1&V=0&md=Asus"><span>Asus</span></a>
			        </li>
			        <li class='has-sub'>
				        <a href="TabletView.aspx?bd=6&V=0&md=Sony"><span>Sony</span></a>
			        </li>
			        <li class='has-sub'>
				        <a href="TabletView.aspx?bd=8&V=0&md=Dell"><span>Dell</span></a>
			        </li>
			        <li class='has-sub'>
				        <a href="TabletView.aspx?bd=3&V=0&md=Apple"><span>Apple</span></a>
			        </li>
                    <li class='has-sub'>
				        <a href="TabletView.aspx?bd=5&V=0&md=HP"><span>HP</span></a>
			        </li>
			        <li class='has-sub'>
				        <a href="TabletView.aspx?bd=4&V=0&md=Lenovo"><span>Lenovo</span></a>
			        </li>
		        	<li class='has-sub'>
			        	<a href="TabletView.aspx?bd=2&V=0&md=Samsung"><span>Samsumg</span></a>
		        	</li>
	        	</ul>
	        </li>
        	<li>
	    	    <a href="appdrawer.aspx"><span>AppDrawer</span></a>
            </li>
	        <li class='has-sub'>
	        	<a href="aboutus.aspx"><span>About Us</span></a>
        	</li>
	        <li class='last'>
                <a href="contactus.aspx"><span>Contact Us</span></a>
            </li>
        </ul>
    </div>	    
		<!------------------------- div:dropdown ends ------------------------>
        <div id="MainUpper" style="border-bottom:solid 1px black; width:auto; height:auto; margin-top:30px;
		         margin-left:10px; padding-left:40px; padding-bottom:15px" >
		         
		        <asp:DataList DataSourceID="SqlDataSource1" DataKeyField="Id" ID="datalist1" runat="server">
		            <ItemTemplate>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <table style="width: 100%; height: auto; margin-top: 10px;">
                                    <tr>
                                        <td class="t1">
                                            <asp:ImageButton runat="server" ID="ib1" ImageUrl='<%# Eval("img1") %>' AlternateText="Image Not Available"
                                                CommandName="im1" CommandArgument='<%# Eval("img1") %>' Width="100px" Height="80px"
                                                BorderColor="Gray" BorderWidth="1px" />
                                        </td>
                                        <td rowspan="4" style="padding-left: 20px;">
                                            <asp:Image runat="server" ID="bigpicture" Width="350px" Height="380px" AlternateText="Image Not Available"
                                                BorderColor="Gray" BorderWidth="1px" />
                                        </td>
                                        <td rowspan="4" valign="top">
                                            <div style="width: 390px; margin-left: 10px;">
                                                <asp:Label runat="server" ID="lblBrand" Text='<%# Eval("BrandName") %>' Font-Size="45px"
                                                    Font-Bold="true" Font-Names="courier" Style="padding-left: 15px;" ForeColor="black"></asp:Label>
                                                <hr size="1px" width="92%" style="margin:5px;" color="gray" />
                                                <asp:Label runat="server" ID="lblModelName" Text='<%# Eval("ModelId") %>' Font-Size="35px"
                                                    Font-Bold="true" Font-Names="courier" ForeColor="Royalblue" Style="padding-left: 15px;"></asp:Label>
                                                <br /><hr size="1px" width="92%" style="margin:5px;" color="gray" />
                                                <h style="font-family: courier; font-weight:bold; font-size: 35px; color: Grey; padding-left: 15px;">
		                                            Rs.
		                                        </h>
                                                <asp:Label runat="server" ID="lblPrice" Text='<%# Eval("Price") %>' Style="font-family: courier; 
                                                    font-weight:bold; font-size: 40px;"></asp:Label>
                                                <br />
                                                <div id="feat" style="margin-left: 15px; margin-top: 20px; width: 90%; height: auto;
                                                    border: solid 1px #FF8C00; padding-bottom: 10px;">
                                                    <div style="width: 100%; height: auto; color: white; background-color: #FF8C00; font-size: 20px;
                                                        text-align: center;">
                                                        Key Features
                                                    </div>
                                                    <div style="margin-left: 40px; margin-top: 15px; line-height: 23px;">
                                                    *
                                                        <asp:Label runat="server" ID="lblF1" Text='<%# Eval("f1") %>' Style="font-family: Copperplate Gothic Light;
                                                            font-size: 15px; color: Gray"></asp:Label>
                                                        <br />
                                                    *   <asp:Label runat="server" ID="lblF2" Text='<%# Eval("f2") %>' Style="font-family: Copperplate Gothic Light;
                                                            font-size: 15px; color: Gray"></asp:Label>
                                                        <br />
                                                    *  <asp:Label runat="server" ID="lblF3" Text='<%# Eval("f3") %>' Style="font-family: Copperplate Gothic Light;
                                                            font-size: 15px; color: Gray"></asp:Label>
                                                        <br />
                                                    * <asp:Label runat="server" ID="lblF4" Text='<%# Eval("f4") %>' Style="font-family: Copperplate Gothic Light;
                                                            font-size: 15px; color: Gray"></asp:Label>
                                                        <br />
                                                    *  <asp:Label runat="server" ID="lblF5" Text='<%# Eval("f5") %>' Style="font-family: Copperplate Gothic Light;
                                                            font-size: 15px; color: Gray"></asp:Label>
                                                        <br />
                                                    * <asp:Label runat="server" ID="lblF6" Text='<%# Eval("f6") %>' Style="font-family: Copperplate Gothic Light;
                                                            font-size: 15px; color: Gray"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        
                                        <td rowspan="4">
                                            <div style="width:250px;height:365px;padding-top:10px;">
                                            <img class="rsicon" src="SLIDE/rs-icon.png" /> <!---- Rupees icon ----->
                                                <div class="priceCom" >   
                                                    <img src="SLIDE/amazon.ico" class="priceComImg"  />
                                                    <br />
                                                    <br />
                                                    <asp:Label runat="server" ID="Label2" CssClass="priceH" Text="&nbsp;" ></asp:Label>
                                                    <asp:Label runat="server" ID="Label1" CssClass="lblPrice" Text='<%# Eval("Amazon") %>' ></asp:Label>
                                                </div>
                                                <img class="rsicon2" src="SLIDE/rs-icon.png" /> <!---- Rupees icon ----->
                                                <div class="priceCom">   
                                                    <img src="SLIDE/Flipkart.png" class="priceComImg"  />
                                                    <br />
                                                    <br />
                                                    <asp:Label runat="server" ID="Label3" CssClass="priceH" Text="&nbsp;" ></asp:Label>
                                                    <asp:Label runat="server" ID="lbl2" CssClass="lblPrice" Text='<%# Eval("Flipkart") %>' ></asp:Label>
                                                </div>
                                                <img class="rsicon2" src="SLIDE/rs-icon.png" /> <!---- Rupees icon ----->
                                                <div class="priceCom" >   
                                                    <img src="SLIDE/snapdeal.png" class="priceComImg"  />
                                                    <br />
                                                    <br />
                                                    <asp:Label runat="server" ID="Label4" CssClass="priceH" Text="&nbsp;" ></asp:Label>
                                                    <asp:Label runat="server" ID="lbl3" CssClass="lblPrice" Text='<%# Eval("SnapDeal") %>' ></asp:Label>
                                                </div>
                                                <img class="rsicon2" src="SLIDE/rs-icon.png"  /> <!---- Rupees icon ----->
                                                <div class="priceCom">   
                                                    <img src="SLIDE/eday.png" class="priceComImg"  />
                                                    <br />
                                                    <br />
                                                    <asp:Label runat="server" ID="Label5" CssClass="priceH" Text="&nbsp;" ></asp:Label>
                                                    <asp:Label runat="server" ID="lbl4" CssClass="lblPrice" Text='<%# Eval("Ebay") %>' ></asp:Label>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="t1">
                                            <asp:ImageButton runat="server" ID="ib2" ImageUrl='<%# Eval("img2") %>' AlternateText="Image Not Available"
                                                CommandName="im1" CommandArgument='<%# Eval("img2") %>' Width="100px" Height="80px"
                                                BorderColor="Gray" BorderWidth="1px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="t1">
                                            <asp:ImageButton runat="server" ID="ib3" ImageUrl='<%# Eval("img3") %>' AlternateText="Image Not Available"
                                                CommandName="im1" CommandArgument='<%# Eval("img3") %>' Width="100px" Height="80px"
                                                BorderColor="Gray" BorderWidth="1px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="t1">
                                            <asp:ImageButton runat="server" ID="ib4" ImageUrl='<%# Eval("img4") %>' AlternateText="Image Not Available"
                                                CommandName="im1" CommandArgument='<%# Eval("img4") %>' Width="100px" Height="80px"
                                                BorderColor="Gray" BorderWidth="1px" />
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:UpdatePanel>
		            </ItemTemplate>
		        </asp:DataList>
		    </div>
		    <br />
            <div id="SpecTable" style="width:auto;height:auto;
		         margin-right:15px;margin-left:55px;padding-bottom:15px;">     
                    <div id="GeneralFeat" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="3" align="left">
                                <b>GENERAL FEATURES</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                In The box
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblGnFeatInBox" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                SIM
                            </td>
                            <td class="MobileDetailsCol" width="50%">
                                <asp:Label runat="server" ID="lblGnFeatSim" Text="Displaydata" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                            <td rowspan="7" width="40%" valign="top">
                                <img src="SLIDE/general.png" class="MobileDetailsImg"  alt="Image not found" />
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Supported Networks
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblGnFeatSupportedNetw" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Model Id
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblGnFeatModelId" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Voice Call
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblGnFeatVoiceCall" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Color
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblGnFeatColor" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Processor
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblGnFeatProcessor" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>
                 <div id="displaySection" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="3" align="left">
                                <b>DISPLAY</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                Display Type
                            </td>
                            <td class="MobileDetailsCol" width="50%">
                                <asp:Label runat="server" ID="lblDispType" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                            <td rowspan="2" valign="top">
                                <img src="SLIDE/display.png" class="MobileDetailsImg" alt="Image not found" />
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Other Display Feature
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblDispOF" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="Storage" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="3" align="left">
                                <b>Storage</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                Memory Card Slot Type
                            </td>
                            <td class="MobileDetailsCol" width="50%">
                                <asp:Label runat="server" ID="lblStorMemCardSlotType" Text="Displaydata" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                            <td rowspan="3" width="40%" valign="top">
                                <img src="SLIDE/mm.png" class="MobileDetailsImg" alt="Image not found" />
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Expandable Storage Capacity
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblStorExpndCapac" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Internal Storage
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblStorIntrStr" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="Memory" class="section">
                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="2" align="left">
                               <b>Memory</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                RAM
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblMemoryRAM" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="Multimedia" class="section">
                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="2" align="left">
                               <b>Multimedia</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                Audio Formats Supported
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblMultimediaAudioFormat" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="Camera" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="3" align="left">
                                <b>Camera</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                Secondary Camera
                            </td>
                            <td class="MobileDetailsCol" width="50%">
                                <asp:Label runat="server" ID="lblCameraSecondry" Text="Displaydata" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                            <td rowspan="3" width="40%" valign="top">
                                <img src="SLIDE/camera.png" class="MobileDetailsImg" alt="Image not found" />
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Other Camera Features
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblcameraOF" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Primary Camera
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblCameraPrimary" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="Dimensions" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="2" align="left">
                                <b>Dimensions</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                Weight
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblDimensionWeight" Text="Displaydata" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Dimensions
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblDimensionsD" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="Internet" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="2" align="left">
                                <b>Internet Conectivity</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                4G
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblInternet4G" Text="Displaydata" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Pre-Installed Browser
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblInternetPreInstalledBrowser" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Wifi
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblInternetWifi" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                3G
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblInternet3G" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="Battery" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="2" align="left">
                                <b>Battery</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                StandBy Time
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblBatteryStandByTi" Text="Displaydata" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Battery Type
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblBatteryBa" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="Connectivity" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="2" align="left">
                                <b>Connectivity</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                Other Connectivity Features
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblConnOF" Text="Displaydata" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                Audio Jack
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblConnAudioJack" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                    Bluetooth
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblConnBluetooth" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="Navigation" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="2" align="left">
                                <b>Navigation</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                Map Support
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblNavMap" Text="Displaydata" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                GPS
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblNavGPS" Text="DisplayData" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="Platform" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="2" align="left">
                                <b>Platform</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol" width="20%">
                                OS
                            </td>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblPlatOS" Text="Displaydata" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>

                 <div id="OF" class="section">

                    <table width="100%" style="border-bottom:dotted 1px gray" rules="cols" cellpadding="8px">
                        <tr class="MobileDetailsHeading">
                            <td colspan="1" align="left">
                                <b>ADDITIONAL FEATURES</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="MobileDetailsCol">
                                <asp:Label runat="server" ID="lblOF" Text="Displaydata" CssClass="MobileDetailsData"></asp:Label>
                            </td>
                        </tr>
                    </table>
                 </div>
            </div><!----SpecTable Div Ends---------->
            <div style="width: auto; height: 50px; margin-top: 60px;">
                <span id="footnote"><a href="home.aspx">Home | Mobile Base inc.</a> &copy; 2016 | All
                    Rights Reserved.| co.f rjt -SilverStreemer</span>
            </div>
        </div><!----Outer Div ends----->
        <a href="#top"> <img class="bcktop" src="SLIDE/top.png" width="50px" height="50px" > </a>
    </form>
</body>
</html>
