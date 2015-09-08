@echo off

netstat -na | find "LISTENING" | find /C /I ":8080" > NUL
if %errorlevel%==1 (
	echo "remove FTPAssemblyLine"
	rm -rf E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\webapps\FTPAssemblyLine
	echo "remove FTPAssemblyLine.war"
	rm -rf E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\webapps\FTPAssemblyLine.war
	echo "copy target\FTPAssemblyLine.war E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\webapps\"
	cp target\FTPAssemblyLine.war E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\webapps\
	echo "STARTING TOMCAT"
	E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\bin\startup.bat )

if %errorlevel%==0 (

	echo "SHUTTING DOWN TOMCAT"
	E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\bin\shutdown.bat
	echo "remove FTPAssemblyLine"
	rm -rf E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\webapps\FTPAssemblyLine
	echo "remove FTPAssemblyLine.war"
	rm -rf E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\webapps\FTPAssemblyLine.war
	echo "copy target\FTPAssemblyLine.war E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\webapps\"
	cp target\FTPAssemblyLine.war E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\webapps\
	sleep 10
	echo "STARTING TOMCAT"
	E:\apache-tomcat-7.0.63-windows-x64\apache-tomcat-7.0.63\bin\startup.bat )
