# os-1-msinstall
## Задание 1. Создание скрипта для автоматизации установки под Windows
---
---
### `software-installer.bat`
\
__7-zip installer__
```shell
"7z1604-x64.msi" /passive /norestart /lwe "C:\Users\%username%\Desktop\7zip-log.txt" TARGETDIR="C:\Program Files\7-Zip"
```
- `/passive` - автоматический режим установки (отображается только ход выполнения)
- `/norestart` - без перезагрузки
- `/lwe $PATH` - сохранение журнала логов (w - предупреждения, e - ошибки)
- `TARGETDIR=$PATH` - каталог для установки

__PaintNet installer__
```shell
"paintnet_4.2.10.exe" /auto TARGETDIR="C:\Program Files\Graphics\Paint" DESKTOPSHORTCUT=1
```
- `/auto` - автоматический режим установки (с подтверждением лицензии)
- `TARGETDIR=%PATH%` - каталог для установки
- `DESKTOPSHORTCUT=1` - создание ярлыка на рабочем столе (вообще 1 задана по умолчанию)

__Inkscape installer__
```shell
"inkscape-0.92.4-x64.msi" /qr /norestart /lw "C:\Users\%username%\Desktop\inkscape-log.txt" TARGETDIR="C:\Program Files\Graphics\Inkscape"
```
- `/qr` - установка с сокращенным интерфейсом
- `/norestart`- без перезагрузки
- `/lw $PATH` - сохранение журнала логов (w - ошибки)
- `TARGETDIR=$PATH` - каталог для установки

__LibreOffice install__
```shell
"LibreOffice_6.4.2_Win_x86.msi" /passive /norestart /lwe "C:\Users\%username%\Desktop\libreoffice-install-log.txt"
"LibreOffice_6.4.2_Win_x86_helppack_ru.msi" /quiet /forcerestart
```
- `/passive` - автоматический режим установки (отображается только ход выполнения)
- `/norestart` - без перезагрузки
- `/lwe $PATH` - сохранение журнала логов (w - предупреждения, e - ошибки)
- `/quiet` - автоматическая установка (тихая)
- `/forcerestart` - принудительная перезагрузка (можно вместо этого использовать `/promtrestart` - перезагрузка с разрешения пользователя)

__Notepad++ installer__
```shell
"npp.7.8.1.Installer.x64.exe" /S
```
- `/S` - тихая установка .exe-файлов
---
### `jre_installer.bat`
```shell
mkdir C:\Java\JRE
echo INSTALL_SILENT=Enable> %cd%jcfg42.txt
echo INSTALLDIR=C:\Java\JRE>> %cd%jcfg42.txt
echo WEB_ANALYTICS=Disable>> %cd%jcfg42.txt
echo WEB_JAVA=Enable>> %cd%jcfg42.txt
"jre-8u241-windows-x64.exe" INSTALLCFG="C:\jcfg42.txt" /s /L %cd%jre-log.log
del %cd%jcfg42.txt
```
- `mkdir $PATH` - создаем директорию  по заданному пути
- `echo $TEXT> $FILE_1` - создаем конфиг файл в текущей папке и передаем ему `$TEXT`
- `echo $TEXT>> $FILE_1` - добавляем в конец файла `$TEXT`
- `jre INSTALLCFG=$PATH /s /L $FILE_2` - устанавливаем jre в тихом режиме и сохраняем логи в заданной директории
- `%cd%` - возвращает текущую директорию
- `del $FILE_1` - удаляем файл
