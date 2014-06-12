<!-- ngapp is an attribute needed by angularjs -->
<html ng-app="universalrest">
<head>
<title>Universal Diagnostics RESTFUL APP</title>
<!--<script src="http://code.angularjs.org/1.2.10/angular.min.js"></script>-->
<script src="js/angular-1.2.17.js"></script>
<script src="js/custom.js"></script>
<script
	src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<!-- Le styles -->
<link href="js/bootstrap/bootstrap.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}
</style>
<link href="js/bootstrap/bootstrap-responsive.css" rel="stylesheet">



</head>
<body ng-controller="controller" ng-init="hello()">
	<div style="text-align: center">
		<h1>UNIVERSAL DIAGNOSTICS</h1>
		<h2>Jersey RESTful Web Applications!</h2>
		<p>
			<a href="UniversalDX/urinterface/classify/23">GET TEST</a>
			<!-- <form action="UniversalDX/urinterface/classify" id="classifyForm"
			method="post">
			<input type="text" name="classify" id="classify" placeholder="Classify..." />
			<input id="classifyButton" type="submit" value="Classify" />
		</form>-->
		<p>
		<p>
		<form action="UniversalDX/urinterface/create" id="createForm"
			method="post">
			<input type="text" name="object" id="object"
				placeholder="Retrieve..." /> <input id="createButton" type="submit"
				value="Retrieve" class="btn-primary" />
		</form>

		<p>
			Visit <a href="http://jersey.java.net">Project Jersey website</a> for
			more information on Jersey!
		<p>
		<form>
			<label> Suma </label> <input type="number" ng-model="n1" /> + <input
				type="number" ng-model="n2" /><span>{{n1+n2}}</span>
		</form>

		<div>
			<p>
				El mensaje es <strong>{{mola}}</strong>
			</p>
		</div>

		<form ng-submit="classify()">
			<input type="text" name="clas" ng-model="clas"
				placeholder="Classify..." /> <input id="classifyButton"
				type="submit" value="Classify" class="btn-primary" />
		</form>

		<div>Last Classified {{classified}}</div>

	</div>

	<div class="accordion" id="accordion2">
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse"
					data-parent="#accordion2" href="#collapseOne"> Objeto de grupo
					de plegado #1 </a>
			</div>
			<div id="collapseOne" class="accordion-body collapse in">
				<div class="accordion-inner">Anim pariatur cliche
					reprehenderit, enim eiusmod high life accusamus terry richardson ad
					squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
					brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf
					moon tempor, sunt aliqua put a bird on it squid single-origin
					coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
					helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
					proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
					craft beer farm-to-table, raw denim aesthetic synth nesciunt you
					probably haven't heard of them accusamus labore sustainable VHS.</div>
			</div>
		</div>
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse"
					data-parent="#accordion2" href="#collapseTwo"> Objeto de grupo
					de plegado #2 </a>
			</div>
			<div id="collapseTwo" class="accordion-body collapse in">
				<div class="accordion-inner">Anim pariatur cliche
					reprehenderit, enim eiusmod high life accusamus terry richardson ad
					squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
					brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf
					moon tempor, sunt aliqua put a bird on it squid single-origin
					coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
					helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
					proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
					craft beer farm-to-table, raw denim aesthetic synth nesciunt you
					probably haven't heard of them accusamus labore sustainable VHS.</div>
			</div>
		</div>
		<div class="accordion-group">
			<div class="accordion-heading">
				<a class="accordion-toggle" data-toggle="collapse"
					data-parent="#accordion2" href="#collapseThree"> Objeto de
					grupo de plegado #3 </a>
			</div>
			<div id="collapseThree" class="accordion-body collapse in">
				<div class="accordion-inner">Anim pariatur cliche
					reprehenderit, enim eiusmod high life accusamus terry richardson ad
					squid. 3 wolf moon officia aute, non cupidatat skateboard dolor
					brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf
					moon tempor, sunt aliqua put a bird on it squid single-origin
					coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
					helvetica, craft beer labore wes anderson cred nesciunt sapiente ea
					proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
					craft beer farm-to-table, raw denim aesthetic synth nesciunt you
					probably haven't heard of them accusamus labore sustainable VHS.</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="span12 center-block">
			<h1>UNIVERSAL DIAGNOSTICS</h1>
		</div>
	</div>
	<div class="row">
		<div class="span12 center-block">
			<h2>Jersey RESTful Web Applications!</h2>
		</div>
	</div>
	<div class="row">
		<div class="span4">TEST1</div>
		<div class="span8">TEST2</div>
	</div>
	<div class="row">
		<div class="span2">TEST1</div>
		<div class="span10">TEST2</div>
	</div>

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->


	<script src="js/bootstrap/bootstrap-alert.js"></script>
	<script src="js/bootstrap/bootstrap-modal.js"></script>
	<script src="js/bootstrap/bootstrap-dropdown.js"></script>
	<script src="js/bootstrap/bootstrap-scrollspy.js"></script>
	<script src="js/bootstrap/bootstrap-tab.js"></script>
	<script src="js/bootstrap/bootstrap-tooltip.js"></script>
	<script src="js/bootstrap/bootstrap-popover.js"></script>
	<script src="js/bootstrap/bootstrap-button.js"></script>
	<script src="js/bootstrap/bootstrap-collapse.js"></script>
	<script src="js/bootstrap/bootstrap-carousel.js"></script>
	<script src="js/bootstrap/bootstrap-typeahead.js"></script>

	<script>
		$(".collapse").collapse()
	</script>


</body>
</html>
