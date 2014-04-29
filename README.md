TrainingApp
===========

This application is designed to record and track the user's gym session. It stores data on sessions and the exercises performed within them.

Created with Grails. Runs on a LAMP server with Grails installed.

The application requires a database in mysql named trainingapp with username and password both set to 'raven'.
The mySQL statements to create the db is (after logging into mySQL as root):

create database trainingapp default charset utf8;
grant all on trainingapp.* to 'raven'@'localhost' identified by 'raven';

If you want to change the username and password for the database edit conf/DataSource.groovy line 16 and 17. 

The application will create tables and relationships when it is started. 

http://gvmtool.net/ - This link provides information on how to install Grails version manager for installing and maintaining grails. 

https://www.linux.com/learn/tutorials/288158-easy-lamp-server-installation - This link provides information on how to install a lamp server. 
