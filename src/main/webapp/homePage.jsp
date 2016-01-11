<%-- 
    Document   : homePage
    Created on : Nov 21, 2015, 7:14:26 PM
    Author     : MICHALIS , Nena
--%>

<%@page import="java.util.HashMap"%>
<%@page import="static com.mycompany.Farmerama.secondsServlet.a"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.Farmerama.getAllAccounts"%>
<%@page import="com.mycompany.Farmerama.LoginCheckUserToDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="cssStyles/homePageStyle.css">
        <link rel="icon" type="image" href="images/grass.jpg" />
        <title>Welcome to Farmerama</title>
    </head>
    <body link="white">
      
        <div class="headerx"></div>
        
        <div class="header"></div>
        
        <div class="bottomx"></div>
        
        <div class="bottom"></div>
        
        <div id="img1" class="header">
            <a href="index.jsp"><img src="images/farmeramaSLogo.jpg"/></a>
        </div>
    
        <div class="bottom" style="left: 20px">
            <input type="button" class="myButton" value="Album" name="Album"  onclick="window.location = 'photoAlbum.jsp';" />
        </div>
        
        <div class="bottom" style="left: 250px">
           <input class="myButton" type="submit" value="Quick Snap" name="uploadFromFil" onclick="window.location = 'Camera.jsp';">
        </div>
        
        <div class="bottom" style="left: 540px">
            <input class="myButton" type="submit" value="Messages" name="settings" onclick="window.location = 'messagesPage.jsp';" >
        </div>
        
        <div class="bottom" style="left: 800px">
            <input class="myButton" type="submit" value="See Users on Map" name="map" onclick="window.location = 'Map.jsp';" >
        </div>
        
        <form action="searchServlet" method="POST">
            <input type="text"  STYLE="left: 26%; height: 40px; font-size: 100%; top: 3%;position: fixed;z-index: 7" name="search" placeholder="Search Friends" />
            <a href='#' class="Bubble" title="Search"><div class="myButtonSearch"><INPUT type="submit" value=""></div></a>
        </form>
        
        <form action="seeOtherServlet" method="POST" style="left: 48%; top: 4%;position: fixed;z-index: 7">
              <%   ArrayList<String> sessionVal = (ArrayList<String>) session.getAttribute("allFoundUsers");
                  HashMap<String,String> sessionVal1 = ( HashMap<String,String>) session.getAttribute("allFoundUsersByNumber");
              if(sessionVal!=null) {  %>
               <select name="otheruser"  size="2">
                  <option ><%=sessionVal1.values() %> </option>
                  
                  <%for (int i = 0 ; i <sessionVal.size(); i++) {%>
                   <option ><%=sessionVal.get(i) %> </option>
                   
                <% } } %> 
                
                
               </select>
               <a href='#' class="Bubble" title="Check Profile">
                   <div class="myButtonCheck">
                       <INPUT type="submit" value="">
                   </div>
               </a>
        </form>
        
        <div class="bodyx">
        <div class="fixed">
            <form method="post" action="EndSessionServlet">
                <input class="Logout" type="submit" value="LOGOUT" />
            </form>
        </div>
        
        <div id="profileImg"> <img id="profileImageStyle" align="top" alt="Profile Photo" src=${sessionScope.profileImage} >
        </div>
        <div id="information" >
            Name: ${sessionScope.name}<br><br> 
            <input style="margin-left:100%; height:150px; width:300px" class="myButton" type="submit" value="Chat" name="chat" onclick="window.location = 'chatPage.jsp';" >
        </div>
            
            <div style="margin-left: 800px; bottom: 1000px;">  <img src="<%=a%>"/></div>

               <script> setTimeout('window.location.reload();', 8000); </script>
               <% a=""; %>
               
                    <div style="margin-left: 800px; bottom: 1000px;">  <img src="<%=a%>"/></div>
        
        <div id="nav">
            <br><span style="display: block !important; width: 180px; text-align: center; font-family: sans-serif; font-size: 12px;">
                <a href="forecast.jsp" title="Σέρρες, Ελλάδα Weather Forecast" target="_blank">
                <img src="http://weathersticker.wunderground.com/weathersticker/cgi-bin/banner/ban/wxBanner?bannertype=wu_bluestripes_metric&airportcode=LGTS&ForcedCity=Σέρρες&ForcedState=Ελλάδα&wmo=16606&language=GR" alt="Find more about Weather in Σέρρες, GR" width="160" /></a><br></span>
        </div>
        </div>
    </body>
</html>