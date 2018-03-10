<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Admin.aspx.vb" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    
	<title>Admin | Panel</title>
	<link rel="icon" href="slide/fav.ico" type="image/x-icon"/>
	<style type="text/css" media="screen">
        @import "c.css";
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
		function vb()
		{
		    alert("hello");
		    self.close();
		    //window.close();
		}
		function previous()
		{
		    window.history.forward();
		}
		
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="outer">
            <div id="top" style="height:auto; padding-top:42px; padding-left:0px;">
		        <a href="admin.aspx"><img src="slide/adminlogo.png" alt="admin" style="float:left;padding-left:30px;width:228px;height:198px" /></a>
		            <font style="font-family:courier;font-size:90px;font-weight:bold; padding-left:170px; color:#4B95DF; text-indent:20px;letter-spacing:4px;">
		    	    Adminstrator<br>
		    	    <font style="font-family:courier;font-size:90px;font-weight:bold; padding-left:370px; color:#4B95DF; text-indent:20px;letter-spacing:4px;">
		    	    Panel
		    	    </font> 
		    	</font>    
	    	</div>
	   <!---------------------------- dp starts here-------------------------------------->
            <div id="cssmenu" style="margin-top: 251px;">
                <ul>
                    <li class="active"><a href="admin.aspx"><span>Home</span></a> </li>
                    <li class="has-sub"><a href="#"><span>New Record</span></a>
                        <ul>
                            <li class='has-sub'><a href="InsertRecord.aspx"><span>Mobile</span></a> </li>
                            <li class='has-sub'><a href="InsertTablet.aspx"><span>Tablet</span></a> </li>
                        </ul>
                    </li>
                    <li class='has-sub'><a href='#'><span>Update Record</span></a>
                        <ul>
                            <li class='has-sub'><a href="UpdateRecord.aspx"><span>Mobile</span></a> </li>
                            <li class='has-sub'><a href="Updatetablet.aspx"><span>Tablet</span></a> </li>
                        </ul>
                    </li>
                    <li class='has-sub'><a href='#'><span>Delete Record</span></a>
                        <ul>
                            <li class='has-sub'><a href="deleteRecord.aspx"><span>Mobile</span></a> </li>
                            <li class='has-sub'><a href="deletetablet.aspx"><span>Tablet</span></a> </li>
                        </ul>
                    </li>
                    <li id="adl">
        <a href="newsupdates.aspx"><span>News</span></a> 
    </li>
                    <li class="last">
                    <a href="login.aspx" class="ex">Logout</a>
                    </li>
                </ul>
            </div>
<!--div:dropdown ends -------->
		
		<div id="AdminMain" style="height:300px">
		    Welcome Admin..........
		   
		    <div id="responseResult" style="margin-top:20px;">
		        <asp:CheckBox runat="server" ForeColor="Blue" ID="chkBoxResponse" Checked="false" Text="Welcome Admin.........." 
		        Visible="false" style="padding:15px;" AutoPostBack="true"  />
		    </div>
		    <asp:Label runat="server" ID="time" ></asp:Label>
	
		</div><!---div: AdminMain ends--------->
	
	</div><!--div: Outer ends----->
		
    </form>
</body>
</html>
