<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}/blogs">Spring MVC Blog</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="${pageContext.request.contextPath}/blogs">
						<i class="glyphicon glyphicon-home"></i><span> Home</span>
					</a>
				</li>
				<li>
					<a href="${pageContext.request.contextPath}/blogs/new">
						<i class="glyphicon glyphicon-plus"></i><span> New Post</span>
					</a>
				</li>
			</ul>
			<form class="navbar-form navbar-right" action="${pageContext.request.contextPath}/blogs/search" method="post">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search Blogs By Keyword..." name="keyword" />
				</div>	
				<button type="submit" class="btn btn-default">Submit</button>					
			</form>
			<ul class="nav navbar-nav navbar-right">
				<security:authorize access="!hasAnyRole('ROLE_ADMIN', 'ROLE_USER')">
					<li>
					<a href="#">
						<i class="glyphicon glyphicon-user"></i><span> Register</span>
					</a>
				</li>
				<li>
					<a href="#">
						<i class="glyphicon glyphicon-lock"></i><span> Login</span>
					</a>
				</li>	
				</security:authorize>							
				<security:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_USER')">
					<li>
						<a href="<c:url value="/user/account" />">
							<i class="glyphicon glyphicon-user"></i><span> Account</span>
						</a>
					</li>
					<li>
						<a href="<c:url value="/logout"/>">
							<i class="glyphicon glyphicon-lock"></i><span> Logout</span>
						</a>
					</li>
				</security:authorize>
			</ul>
		</div>
	</div>
	</nav>