mkdir C:\Java\JRE
echo INSTALL_SILENT=Enable> %cd%jcfg42.txt
echo INSTALLDIR=C:\Java\JRE>> %cd%jcfg42.txt
echo WEB_ANALYTICS=Disable>> %cd%jcfg42.txt
echo WEB_JAVA=Enable>> %cd%jcfg42.txt
"jre-8u241-windows-x64.exe" INSTALLCFG="%cd%jcfg42.txt" /s /L %cd%jre-log.log
del %cd%jcfg42.txt
