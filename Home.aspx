<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="_Default"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>MOBILE | WORLD |  MOBILE </title>
	<link rel="icon" href="slide/fav.ico" type="image/x-icon"/>
	<style type="text/css" media="screen">
        @import "c.css";
    </style>
    <script type="text/javascript" src="query/jquery-1.9.1.min.js"></script>
    <script src="QUERY/jquery-1.11.2.js" ></script>
    <script src="QUERY/jsCycle2.js" ></script>
    <script src="QUERY/jsCycle.js" ></script>
    <script>
        //$.noConflict();
        function silverstreemer() {
            $(document).ready(function () {
                $("#drpListBrand").click(function () {
                    //alert("working");
                    document.getElementById("trans").style.background = "rgba(0,0,0,0.8)";
                    document.getElementById("trans").style.visibility = "visible";
                    //$("#bb").css({ left: '350px', top: '200px', opacity: '1' });
                    document.getElementById("bb").style.visibility = "visible";
                    $("#bb").css({ top: '160px' });

                });

                $("#bb").click(function () {
                    document.getElementById("trans").style.visibility = "hidden";
                    document.getElementById("bb").style.top = "0px";
                    document.getElementById("bb").style.visibility = "hidden";

                });

            });
        }
        $(document).ready(function () {
            silverstreemer();
            $("#NewsDiv").cycle();
        });
        
    </script>
    <script type="text/javascript">
        function load() {
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(jsFunctions);
        }

	function over(s)
		{
				s.id="h1";
		}
	function out(s)
		{
		    s.id = "sub1";

		}
		function msg() {
		    alert("working");
		}
		window.onload = __doPostBack('UpdateBrand', '');
    </script>
</head>
<body id="#top">
<form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" />
<!------------------------- this section belongs to transparency ------------------------------>

<div id="trans" style="width:99%;height:1250px;position:absolute;z-index:5;visibility:hidden; margin-top: -10px; margin-left: -2px;">

</div>

<div id="bb">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <script type="text/javascript">
                Sys.Application.add_load(silverstreemer);
            </script>
            <asp:DataList runat="server" ID="dataListBrands" DataSourceID="SqlDataSource1" DataKeyField="Id"
                RepeatColumns="5" RepeatDirection="Horizontal" RepeatLayout="Table">
                <ItemTemplate>
                    <div id="brandlist">
                        <center>
                            <asp:ImageButton runat="server" ID="logoimg" ImageUrl='<%# Eval("Img") %>' Width="150px"
                                Height="150px" CommandName='<%# Eval("BrandName") %>' CommandArgument='<%# Eval("ID") %>'
                                AlternateText="Image not found" />
                            <br />
                            <asp:Label runat="server" ID="lblBrandname" Text='<%# Eval("BrandName") %>' />
                        </center>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <script type="text/javascript" language="javascript">
                Sys.Application.add_load(jScript);
            </script>
        </ContentTemplate>
    </asp:UpdatePanel>
</div>

<!--------------------------------------- transperancy section ends ---------------------------->
    
    
    <div id="outer">
	
	
	    
	    <div id="top" >
            <div id="topstyle">
                    <a href="home.aspx">
                        <img src="slide/logo.png" style="border: dotted 1px transparent;
                            width: 600px; height: 130px" /></a>
            </div>
            <!---------------------------------- social icons ------------------------------------->
                <div id="social" style="width: 250px; float: right; margin-top: 20px; margin-right: -50px">
                    <span id="soci">
                        <a href="http://www.facebook.com" target="_blank"><img src="SLIDE/fb.png" width="40px" height="30px" title="Facebook" /></a>
                    </span><span id="soci">
                         <a href="http://www.Gmail.com" target="_blank"><img src="SLIDE/goo.png" width="40px" height="30px" title="Gmail" /></a>
                    </span><span id="soci">
                         <a href="http://www.Linkin.com" target="_blank"><img src="SLIDE/linkin.png" width="40px" height="30px" title="LinkIn" /></a>
                    </span><span id="soci">
                         <a href="http://www.twitter.com" target="_blank"><img src="SLIDE/twitter.png" width="40px" height="30px" title="Twitter" /></a>
                    </span>
                </div> 
                <!----------------------------- social icons ends here ---------------------------->  
		</div>
		
		<!--------------------- Slider start from here  ---------------------->
		<div align="center">
			<script type="text/javascript" src="query/jquery-1.9.1.min.js"></script>
			<script type="text/javascript" src="query/js.js"></script>
			<script type="text/javascript" src="query/jss.slider.js"></script>
			<script>

				jQuery(document).ready(function ($) {
					var options = {
	
					$AutoPlay: true,                                  
					$DragOrientation: 1                           
				};

				var slider1 = new $JssorSlider$("slider1", options);
				});
			</script>
		    <div id="slider1" style="position: absolute; top: 227px; left: 0px; width: 600px; height: 300px;">
			    <div u="slides" id="mn" style="cursor: move; position: absolute; left: 0px; top: 1.5px; width: 1200px; height: 330px; overflow: hidden;">
				    <div><img u="image" src="slider/01.jpg" alt="Welcome" /></div>
				    <div><img u="image" src="slider/02.jpg" /></div>
				    <div><img u="image" src="slider/03.jpg" /></div>
				    <div><img u="image" src="slider/04.jpg" /></div>
				    <div><img u="image" src="slider/05.jpg" /></div>
				    <div><img u="image" src="slider/06.jpg" /></div>
				    <div><img u="image" src="slider/07.jpg" /></div>
				    <div><img u="image" src="slider/08.jpg" /></div>
				    <div><img u="image" src="slider/09.jpg" /></div>
				    <div><img u="image" src="slider/10.jpg" /></div>
			    </div>
            </div>
	    </div>
	    <!--------------------- Slider ends from here  ---------------------->
	    
		<!-------------------- MENU HEAD START FROM HERE ------------------------>	
	    <div id='cssmenu'>
