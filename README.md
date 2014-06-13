UniversalREST
=============

Task developed for the job position process. It implements a Java web application exposing a simple REST API.

Requirements
------------

- OS: Linux
- JVM: 1.7
- Tomcat7

Creation from scratch
---------------------

In *tools* folder, you can see the createUniversalREST.sh script, that will create a webapp maven application from scratch.

Compilation and Deployment
--------------------------

You have to follow the next steps:
- mvn clean package
- Copy your UniversalREST.war package stored at target folder to your tomcat7 webapps folders (in my case, /var/lib/tomcat7/webapps)
- Start or restart your tomcat7 instance (for example, with the routine sudo service tomcat7 restart)
- Go to your web browser and go to the following URL: http://localhost:8080/UnviversalREST

I've developed two different ways of watching the app:
- http://localhost:8080/UnviversalREST/index.jsp, which is the default one.
- http://localhost:8080/UnviversalREST/accordion.jsp, which uses a different Twitter Bootstrap style.

Features
========

RESTFul API
-----------

I've developed my RESTFul API using Jersey and Jackson so the conversion from Java Objects to JSON ones will be done automatically.

I've developed three different services:
- UniversalREST/urinterface/test, a GET service that returns a welcome message.
- UniversalREST/urinterface/classify, a GET service that gets the classify parameter (an integer) and returns the class it's supposed to match with it.
- UniversalREST/urinterface/create, a POST service that creates the class of an integer (randomly generated) and stores it on memory. If the integer is already stored, nothing has to be done.

AngularJS
---------

I've used the following features:
- Data-Binding: I've played with the possibility of showing in real-time the changes that suffers the data. For example, the *List of indexes registered* changes when new integers are classified.
- Communications: Instead of calling the Web Services directly from Javascript, I've used AngularJS to retrieve the data.
- MVC: I've used a controller to solve a problem with the $http.post call and to ease the call to Web Services.
- Some actions such as ng-repeat (that allow us to execute several times one portion of html code with the data of a complex structure), ng-init (to execute actions when the page is loaded), etc.

Twitter Bootstrap
-----------------

I've used the following features:
- The grid system although the project is so tiny that we can't see the great power of this tool to organize the screen.
- Popovers: when you put the mouse over the header of the *List of indexes registered* you'll see a kind of tooltip (more powerful) with information related to such text.
- Accordion and Collapse: two different ways of showing the data to the user.
- Carousel: I've made some tests with the Carousel of images.
