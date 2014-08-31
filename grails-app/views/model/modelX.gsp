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
				background-image: url('${resource(dir: "images", file: "modelX.png")}');
				 background-repeat:no-repeat;
				 height: 950px;
				
				
				#page-body img{
					 
					 width:950px; 
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
				padding-top: 330px;
				font-size: 40px;
				color: black;
				text-align:center;
				
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
		<div id="name"><h1>Coming In 2016</h1>
		<p>Check back later for details</p>
		</div>
		
			
		</div>
	
		
		
		<!--  <footer><li> <g:link controller="buyer" action="buyerAdd">Test add Buyer</g:link></li></footer>-->
	</body>
</html>