<ul>
	<li class="active">
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
	        <li class='has-sub'>
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
			<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			
		<hr>
		<div id="SearchBox" style="width:auto; height:auto; margin-top:10px; padding-bottom:5px; padding-left:180px; border:solid 0px black;">
		
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:RadioButtonList runat="server" ID="radioSearch" AutoPostBack="true" RepeatDirection="Horizontal"
                        Font-Bold="true" Font-Names="courier" Font-Size="20px" ForeColor="RoyalBlue"
                        TextAlign="Right" RepeatLayout="Table">
                        <asp:ListItem Text="Mobile" Selected="True" Value="0"></asp:ListItem>
                        <asp:ListItem Text="Tablet" Value="1" style="margin-left: 30px;"></asp:ListItem>
                    </asp:RadioButtonList>
                    <table width="auto">
                        <tr>
              
                            
                                    <td align="right" style="font-family: courier; font-size: larger; color: RoyalBlue;
                                        font-weight: bold;">
                                        Brand Name :
                                    </td>
                                    <td align="left" style="padding-left: 10px">
                                        
                                        <asp:TextBox runat="server" ID="drpListBrand" Width="200px" Font-Size="Larger"></asp:TextBox>
                                    </td>
                                    <td align="right" style="font-family: Courier; font-size: larger; color: royalblue;
                                        padding-left: 70px; font-weight: bold;">
                                        Model :
                                    </td>
                                    <td align="left" style="padding-left: 10px">
                                        <asp:DropDownList runat="server" AutoPostBack="false" ID="DropDownList1" Style="width: 200px;"
                                            DataSourceID="SqlDataSource2" DataTextField="ModelID" DataValueField="ID" Font-Size="Larger">
                                        </asp:DropDownList>
                                    </td>
                                    <td style="font-family: Cooper Black; font-size: larger; color: Purple; padding-left: 70px;">
                                        <asp:Button runat="server" Text="Search" BackColor="#3399ff" CssClass="button" Width="140px"
                                            Height="30px" Font-Size="Medium" ID="btnSearch" />
                                    </td>
                                
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <hr>
        <!--Div: SearchBox ends--->
        
		    <div style="margin-left:15px;margin-top:10px;border:solid 1px white;border-radius:1em;width:1150px;height:auto;padding-left:15px;padding-bottom:10px;">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server" >
                    <ContentTemplate>
                        <asp:FormView runat="server" ID="f1" DataSourceID="SqlDataSource3" 
                            DataKeyNames="ID" AllowPaging="True" PagerStyle-HorizontalAlign="Right"
                            PagerSettings-PageButtonCount="5"
                           CssClass="f1"
                         >
                         <ItemTemplate>
                            <table>
                                <tr>
                                    <td style="border-bottom: solid 2px gray; ">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("heading") %>' CssClass="newsHeading"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:Label ID="Literal1" runat="server" Text='<%# Eval("DateT") %>' CssClass="al"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="NewsDescription" runat="server" TextMode="MultiLine" Width="840px" Height="300px" Wrap="true" Text='<%# Eval("Description") %>'
                                         ReadOnly="true" BorderStyle="None" CssClass="txt">
                                         </asp:TextBox>
                                    </td>
                                    <td valign="top" align="right" style="padding-left:15px; margin-right: 45px;">
                                        <asp:Image ID="Image1" runat="server" Width="300px" Height="300px" ImageUrl='<%# Eval("ImgUrl") %>' 
                                        BorderColor="transparent" BorderStyle="Solid" BorderWidth="1px" />
                                    </td>
                                </tr>
                            </table>
                         </ItemTemplate>
                        </asp:FormView>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <!--------------------------------------- -------------------------------->
	    <div style="width :auto; height: 50px; margin-top:5px;">	
            <span id="footnote"><a href="home.aspx">Home | Mobile Base inc.</a> &copy; 2016 | All Rights Reserved.| co.f rjt -SilverStreemer | <a style=" display: run-in;" href="login.aspx">login</a></span>
       
        </div>
       
 </div><!--div:outer ends -------->
        <a href="#top"> <img class="bcktop" src="SLIDE/top.png" width="50px" height="50px" > </a>    
		    <font style="font-family:cursive;font-size:90px;font-weight:bold;color:purple;text-indent:20px;letter-spacing:4px;">
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
            ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [Brand]" 
            CancelSelectOnNullParameter="False">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
        ProviderName="System.Data.OleDb" 
        SelectCommand="SELECT [ID], [ModelID] FROM [Specifications]">
            
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
        ProviderName="System.Data.OleDb" 
        SelectCommand="SELECT * FROM News">
    </asp:SqlDataSource>
			</font>
    </form>
    
    
       

</body>
</html>
