<%@ Page Language="VB" AutoEventWireup="false" CodeFile="contactus.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>CONTACT US</title>
	<link rel="icon" href="slide/fav.ico" type="image/x-icon"/>
	<style type="text/css" media="screen">
        @import "c.css";
        

        .style2
        {
            width: 90%;
            height: auto;
        }

    </style>
    <script type="text/javascript">
		window.onload = __doPostBack('UpdateBrand', '');
    </script>
</head>
<body>
    <form id="form2" runat="server">
    
    <div id="outer" >
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
	        <li class='active last'>
                <a href="contactus.aspx"><span>Contact Us</span></a>
            </li>
        </ul>
    </div>	    
		<!------------------------- div:dropdown ends ------------------------>
		<hr size="2px" width="200px" style="margin-left:1px; margin-top: 40px;">
        <h1>Contact Us:</h1>
        <hr size="2px" width="200px" style="margin-left:1px;">
	    
        <div class="contactus">
            <table style="width: 620px;">
                <form class="contactushead">
                <tr>
                    <td class="firstli" style="height: 70px">
                        <a href="#" class=" icon user"></a>
                        <input type="text" class="textinputer" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" />
                        <div class="clrscr">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="firstli" style="height: 70px">
                        <a href="#" class=" icon email"></a>
                        <input type="email" class="textinputer" value="abc@email.com" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" />
                        <div class="clrscr">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="firstli" style="height: 70px">
                        <a href="#" class=" icon phone"></a>
                        <input type="text" class="textinputer" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}" />
                        <div class="clrscr">
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="secondli" style="height: 200px;">
                        <a href="#" class=" icon msg"></a>
                        <textarea class="textplace" value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Comments';}">Comments</textarea>
                        <div class="clrscr">
                        </div>
                    </td>
                </tr>
                </form>
            </table>
            <input type="submit" class="submit" onclick="alert('Thank You For Contacting Us we Will Contact You soon...!')" value="Submit" onClick="alert('Heading Home!')">
            <div class="clrscr">
            </div>
        </div>
		<img src="SLIDE/con-us.png" style=" width: 550px; height: 550px; margin-left: 620px; margin-top: -500px;" >
       

		<div style="width :auto; height: 50px; margin-top:60px;">	
            <span id="footnote"><a href="home.aspx">Home | Mobile Base inc.</a> &copy; 2016 | All Rights Reserved.| co.f rjt -SilverStreemer </span>
        </div>
    </div>
    <a href="#top"> <img class="bcktop" src="SLIDE/top.png" width="50px" height="50px" > </a>
    </form>
</body>
</html>
