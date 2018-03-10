<%@ Page Language="VB" AutoEventWireup="false" CodeFile="appdrawer.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>APPDRAWER</title>
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
        	<li class="active">
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
		 <hr size="2px" width="200px" style="margin-left: 1px;">
        <h1>
            AppDrawer:</h1>
        <hr size="2px" width="200px" style="margin-left: 1px;">
        <!--------------------------- app show case ----------------------------------->
        <div >
            <div id="displayblock">
                <h1 id="appdis">1.</h1>
                <img class="icondisplay" src="SLIDE/insta.png" title="Instagram"/>
                <p class="desp" >
                    Instagram is a simple way to capture and share the world's moments. Transform your
                    everyday photos and videos into works of art and share them with your family and
                    friends. See the world through somebody else's eyes by following not only the people
                    you know, but inspirational Instagrammers, photographers, athletes, celebrities
                    and fashion icons. Every time you open Instagram, you'll see new photos and videos
                    from your closest friends, plus breathtaking moments shared by creative people across
                    the globe.</p>
                    <a href="apps/101.apk" download="mobi-base.apk"> <img class="download" src="SLIDE/download.gif" /></a>
            </div>

            <div id="displayblock" >
                <h1 id="appdis" >2.</h1>
                <img class="icondisplay" src="SLIDE/cm.png" title="Clean Master" />
                <p class="desp">
                    The World's Most Trusted Optimizer, Clean Master, Helps Clean Up Over 400 Million
                    Phones! When Do You Need Us? CM is perfect for you if your phone has become laggy
                    or runs out of battery easily, if it's stopped playing games smoothly.We make it
                    easy to free up more storage from your phone and SD card, boost games and device
                    memory, enhance speed & extend battery life, stop overheating and protect your device
                    against malicious apps and vulnerabilities.
                </p>
                <a href="apps/102.apk" download="mobi-base.apk"> <img class="download" src="SLIDE/download.gif" /></a>
            </div>

            <div id="displayblock" >
                <h1 id="appdis" >3.</h1>
                <img class="icondisplay" src="SLIDE/apus-launcher.png"  title="Apus Launcher" />
                <p class="desp">
                    5-stars rated over 2 million, and installed on over 100 million devices in over
                    235 countries,APUS Launcher is the smallest, fastest, and simplest launcher on market.
                    More than just a launcher that puts your favorite apps at your fingertips, APUS
                    also boosts speed and battery life of your phone, helps you search everything, while
                    making the using experience as seamless and smooth as iOS.
                </p>
                <a href="apps/103.apk" download="mobi-base.apk"> <img class="download" src="SLIDE/download.gif" /></a>
            </div>

            <div id="displayblock" >
                <h1 id="appdis" >4.</h1>
                <img class="icondisplay" src="SLIDE/cm-security.png" title="CM Security" />
                <p class="desp">
                    CM Security ranked #1 by the AV-TEST again! AV-TEST, a leading independent organization
                    in Germany, conduct regular appraisals of all antivirus products on the market and
                    hand it awards for excellence. Their award is regarded as like an Oscar in the field
                    of IT security and antivirus research. AV-TEST evaluates antivirus software based
                    on how well they can detect viruses, how user-friendly they are, and awards high-quality
                    products their commendations.
                </p>
                <a href="apps/104.apk" download="mobi-base.apk"> <img class="download" src="SLIDE/download.gif" /></a>
            </div>

            <div id="displayblock" >
                <h1 id="appdis" >5.</h1>
                <img class="icondisplay" src="SLIDE/go-launcher.png" title="GO Launcher"/>
                <p class="desp">
                    GO Launcher EX has been voted as the best Android Launcher by over 100,000,000+
                    people! With over 10,000+ themes, you can experience a very smooth & speedy operation.
                    Transform your Android device.GO Launcher EX is the most popular alternative launcher
                    on Android. GO Launcher lets you completely customize your Android home screens,
                    app drawer, screen transitions, launch animations, gesture controls and themes.
                </p>
                <a href="apps/105.apk" download="mobi-base.apk"> <img class="download" src="SLIDE/download.gif" /></a>
            </div>
            <!-------------------------- app show case ends here ---------------------------->
            <div style="width: auto; height: 50px; margin-top: 200px;">
                <span id="footnote"><a href="home.aspx">Home | Mobile Base inc.</a> &copy; 2016 | All
                    Rights Reserved.| co.f rjt -SilverStreemer | <a href="login.aspx">login</a></span>
            </div>
        </div>
        <a href="#top"> <img class="bcktop" src="SLIDE/top.png" width="50px" height="50px" > </a>
    </form>
</body>
</html>

