<%@ Page Language="VB" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ADMIN | lOGIN</title>
    <link rel="icon" href="slide/fav.ico" type="image/x-icon"/>
    <script type="text/javascript">
   function vb()
        {
            self.close();
        }
   function preventBack()
        {
            window.history.forward();
        }
    //setTimeout("preventBack()", 0);
    //window.onunload=function(){null}
</script>
    
    <style type="text/css" media="screen">
        @import "c.css";
</style>

<style>
body    
    {
        background: url(slide/adminbg.jpg) fixed; 
		background-repeat: no-repeat;
		background-position: top;
		width: auto;
		background-size: 100%;
    }
</style>
</head>

<body>

    
    
    <form id="adminform" runat="server"><a href="home.aspx">
    <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
    <a href="Home.aspx"><img src="SLIDE/home.png" class="homeButton" /></a>        
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\MobileHub.accdb;Persist Security Info=True" 
        ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [Login]">
    </asp:SqlDataSource>
    <div id="entrylogin" >
        
        <div id="adminavtar">
            <a><img src="slide/adminavtar.png"></a>
        </div>
               		
	    <div id="admintop">
	        <hr>Admin Panel Login<hr>
	    </div>
        
        <p class="rjt">
        Username: <asp:TextBox runat="server" ID="txtusr" Width="188px" />
        </p>
        <p class="rjt">
        Password: <asp:TextBox runat="server" ID="txtpsw" TextMode="Password" Width="191px"></asp:TextBox>
        </p>
        
        <p class="rjt">
            <div style="margin-left:95px; border-radius: 5em; ">
                <asp:ImageButton runat="server" ImageUrl="Slide/loginimg.png" BorderColor="White" BorderWidth="1px" BorderStyle="Solid" ID="btnSubmit"
                 Text="Login" Width="190px" Height="50px" />
            </div>
            <br />
            <asp:Label runat="server" ID="label1" Text="" ForeColor="Red"></asp:Label>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
            <p>
            </p>
        </p>
    </div>
    </ContentTemplate>
  </asp:UpdatePanel>
    </form>
</body>
</html>
