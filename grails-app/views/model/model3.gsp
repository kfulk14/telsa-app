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
				background-image: url('${resource(dir: "images", file: "model3.png")}');
				 background-repeat:no-repeat;
				 height: 349px;
				
				#page-body img{
					 
					 width:960px; 
					 height: 349px;
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
					
					
						 #div1{
			 	border-style: solid;
				border-color: black;
				width: 250px;
				margin-left: 20px;
				box-shadow: 4px 4px 5px #888888;
				float:left
			 }
			
			#div2{
				border-style: solid;
				border-color: black;
				width: 250px;
				margin-left: 15px;
				box-shadow: 4px 4px 5px #888888;
				float:left;
			
			}	
			#name{
				padding-left: 20px;
				padding-top: 30px;
				font-size: 45px;
				color: black;
				text-decoration: underline;	
				}
			#cost{padding-left: 30px;
				 padding-top: 10px;
				 font-size: 30px;
				 color: black;
				}
				
				#title{
				font-size: 28px;
				font-weight:bold;
				
			
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
		
		<div id="name">${ModelName }</div>
		<div id="cost">Staring Cost $ ${ ModelCost}</div>
			
		</div>
		<div>
		
			
				<table id="div1">
					<tr style="text-align:center;">
						<td id="title"> ${name} </td>
						<td></td>	
					</tr>
					<tr>
						<td>Distance Range</td>
						<td>${range}</td>
					</tr>
					<tr>
						<td>Power Outlet</td>
						<td>${powerOut}</td>
					</tr>
					<tr>
						<td>Trim Level</td>
						<td>${trim}</td>
					</tr>
					<tr>
						<td>Additional Cost</td>
						<td>$ ${cost} </td>
					</tr>
					<g:form controller="buyer" action="comparison" params="['spec_id':6]" >
					<tr>
						<td><g:submitButton name="comparison" value="Compare"   /></td>
					</tr>
				</table>
			</div>
		</g:form>
			
				<table id="div2">
					<tr style="text-align:center;">
						<td id="title"> ${Sname} </td>
					</tr>
					<tr>
						<td>Distance Range</td>
						<td>${Srange}</td>
					</tr>
					<tr>
						<td>Power Outlet</td>
						<td>${SpowerOut}</td>
					</tr>
					<tr>
						<td>Trim Level</td>
						<td>${Strim}</td>
					</tr>
					<tr>
						<td>Additional Cost</td>
						<td>$ ${Scost}</td>
					</tr>
						<g:form controller="buyer" action="comparison" params="['spec_id':8]">
					<tr>
						<td><g:submitButton name="comparison" value="Compare"   /></td>
					</tr>
					</g:form>
				</table>
			</div>
		
		
		<!--  <footer><li> <g:link controller="buyer" action="buyerAdd">Test add Buyer</g:link></li></footer>-->
	</body>
</html>
