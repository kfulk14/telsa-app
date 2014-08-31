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
				
				}
					 
				#page-body img{
					 
					 width:960px; 
					 height: 444px;
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
		<asset:image src="supercharger.jpg" alt="supercharger" /> 
		</div>
		
		<div>
		<asset:image src="roadTrip.png" alt="map" /> 
		</div>
		
		<div>
		<asset:image src="America.png" alt="map" /> 
		</div>
		
		
		<div>
		<asset:image src="Europe.png" alt="map" /> 
		
		</div>
		
				<div>
		<asset:image src="Asia.png" alt="map" /> 
		
		</div>
		

		

		

		
		<!--  <footer><li> <g:link controller="buyer" action="buyerAdd">Test add Buyer</g:link></li></footer>-->
	</body>
</html>
