<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
<link rel="stylesheet" href="nivo-slider.css" type="text/css" media="screen" />
</head>
<body>
	<div id="wrap">
    	<div id="logo" style="height:80px">
        <div style="margin-top:20px"><h1>United Institute of Technology</h1></div>
        <div align="center"><h2>Naini Allahabad (U.P)</h2></div>
        </div>

        	<div id="content_top">
            </div>
            <div id="menu">
            	<ul>
                	<li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/User/Default.aspx">User</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin/Default.aspx">Admin</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/User/Default.aspx">Bus Information</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/User/Default.aspx">Contact Us</asp:HyperLink></li>
                </ul>
            </div>
            <div id="content_text">
            	<div id="header">
				
				  <div id="wrapper">
				<div id="slider-wrapper">        
					<div id="slider" class="nivoSlider">
						<img src="img/bus1.png" alt="" />
   						<img src="img/bus3.png" alt="" />
					
					</div>        
				</div>
			</div>
			
<script type="text/javascript" src="lib/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" src="lib/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>
				
                </div>
                <div id="shadow">
                </div>
                <div id="box1">
                	<div id="col1">
                    	<h2>Bus News</h2>
                        <img src="img/bus4.jpg" alt="" title="" style="display: block"/>
                        <div class="text_shadow">
                       		 <p><a href="#">United Institute of Technology</a><br/> 
						Bus Admin write your text here<br/> Related to bus  </p>
                        </div>
                    </div>
                    <div id="col2">
                    	<h2>College News</h2>
                        <img src="img/main.png" alt="" title=""  style="display: block"/>
                        <div class="text_shadow">
                             <p><a href="#">United Institute of Technology.</a>
						Bus Admin write your text here<br/> Related to bus </p>
                        </div>
                    </div>
                    <div id="col3">
                    	<h2>Have a Question?</h2>
                        <img src="img/que.png" alt="" title="" style="display: block"/>
                        <div class="text_shadow">
                             <p><a href="#">United Institute of Technology</a><br/> 
                              Bus Admin write your text here<br/> Related to bus </p>
                        </div>
                    </div>

                    <div class="clear"></div>
                </div>
                <div id="box2">
                    <div id="box2_bot"></div>
                        
                </div>
             	           
            </div>
            <div id="shadow_con_bot"></div>
            <div id="footer_top">
			<div class="clear"></div>
		</div>
			
		<div id="footer_bot">
		</div>
            
            
            
            
        </div>
    </div>
   </body>
</html>