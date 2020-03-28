# 7-zip installer
"7z1604-x64.msi" /passive /norestart /lwe "C:\Users\%username%\Desktop\7zip-log.txt" TARGETDIR="C:\Program Files\7-Zip"
# PaintNet installer
"paintnet_4.2.10.exe" /auto TARGETDIR="C:\Program Files\Graphics\Paint" DESKTOPSHORTCUT=1
# Inkscape installer
"inkscape-0.92.4-x64.msi" /qr /norestart /lw "C:\Users\%username%\Desktop\inkscape-log.txt" TARGETDIR="C:\Program Files\Graphics\Inkscape"
# LibreOffice install
"LibreOffice_6.4.2_Win_x86.msi" /passive /norestart /lwe "C:\Users\%username%\Desktop\libreoffice-install-log.txt"
"LibreOffice_6.4.2_Win_x86_helppack_ru.msi" /quiet /forcerestart
# Notepad++ installer
"npp.7.8.1.Installer.x64.exe" /S
