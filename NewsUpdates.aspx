<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewsUpdates.aspx.vb" Inherits="NewsUpdates" EnableViewState="true" EnableSessionState="True" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
	<title>Admin|News Update</title>
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
	function ShowDelete()
        {
            document.getElementById("new").style.visibility="Hidden";        
            document.getElementById("btnNew").style.background="BurlyWood";
            document.getElementById("btnNew").style.borderColor="BurlyWood"
            document.getElementById("btnDelete").style.background="Brown";
            document.getElementById("btnDelete").style.borderColor="Brown"
            document.getElementById("delete").style.visibility="Visible";   
        }
    function ShowNew()
        {            
            document.getElementById("btnDelete").style.background="BurlyWood";
            document.getElementById("btnDelete").style.borderColor = "BurlyWood";
            document.getElementById("delete").style.visibility="Hidden"; 
            document.getElementById("btnNew").style.background="Brown";
            document.getElementById("btnNew").style.borderColor="Brown"
            document.getElementById("new").style.visibility="Visible";           
        }
   
    </script>
</head>
<body>
    <form id="form1" runat="server">
       <div id="outer">     
	    <div id="top" style="height:auto;padding-top:42px;padding-left:0px">
		    <a href="Admin.aspx"><img src="slide/adminlogo.png" alt="admin" style="float:left;padding-left:30px;width:228px;height:198px" /></a>
		        
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
                    <li  class="last" id="adl">
        <a href="newsupdates.aspx"><span>News</span></a> 
    </li>
                    
                </ul>
            </div>
<!--div:dropdown ends -------->
		<div id="AdminMain">
                    <asp:Label runat="server" ID="LblHeading" Width="95%" Height="40px" Style="border-radius: 2em;
                        text-align: center; font-family: Andalus;" BackColor="ROYALBLUE" ForeColor="White"
                        Font-Size="X-Large" Text="News"></asp:Label>
                    <div class="NewsMain">        
                        <input type="button" id="btnNew" value="New" class="NewsButton" style="background-color: Brown;
                            border-color:Brown" onclick="ShowNew();" />
                        <input type="button" id="btnDelete" onclick="ShowDelete();" value="Update" class="NewsButton" />
                        <hr width="100%" size="1px" style="margin-top: -1px" color="Brown" />
                        <asp:HiddenField runat="server" ID="HiddenFieldId" />
                        
                     <div id="new">
                         
                         
                                 <table width="100%" cellpadding="10px" style="margin-left: 10px;">
                                     <tr>
                                         <td>
                                             Heading:
                                             <asp:TextBox runat="server" ID="txtHeading" Width="400px"></asp:TextBox>
                                         </td>
                                         <td>
                                             <asp:Label runat="server" ID="lblTime"></asp:Label>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">
                                             <asp:TextBox runat="server" ID="txtDescription" Width="800px" Height="300px" Text="Description........."
                                                 TextMode="MultiLine" Wrap="true"></asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             Image Name:
                                             <asp:TextBox runat="server" ID="txtImagename" Width="380px"></asp:TextBox>
                                         </td>
                                         <td>
                                             <asp:FileUpload runat="server" ID="fileUp1" EnableViewState="True" />
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2" align="center">
                                             <div>
                                                 <asp:Button runat="server" ID="btnUploadNews" Text="Upload News" CssClass="btnNews" />
                                                 <input type="reset" id="btnCancel" class="btnNews" value="Cancel" style="margin-left: 90px" />
                                             </div>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">
                                             <asp:Label runat="server" ID="lblResult"></asp:Label>
                                         </td>
                                     </tr>
                                 </table>
                         <br />
                         <br />
                     </div><!-----div: new ends------->
                    <div id="delete">
                             <br />
                             <asp:ScriptManager runat="server" ></asp:ScriptManager>
                             <asp:UpdatePanel runat="server">
                                <ContentTemplate>
                                
                                 <table width="928px" cellpadding="10px" style="margin-left: 10px;">
                                 <tr>
                                         <td>
                                             Search Date:
                                             <asp:DropDownList runat="server" ID="drpDownSearchDate"
                                                 DataSourceID="SqlDataSource1" DataValueField="id" DataTextField="Dd" Width="260px" Height="25px"></asp:DropDownList>
                                              <asp:Button runat="server" Text="Search" ID="btnDeleteSearch" style="margin-left:30px" CssClass="btnNews" />
                                         </td>
                                         
                                     </tr>
                                     <tr>
                                         <td>
                                             Heading:
                                             <asp:TextBox runat="server" ID="txtDeleteHeading" Width="400px"></asp:TextBox>
                                         </td>
                                         <td>
                                             <asp:Label runat="server" ID="Label1"></asp:Label>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             <asp:TextBox runat="server" ID="txtDeleteDescription" Width="600px" Height="300px" Text="Description........."
                                                 TextMode="MultiLine" Wrap="true"></asp:TextBox>
                                         </td>
                                         <td valign="top">
                                             <asp:Image runat="server" ID="img1" Width="250px" Height="300px" />   
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">
                                             Image Name:
                                             <asp:TextBox runat="server" ID="txtDeleteImage" Width="380px"></asp:TextBox>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2" align="center">
                                             <div>
                                                 <asp:Button runat="server" ID="btnDeleteNews" Text="Delete News" CssClass="btnNews" />
                                                 <input type="reset" id="Reset1" class="btnNews" value="Cancel" style="margin-left: 90px" />
                                             </div>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">
                                             <asp:Label runat="server" ID="Label2"></asp:Label>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td colspan="2">
                                             <asp:Label runat="server" ID="lblDeleteResult" ForeColor="Red"></asp:Label>
                                         </td>
                                     </tr>
                                 </table>
                             </ContentTemplate>
                             </asp:UpdatePanel>
                     </div>
		</div>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:serverpath %>" 
           ProviderName="<%$ ConnectionStrings:serverpath.ProviderName %>" 
           SelectCommand="SELECT id,DateT AS Dd FROM News"></asp:SqlDataSource>
		
                     </div>
	</div><!--div:outer ends -------->
       
       
       
       
    </form>
</body>
</html>
