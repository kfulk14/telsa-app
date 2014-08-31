<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
	<div style="background-color:#C0C0C0; margin-bottom: -30px;height: 80px" >
	<a href="/tesla"><asset:image src="tesla.jpeg" alt="Grails" style="width:85px; height: 105px; position:absolute"/></a>
		
		
		
		<ul id="nav">
			<li>
			Models
				<ul>
				<li><g:link resource="model" action="modelS">Model S</g:link></li>
				<li><g:link resource="model" action="roadster">Roadster</g:link></li>
				<li><g:link resource="model" action="model3">Model 3</g:link> </li>
				<li><g:link resource="model" action="modelX">Model X</g:link> </li>
				</ul>
			</li>
			
			<!--   <li>Find Us</li> -->
			<li><g:link resource="buyer" action="myTesla">My Tesla</g:link></li>
			<li><g:link resource="buyer" action="supercharger">Supercharger	</g:link></li>
		</ul>
		</div>	
	
		<g:layoutBody/>
		
		
		<div class="footer" role="contentinfo"> <li> <g:link controller="buyer" action="buyerAdd">Test add Buyer</g:link></li></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
