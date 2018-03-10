<%@ Page Language="VB" AutoEventWireup="false" CodeFile="aboutus.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>ABOUT US </title>
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
	function over(s)
		{
			s.id="h1";
		}
	function out(s)
		{
			s.id="sub1";
		}
		window.onload = __doPostBack('UpdateBrand', '');
    </script>
</head>
<body>
    <form id="form1" runat="server">
    
    <div id="outer" >
	    <div id="top" >
            <div id="topstyle">
               	 <a href="home.aspx">
                            <img class="bottom shadow" src="slide/logo.png" style="width: 600px; height: 130px" /></a>
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
				<a href="MobileView.aspx?bd=29&V=0&md=Lava"><span>Lava</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=30&V=0&md=Oppo"><span>Oppo</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=25&V=0&md=HTC"><span>HTC</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=32&V=0&md=Apple"><span>Apple</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=33&V=0&md=Intex"><span>Intex</span></a>
			</li>
    <!----  <li class='has-sub'>
				<a href="MobileView.aspx?bd=31&V=0&md=Gionee"><span>Gionee</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=35&V=0&md=Motorola"><span>Motorola</span></a>
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
				<a href="MobileView.aspx?bd=34&V=0&md=Samsung"><span>Samsumg</span></a>
			</li>
			<li class='has-sub'>
				<a href="MobileView.aspx?bd=39&V=0&md=Blackberry"><span>Blackberry</span></a>
			</li>------------>
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
	<li class='active has-sub'>
		<a href="aboutus.aspx"><span>About Us</span></a>
	</li>
	<li class='last'>
		<a href="contactus.aspx"><span>Contact Us</span></a>
	</li>
</ul>
</div>	    
		<!------------------------- div:dropdown ends ------------------------>
		        <br>
        <br>
        <br>
        <div>
            <font style="color: teal; font-family: VersionType; font-weight: 900; font-size: 30pt;">
                About Us :</font>
            <hr>
            <div align=center>
            <h1 style="margin-left: 10px">
                <ul class="bullets">
                    <li>What Is It "Mobilebase"??</li></ul>
            </h1>
            </h1>
                <p id="about" >     
                    It is an Infomative sites thats provides you info about smartphone, windows Phone
                    and Tablet. with complete description and price comparison in e-commerce site.
                </p>
            <hr></div>
            <div id="backend" style="width: auto; height: 300px; border: solid 1px white; margin-top: 10px;">
                <img src="SLIDE/backend.png" width="300px" height="300px" style="float: right; margin-right: 10px;
                    border-radius: 1em; -moz-box-shadow: inset 0 0 100px #777777; -webkit-box-shadow: inset 0 0 100px #777777;
                    box-shadow: inset 0 0 20px #777777; box-shadow: 0 0 20px black;">
                <h1 style="margin-left: 10px">
                    <ul class="bullets">
                        <li>Backend: SilverStreemer :</li></ul>
                </h1>
                <p id="about" >     
                    I'm Shubham, persuing B.Tech in Computer Engg. From 
                    Maharaja Surajmal Institute of Technology. I love exploring and taking
                    new challenges in programming. Mainly, I work on backend and servers.
                    I know different programming languages like C#, Java, Asp, VB, C, C++.
                    I want to bring a new revolution in the field of programing.<br />
                    "I am the Master of my own mind......."
                </p>
            </div>
            <br>
            <hr>
            <div id="frontend" style="width: auto; height: 300px; border: solid 1px white; margin-top: 15px;">
                <img src="SLIDE/frontend.png" width="300px" height="300px" style="float: left; margin-left: 10px;
                    border-radius: 1em; -moz-box-shadow: inset 0 0 100px #777777; -webkit-box-shadow: inset 0 0 100px #777777;
                    box-shadow: 0 0 20px black;">
                <h1 style="margin-left: 310px;">
                    <ul class="bullets">
                        <li>Frontend: Rjt :</li></ul>
                </h1>
                <p id="about2" >
                    I'm Rajat, persuing B.Tech in Computer Engg. From 
                    Mahavir Swami Institute of Technology. i'm kinda good with 
                    html and css so i choose to design the frontend on 
                    the site by using css and html, html for defining structure
                    and css for defining color and some attactive layout and many more...
                </p>
            </div>
            <br>
            <hr>
            
            
            
        </div>
        
        <div style="width: auto; height: 50px; margin-top: 100px;">
            <span id="footnote"><a href="home.aspx">Home | Mobile Base inc.</a> &copy; 2016 | All
                Rights Reserved.| co.f -rjt -SilverStreemer </span>
        </div>
    </div>
    <a href="#top"> <img class="bcktop" src="SLIDE/top.png" width="50px" height="50px" > </a>
    </form>
</body>
</html>