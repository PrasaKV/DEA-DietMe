<%-- 
    Document   : meals
    Created on : Apr 17, 2024, 12:35:20 AM
    Author     : Imandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=assetsUrl.giveUrl(request,"Common Resources/Styles/profile.css" )%>" />
         <link rel="stylesheet" href="Common Resources/Styles/global.css"/>
        <title>meals</title>
        
        <style>
            .background-image{
                height: 700px;
                width:1500px;
            }  
            
            .navbar2 {
  position:relative;
  bottom: 0;
  left: 0;
  width: 100%;
  background-color:#666666;
  background-position:bottom;
  color: #fff;
  
 
    z-index: 2;
     box-sizing: border-box;
}

            
.dropdown {
  position: relative;
  z-index: 1;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color:#000;
  box-shadow: 8px 8px 8px 8px #333333#666666;
  border-top: 2px solid #fff;
  border-radius: 5px;
      
}

.dropdown-content a {
  color: #fff;
  font-size: 40px;
  text-decoration: none;
  display: block;
  padding: 10px 20px;
  border-radius: 5px;
  justify-content: space-around;

}

.dropdown:hover .dropdown-content {
  display: block;
}

.secondary-menu {
    background-color:#666666;
   
  color: #fff;
  padding: 20px 20px 10px 10px;
  width: 98.5vw; 
  text-align:center; 
}

.secondary-menu ul {
  list-style: none;
  display: flex;
  justify-content:space-around;

}

.secondary-menu li {
  margin-left: 90px; 
  margin-right: 20px; 
}

.secondary-menu a {
  color: #fff;
  text-decoration: none;
  font-size: 40px; 
}


.dropdown-content a:hover {
  background-color: #01ca5e;
}

*{
  margin:0px ;
  padding: 0px;
  
}

.choose-your-meals {
    height: 73px;
    width: 477px;
    position: absolute;
   
    right: -10px;
    bottom: 20px;
    font-weight: 600;
    white-space: pre-wrap;
    display: inline-block;
    
  }
  .topic {
    background-image: url('diet 15.jpg');
    height: 140px;
    flex: 1;
    border-radius: 70px 0 0 0;
    background: linear-gradient(
      90.01deg,
       rgba(7, 52, 17, 0.92) 20.72%,
      rgba(4, 32, 10, 0.01) 86.41%
    );
    flex-direction: row;
    align-items: flex-start;
    justify-content: flex-start;
    position: relative;
  }
  

  .topic{
      font-size: 50px;
      color:#ccff00
      
  }
  
  .topic-wrapper {
  position: absolute;
  top: 50%;
  left: 65%;
  transform: translate(-50%, -80%);
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 50%;
  max-width: 600px; 
  max-height: 100px;
  padding: 0 30px; 
  box-sizing: border-box;
}


.card-container{
    z-index: 1;
  padding-left: 70px;
  padding-right: 70px;
  padding-top: 20px;
  padding-bottom: 20px;
  display: flex;
  justify-content: center;
}

.card{
  background: white;
  width: 270px;
  height: 480px;
  margin: 20px;
  border-radius: 10px;
  text-align: center;
  
  

}

.card-image{
background-color: aqua;
height: 250px;
margin-bottom: 15px;
background-size: cover;
border-radius: 20px 20px 20px 20px;

}

.btn-green {
  background-color: #01ca5e;
  color: white;
  font-size: large;
  border-radius: 5px;
  border-color: #01ca5e;
  

}

.card:hover{
  box-shadow: #000;
  transform: scale(1.2);
  transition: all 0.5s ease;
}

.btn-green:hover{
  transform: scale(1.2);
}

.round-button {
  background-color: white; 
  border: none;
  color: white;

  display: inline-block;
  font-size: 12px; 
  border-radius: 200%;
   
  width: 30px; 
  height: 30px;
  padding: 10px ; 
  cursor: pointer;
  display: flex;
   justify-content: center;
    align-items: center;
 
}
.round-button:hover{
  transform: scale(1.2);
}



        </style>
        
        
    </head>
    <body>
         <%@include file="../../WEB-INF/jspf/Common/navbar.jspf" %>
         
         <div class="container">
             
               
    
    <div class="background-image">
    <img src="<%=assetsUrl.giveUrl(request,"Common Resources/Assets/diet 15.jpg" )%>" alt="diet Image" class="background-image" />
    
  </div>
     <center><div class="topic-wrapper">
              <div class="topic">
                <div class="choose-your-meals">Choose Your Meals</div>
              </div>
             </div>
               </center>
  
  
    <div class="navbar2" >
 
  <nav class="secondary-menu" >
    <ul>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle">Category<span class="arrow">&#9660;</span></a>
        <div class="dropdown-content">
          
          <a href="#">Weight Loss</a>
          <a href="#">Weight Gain</a>
          <a href="#">Adult</a>
         
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle">Meals<span class="arrow">&#9660;</span></a>
        <div class="dropdown-content">
          <a href="#">Breakfast</a>
          <a href="#">2nd Breakfast</a>
          <a href="#">Lunch</a>
          <a href="#">Afternoon Tea</a>
          <a href="#">Dinner</a>
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle">Calories<span class="arrow">&#9660;</span></a>
        <div class="dropdown-content">
          <a href="#"> 1</a>
          <a href="#"> 2</a>
        
        </div>
      </li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle">Price<span class="arrow">&#9660;</span></a>
        <div class="dropdown-content">
          <a href="#">Item 1</a>
          <a href="#">Item 2</a>
       
        </div>
      </li>
    </ul>
  </nav>
        
        
        
</div>
    

             
             
             
         </div>
         
         
         
         
         
         
         
         
         <%@include file="../../WEB-INF/jspf/Common/footer.jspf"  %>
    </body>
</html>
