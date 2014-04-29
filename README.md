TrainingApp
===========

This application is designed to record and track the user's gym session. It stores data on sessions and the exercises performed within them.

Created with Grails. Runs on a LAMP server with Grails installed.

The application requires a database in mysql named trainingapp with username and password both set to 'raven'.
The mySQL statements to create the db is (after logging into mySQL as root):

create database trainingapp default charset utf8;
grant all on trainingapp.* to 'raven'@'localhost' identified by 'raven';

The application will create tables and relationships when it is started. If you want to create your own db name then do so but you must modify conf/DataSource.groovy to reflect the changes.
