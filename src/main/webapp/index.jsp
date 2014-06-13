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
	<div class="row">
		<div class="span12 center-block">
			<h1>UNIVERSAL DIAGNOSTICS</h1>
		</div>
	</div>
	<div class="row">
		<div class="span12 center-block">
			<h2>Jersey RESTful Web Application!</h2>
		</div>
	</div>
	<div class="row">
		<div class="span12 center-block">
			<p>
				<strong>{{welcome}}</strong>
			</p>
		</div>
	</div>

	<ul class="nav nav-tabs">
		<li><a href="#home" data-toggle="tab">Home</a></li>
		<li><a href="#POST" data-toggle="tab">POST: Classify a new
				index</a></li>
		<li><a href="#GET" data-toggle="tab">GET: Classify an
				existing index</a></li>
		<li><a id="listIndexes" href="#LIST" data-toggle="tab">List
				of the indexes registered</a></li>
	</ul>

	<div class="tab-content">
		<div class="tab-pane active" id="home">
			You can select the following options:
			<ul>
				<li>Classify a new index (with a POST method)</li>
				<li>Classify an old index (with a GET method)</li>
			</ul>
		</div>
		<div class="tab-pane" id="POST">
			<div class="row">
				<div class="span6 center-block">
					<form ng-submit="create()">
						<input type="text" name="object" ng-model="object"
							placeholder="Create..." /> <input id="createButton"
							type="submit" value="Create" class="btn-primary" />
					</form>
				</div>
			</div>

			<div class="row ">
				<div class="span6 center-block">
					<strong>Last Object Created</strong>
				</div>
			</div>
			<div class="row">
				<div class="span3 center-block">
					Key: <strong>{{createdkey}}</strong>
				</div>
				<div class="span3 center-block">
					Class: <strong>{{createdclassified}}</strong>
				</div>
			</div>
		</div>
		<div class="tab-pane" id="GET">
			<div class="row">
				<div class="span6 center-block">
					<form ng-submit="classify()">
						<input type="text" name="clas" ng-model="clas"
							placeholder="Classify..." /> <input id="classifyButton"
							type="submit" value="Classify" class="btn-primary" />
					</form>
				</div>
			</div>

			<div class="row ">
				<div class="span6 center-block">
					<strong>Last Object Classified</strong>
				</div>
			</div>
			<div class="row">
				<div class="span3 center-block">
					Key: <strong>{{clas}}</strong>
				</div>
				<div class="span3 center-block">
					Class: <strong>{{classified}}</strong>
				</div>
			</div>
		</div>
		<div class="tab-pane" id="LIST">
			<div class="row">
				<div class="span3" id="index" rel="popover">
					<strong>Index ID</strong>
				</div>
				<div class="span3" id="class" rel="popover">
					<strong>Class</strong>
				</div>
			</div>
			<div class="row" ng-repeat="keyClassified in keys| orderBy:'key'">
				<div class="span3">{{ keyClassified.key }}</div>
				<div class="span3">{{ keyClassified.keyClass.classification }}</div>
			</div>
			<br />
			<div class="alert">
				<a class="close" data-dismiss="alert">X</a> <strong>Warning!</strong>
				Once you refresh the window all data will disappear.
			</div>
		</div>
	</div>

	<script>
		$(function() {
			$('.tabs a:last').tab('show')
		})

		$(function() {
			$('#index')
					.popover(
							{
								title : 'Index',
								content : 'Index that has been introduced at the system and classified.',
								offset : 10
							});
		});
		$(function() {
			$('#class').popover({
				title : 'Class',
				content : 'Class to which the index belongs to.',
				offset : 10
			});
		});
	</script>
	<!-- Le javascript -->
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

	<!-- Activate the Bootstrap action that collapses the accordion. -->
	<script>
		$(".collapse").collapse()
	</script>

</body>
</html>
