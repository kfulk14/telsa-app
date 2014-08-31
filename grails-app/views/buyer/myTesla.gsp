<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Tesla</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			

			#page-body {
				margin: 1.5em 0em 0em 0em;
				background-image: url('${resource(dir: "images", file: "myTesla.png")}');
				 height: 515px;
				
				#page-body img{
					 
					 width:960px; 
					 height: 444px;
					}
			
				
				
			
				
				}
			

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}
			
			#production{
				li{
				float:left;
				}
			}
			#signInDiv{
				position: absolute;
				margin-top: 90px;
				margin-left: 550px;
			
				}
			
			#singInTable{
				border-style: solid;
				border-color: black;
				background-color:rgba(255,255,255,0.7);
			}
			
			
				#singInTable td{
					width: 100px;
					
					}
				
				
				

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
	
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
		
		<div id="page-body" role="main">
	
			<div id="signInDiv">
				<table id="singInTable">
				 <g:form action="authenticate" >
					<tr> <th>SIGN IN </th>
						<tr>
							<td>Username </td>
						<tr>	
						<tr>
							<td> <g:textField name="email" value="${buyerInstance?.email}" /></td>
						</tr>
					
					<tr>
						<td>PassWord</td>
					</tr>
					<tr>
						<td><g:passwordField name="password" value="${buyerInstance?.password}" /></td>
					</tr>
					
					<tr>
						 <td><g:submitButton name="login" class="save" value="Login" /></td>
					</tr>
					</g:form>
					<tr>
						<td><g:link resource="buyer" action="createAccount">Create Account</g:link></td>
					</tr>
				
				
				</table>
				
			
			
			
			
			</div>
			
			
			
           
       
		
			
			
			
		
		

			
				
			
		</div>
		<!--  <footer><li> <g:link controller="buyer" action="buyerAdd">Test add Buyer</g:link></li></footer>-->
	</body>
</html>
