@echo off
setlocal
set YEAR=%date:~0,4%
set MONTH=%date:~5,2%
set DAY=%date:~8,2%
set HOUR=%time:~0,2%
set MINUTE=%time:~3,2%
set SECOND=%time:~6,2%
echo #define VERSION_MAJOR 1 >> versioninfo.txt
echo #define VERSION_MINOR 0 >> versioninfo.txt
echo #define VERSION_BUILD 0 >> versioninfo.txt
echo #define VERSION_QFE 1 >> versioninfo.txt
echo #define VERSION_BUILD_DATE "%YEAR%-%MONTH%-%DAY%" >> versioninfo.txt
echo #define VERSION_BUILD_DATE_SHORT "%SHTYEAR%%MONTH%%DAY%" >> versioninfo.txt

echo #define VERSION_BUILD_TIME "%HOUR%:%MINUTE%:%SECOND%" >> versioninfo.txt
echo.
echo #define _STR(x) #x >> versioninfo.txt
echo #define STR(x) _STR(x) >> versioninfo.txt
echo #define VERSION_NUMBER VERSION_MAJOR,VERSION_MINOR,VERSION_BUILD,VERSION_QFE>> versioninfo.txt
echo #define VERSION_STRING STR(VERSION_MAJOR) "." STR(VERSION_MINOR) "." \>> versioninfo.txt
echo                                STR(VERSION_BUILD) "." STR(VERSION_QFE)>> versioninfo.txt
echo.
echo #define VERSION_STRING_SHORT VERSION_MAJOR.VERSION_MINOR.\>> versioninfo.txt
echo                                VERSION_BUILD_DATE_SHORT.VERSION_QFE>> versioninfo.txt
echo.
echo #define VERSION_COMPANY "Korea Railroad Research Institute">> versioninfo.txt
echo #define VERSION_COPYRIGHT "(C) Copyright 2019">> versioninfo.txt
echo #define VERSION_TRADEMARK "">> versioninfo.txt
echo #define VERSION_BUILD_DATE_TIME VERSION_BUILD_DATE " - " VERSION_BUILD_TIME>> versioninfo.txt


