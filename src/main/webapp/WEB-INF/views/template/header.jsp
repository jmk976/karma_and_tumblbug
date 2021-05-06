<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
<head>
   <meta charset="UTF-8"> 

    <title>save animals</title>
    <link href='https://fonts.googleapis.com/css?family=Bevan' rel='stylesheet'>
     <link href='https://fonts.googleapis.com/css?family=Abel' rel='stylesheet'>
     <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
     
     
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> -->
<!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 --><!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 --><style>
 body{
 font-family: 'Abel';
 font-size: 80%;
 }
.nb {
    font-family: 'Bevan'; font-size: 22px; color: #MediumSeaGreen;

}
.container-fluid{
 padding-bottom:20px; 
}
nav li  {
  font-family: 'Abel';
  font-size: 17px;
}
.dropdown-item{
 font-size: 17px;
}
 .navbar-brand-centered {
		/*   display: inline-block; */
		  float: none;
          position: absolute;
            left: 35%;  
           display: block;
            width: 160px;
       text-align: center;
    /*     background-color: transparent; */
    }
    
    
 .navbar>.container .navbar-brand-centered, 
 .navbar>.container-fluid .navbar-brand-centered {
   /*      margin-left: -500px; */
      /*   margin-right:1000px; */
    }

/* footer {
/*    position: absolute;
  left: 0;
   bottom: 0;
   width: 100%;
   background-color: red;
   color: white;
   text-align: center;
} */


</style>
</head>
   
       
  

    <nav class="navbar navbar-expand-md bg-light navbar-light">
   
    </nav>

 <nav class="navbar navbar-expand-md fixed-top-sm justify-content-center flex-nowrap bg-light navbar-light">
  <div class="container-fluid">

    <ul class="nav navbar-nav navbar-right topnav">
       <c:if test="${empty membership}">
            <li><a href="${pageContext.request.contextPath}/membership/join" style="color: Gray"> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
  					<path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
					</svg>
					Sign Up
					</a>
			</li>
			&nbsp;
       		<li><a href="${pageContext.request.contextPath}/membership/login" style="color: Gray"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
					  <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
					  <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
					</svg>
						login
				</a>
			</li>
   	  </c:if>
       <c:if test="${not empty membership}">
      		 <li class="nav-item dropdown"><a class="nav-link" href="#" id="navbardrop" data-toggle="dropdown" style="color:Gray"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
					  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
					  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
					</svg> 
					My page
				</a>
		
		      <div class="dropdown-menu">
				<a class="dropdown-item" href="${pageContext.request.contextPath}/membership/memberPage">My Page</a>
				<a class="dropdown-item" href="${pageContext.request.contextPath}/profile/profileset">profile</a>   
				<a class="dropdown-item" href="${pageContext.request.contextPath}/profile/profileHome">HOME</a>
		        <a class="dropdown-item" href="${pageContext.request.contextPath}/project/myProject">My Project</a>
		        <a class="dropdown-item" href="${pageContext.request.contextPath}/sponsor/sponsorList?curPage=1&kind=Id&search=${membership.id}">My Sponsor</a>
		        <a class="dropdown-item" href="${pageContext.request.contextPath}/adopt/adoptUser">My Adoption</a>
		        <a class="dropdown-item" href="${pageContext.request.contextPath}/payment/paymentList">Payment</a>
		        <a class="dropdown-item" href="${pageContext.request.contextPath}/shipping/shippingList">shipping</a>
		
				       
		      </div>
            </li>
			&nbsp;
			&nbsp;
      		 <li><a  class="nav-link" id="navbardrop"  href="${pageContext.request.contextPath}/membership/logout" style="color: Gray"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-right" viewBox="0 0 16 16">
  					<path fill-rule="evenodd" d="M10 12.5a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 0 1 0v-2A1.5 1.5 0 0 0 9.5 2h-8A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-2a.5.5 0 0 0-1 0v2z"/>
  					<path fill-rule="evenodd" d="M15.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L14.293 7.5H5.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
				     </svg>
				 logout
				 </a>
			 </li>
       </c:if>
       <c:if test="${membership.id eq 'admin'}">
       &nbsp;
       &nbsp;
     		 <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" style="color: Gray"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-gear" viewBox="0 0 16 16">
				  <path d="M8 4.754a3.246 3.246 0 1 0 0 6.492 3.246 3.246 0 0 0 0-6.492zM5.754 8a2.246 2.246 0 1 1 4.492 0 2.246 2.246 0 0 1-4.492 0z"/>
				  <path d="M9.796 1.343c-.527-1.79-3.065-1.79-3.592 0l-.094.319a.873.873 0 0 1-1.255.52l-.292-.16c-1.64-.892-3.433.902-2.54 2.541l.159.292a.873.873 0 0 1-.52 1.255l-.319.094c-1.79.527-1.79 3.065 0 3.592l.319.094a.873.873 0 0 1 .52 1.255l-.16.292c-.892 1.64.901 3.434 2.541 2.54l.292-.159a.873.873 0 0 1 1.255.52l.094.319c.527 1.79 3.065 1.79 3.592 0l.094-.319a.873.873 0 0 1 1.255-.52l.292.16c1.64.893 3.434-.902 2.54-2.541l-.159-.292a.873.873 0 0 1 .52-1.255l.319-.094c1.79-.527 1.79-3.065 0-3.592l-.319-.094a.873.873 0 0 1-.52-1.255l.16-.292c.893-1.64-.902-3.433-2.541-2.54l-.292.159a.873.873 0 0 1-1.255-.52l-.094-.319zm-2.633.283c.246-.835 1.428-.835 1.674 0l.094.319a1.873 1.873 0 0 0 2.693 1.115l.291-.16c.764-.415 1.6.42 1.184 1.185l-.159.292a1.873 1.873 0 0 0 1.116 2.692l.318.094c.835.246.835 1.428 0 1.674l-.319.094a1.873 1.873 0 0 0-1.115 2.693l.16.291c.415.764-.42 1.6-1.185 1.184l-.291-.159a1.873 1.873 0 0 0-2.693 1.116l-.094.318c-.246.835-1.428.835-1.674 0l-.094-.319a1.873 1.873 0 0 0-2.692-1.115l-.292.16c-.764.415-1.6-.42-1.184-1.185l.159-.291A1.873 1.873 0 0 0 1.945 8.93l-.319-.094c-.835-.246-.835-1.428 0-1.674l.319-.094A1.873 1.873 0 0 0 3.06 4.377l-.16-.292c-.415-.764.42-1.6 1.185-1.184l.292.159a1.873 1.873 0 0 0 2.692-1.115l.094-.319z"/>
				</svg>
				 Admin
				</a>
				<div class="dropdown-menu">
			        <a class="dropdown-item" href="${pageContext.request.contextPath}/rescue/rescueList">Rescue List</a>
			        <a class="dropdown-item" href="${pageContext.request.contextPath}/rescue/rescueInsert">Rescue Add</a>
			        <a class="dropdown-item" href="${pageContext.request.contextPath}/sponsor/sponsorList">Sponsor List</a>
			        <a class="dropdown-item" href="${pageContext.request.contextPath}/sponsor/sponsorListMon">Monthly Sponsor List</a>
			        <a class="dropdown-item" href="${pageContext.request.contextPath}/adopt/adoptList">Adopt List</a>
			     </div>
			</li>
      </c:if>
      
    </ul>

    
    <div class="nav header">
