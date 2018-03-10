<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TabletView.aspx.vb" Inherits="TabletView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>TABLET | VIEW</title>
	<link rel="icon" href="slide/fav.ico" type="image/x-icon"/>
	<style type="text/css" media="screen">
        @import "c.css";
        .cycle-slideshow
            {
                width:160px;
                height:160px;
                overflow:hidden;
                /* z-index: 1; */
            }
    </style>
    <script src="query/jquery-1.11.2.js"></script>
    <script src="QUERY/jsCycle.js"></script>
    <script>
        $(document).ready(function () {
            //alert("ON");
            $(".cycle-slideshow").cycle({
                //fx: 'scrollHorz',
                sync: 0,
                delay: -2000,
                speed: 1000

            });
            


        });

		</script>
    <script type="text/javascript">
        function over(s) {
            //alert("hello");
            s.id = "h1"
        }
        function out(s) {
            s.id = "sub1";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="outer">
	    <div id="top" >
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
	<li>
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
				        <a href="TabletView.aspx?bd=7&V=0&md=Sony"><span>Sony</span></a>
			        </li>
			        <li class='has-sub'>
				        <a href="TabletView.aspx?bd=8&V=0&md=Dell"><span>Dell</span></a>
			        </li>
			        <li class='has-sub'>
				        <a href="TabletView.aspx?bd=3&V=0&md=Apple"><span>Apple</span></a>
			        </li>
                    <li class='has-sub'>
				        <a href="TabletView.aspx?bd=6&V=0&md=HP"><span>HP</span></a>
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
	<!---------------------------------Main Work---------------------------------------------->
<div>
    
            <table style="width: auto; height: auto; top: 85px;">
                <tr>
                    <td valign="top">
                        <div id="ItemsOption">
                            <div style="margin-left: 5px; margin-right: 5px; border-bottom-style: solid; border-bottom-width: 2px;
                                border-bottom-color: Green; font-family: Century Gothic; font-size: larger;">
                                Brand:
                            </div>
                            <br />
                            <div id="ChooseItems" style="height: 170px; overflow: auto">
                                <asp:CheckBoxList runat="server" ID="chkListBrands" AutoPostBack="true" DataSourceID="SqlDataSource1"
                                    DataTextField="BrandName" DataValueField="ID">
                                </asp:CheckBoxList>
                            </div>
                            <br />
                            <div style="margin-left: 5px; margin-right: 5px; border-bottom-style: solid; border-bottom-width: 2px;
                                border-bottom-color: Green; font-family: Century Gothic; font-size: larger;">
                                Price:
                            </div>
                            <br />
                            <div id="ChooseItems">
                                <asp:CheckBoxList runat="server" ID="CheckBoxList1" AutoPostBack="True" DataSourceID="SqlDataSource2"
                                    DataTextField="PriceCatogary" DataValueField="priceID">
                                </asp:CheckBoxList>
                            </div>
                        </div>
                    </td>
                    <td valign="top" style="padding-right: 10px; padding-top: 25px">
                        <div id="details" class="details">
                            <asp:Label ID="HeadingLabel" runat="server" CssClass="dtl" Text=""></asp:Label>
                            <hr width="100%" size="px" color="#A9A9A9" />
                            <asp:DataList runat="server" ID="datalist1" DataSourceID="SqlDataSource3" RepeatDirection="Horizontal"
                                RepeatColumns="4" DataKeyField="id">
                                <ItemTemplate>
                                    <div id="one">
                                    <center>
                                        <div class="cycle-slideshow">

                                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl='<%# Eval("img1") %>' Width="160px" Height="160px"
                                                BorderStyle="none" AlternateText="Image not found" CommandName="B1" CommandArgument='<%# Eval("Id") %>' />

                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("img2") %>' Width="160px" Height="160px"
                                                BorderStyle="none" AlternateText="Image not found" CommandName="B1" CommandArgument='<%# Eval("Id") %>' />

                                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("img3") %>' Width="160px" Height="160px"
                                                BorderStyle="none" AlternateText="Image not found" CommandName="B1" CommandArgument='<%# Eval("Id") %>' />

                                            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl='<%# Eval("img4") %>' Width="160px" Height="160px"
                                                BorderStyle="none" AlternateText="Image not found" CommandName="B1" CommandArgument='<%# Eval("Id") %>' />

                                        </div>
                                        </center>
                                        <br />
                                        <center>
                                            <asp:Label runat="server" Text='<%# Eval("BrandName") %>' ID="textstyle" CssClass="labeltext"></asp:Label>
                                            <br />
                                            Model:
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ModelId") %>' CssClass="labeltext"></asp:Label>
                                            <br />
                                            Price:
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Price") %>' CssClass="labeltext"></asp:Label>
                                            <br />
                                            <asp:Button ID="Button1" runat="server" CssClass="button" Text="Specifications" CommandName="B1"
                                                CommandArgument='<%# Eval("Id") %>' />
                                        </center>
                                    </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </td>
                </tr>
            </table>
        
</div>
        <div style="width :auto; height: 50px; margin-top:60px;">	
            <span id="footnote"><a href="home.aspx">Home | Mobile Base inc.</a> &copy; 2016 | All Rights Reserved.| co.f rjt -SilverStreemer</span>
        </div>
	</div>
	<!--div:outer ends -------->
    <a href="#top"> <img class="bcktop" src="SLIDE/top.png" width="50px" height="50px" > </a>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
          ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
          ProviderName="System.Data.OleDb" 
          SelectCommand="SELECT * FROM [TabletBrands]"></asp:SqlDataSource>
		    <font style="font-family:cursive;font-size:90px;font-weight:bold;color:royalblue;text-indent:20px;letter-spacing:4px;">
			    <font style="font-family:cursive;font-size:90px;font-weight:bold;color:royalblue;text-indent:20px;letter-spacing:4px;">
	  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
              ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
              ProviderName="System.Data.OleDb" 
              SelectCommand="SELECT PriceCatogary.PriceID, PriceCatogary.PriceCatogary FROM (PriceCatogary INNER JOIN SpecificationsTablet ON SpecificationsTablet.PriceCatogary = PriceCatogary.PriceID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="chkListBrands" Name="?" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
          </asp:SqlDataSource>
	  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
              ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
              ProviderName="System.Data.OleDb" 
              
              SelectCommand="SELECT s.ID, s.Brand, s.ModelID, s.Price, B.BrandName, I.img1, I.img2, I.img3, I.img4 FROM ((SpecificationsTablet s INNER JOIN Images I ON s.ModelID = I.ModelId) INNER JOIN TabletBrands B ON s.Brand = B.ID)">
          </asp:SqlDataSource>
			</font>    
			</font>    
    
    </form>
</body>
</html>
