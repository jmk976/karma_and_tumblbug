<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-expand-sm bg-success navbar-light">
  <!-- Brand -->
  <a class="navbar-brand" href="${pageContext.request.contextPath}/">Logo</a>

  <!-- Links -->
  <ul class="navbar-nav">
    
    <c:if test="${empty membership}">
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/membership/login">Login</a>
    </li>
        <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/membership/join">Join</a>
    </li>
    </c:if>
    
    <c:if test="${not empty membership}">
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        profile
      </a>
      <div class="dropdown-menu">
		<a class="dropdown-item" href="${pageContext.request.contextPath}/membership/memberPage">My Page</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/payment/paymentList">Payment</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/project/myProject">My Project</a>
        <a class="nav-link" href="${pageContext.request.contextPath}/sponsor/sponsorList?curPage=1&kind=Id&search=${membership.id}">My Sponsor</a>
         <a class="nav-link" href="${pageContext.request.contextPath}/shipping/shippingList">shipping</a>
         <c:if test="${membership.id eq 'admin'}">
          <a class="nav-link" href="${pageContext.request.contextPath}/project/adminProjectCheck">ProjectCheck</a>
         </c:if>
      </div>
    </li>
        <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/membership/logout">Logout</a>
    </li>
    </c:if>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/sponsor/sponsorCheck">Sponsor</a>
    </li>
      <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/shipping/shippingList">shipping</a>

    </li> 

    </li>
     <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/project/projectList">Project</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/project/projectInsertInit?id="${membership.id}">ProjectUpload</a>
    </li>

    

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        BOARD
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/notice/noticeList">Notice</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/qna/qnaList">QnA</a>
        <a class="dropdown-item" href="#">Link 3</a>
      </div>
    </li>
    
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Admin
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/rescue/rescueList">Rescue List</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/rescue/rescueInsert">Rescue Add</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/sponsor/sponsorList">Sponsor List</a>
      </div>
    </li>
    
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Rescue
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="${pageContext.request.contextPath}/rescue/rescueGallery">Rescue Animals</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/rescue/returnGallery">Return to family</a>
        <a class="dropdown-item" href="${pageContext.request.contextPath}/rescue/adoptGallery">Adopted!</a>
      </div>
    </li>
    
  </ul>
</nav>
    