<!--       <input type="hidden">
 -->    </div>
    <div class="nav justify-content-center">
      <a class="navbar-brand navbar-brand-centered nb" href="${pageContext.request.contextPath}/" style="color: MediumSeaGreen">Care Animals Project</a>
    </div>
 
    
  </div>
</nav>

 <nav class="navbar navbar-expand-md bg-light navbar-light justify-content-center">
 

  <!-- Links -->
  <ul class="navbar-nav">
    
    
    
    <c:if test="${not empty membership}">
   
    
    </c:if>
     <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/sponsor/about">About Us</a>
    </li>
     
  
    
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/sponsor/sponsorCheck">Sponsor</a>
    </li>
   

     <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/project/projectList">Project</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/project/projectInsertInit?id="${membership.id}">ProjectUpload</a>
    </li>
    
    <li class="nav-item dropdown">
      <a class="nav-link" href="#" id="navbardrop" data-toggle="dropdown">
        Rescue
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/rescue/rescueGallery?status=구조">Rescue Animals</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/rescue/rescueGallery?status=가족">Return to family</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/rescue/rescueGallery?status=입양">Adopted!</a>
 
      </div>
    </li> 
     
    <li class="nav-item dropdown">
      <a class="nav-link" href="#" id="navbardrop" data-toggle="dropdown">
        Adoption
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/adopt/adoptCheck">Adoption application</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/board/boardList?boardSort=review">Adoption Review</a>
      </div>
    </li>
    
    <!-- Dropdown : class에 dropdown-toggle 넣기-->
   <li class="nav-item dropdown">
      <a class="nav-link" href="#" id="navbardrop" data-toggle="dropdown">
        Board
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/board/boardList?boardSort=notice">notice</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/board/boardList?boardSort=news_letter">news letter</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/board/boardList?boardSort=press">press</a>
        
      </div>
    </li>
    
    
   
    
    
</ul>
</nav>


