rem EXPORTER
@echo off
cls
:main
echo Selamat Datang di
echo     =========
echo      Xporter
echo     =========
echo.
echo Direktori saat ini %cd%
echo.
echo Silahkan Pilih Target Export Anda
echo.
echo Export menurut ukuran Page
echo 1) png
echo 2) pdf
echo 3) pdf_cmyk
echo 4) eps_default
echo 5) svg_plain
echo.
rem echo Untuk informasi pengembang, silahkan ketik "about"
rem echo untuk mengunjungi laman bantuan online, silahkan ketik "help"
echo.
set /p target=Pilihan Anda : 
if %target%== 1 goto PNGFULL
if %target%== 2 goto PDFFULL
if %target%== 3 goto PDFCMYKFULL
if %target%== 4 goto EPSFULL
if %target%== 5 goto SVGFULL
echo Silahkan pilih target yang tersedia
echo Tekan Enter Untuk Kembali
pause >nul
goto main


:PNGFULL
echo Bersiap mengekspor file SVG (Page) ke PNG
echo file SVG yang tersedia :
echo.
echo Waktu dibuat            Ukuran File Nama File
echo ================================================
dir | findstr .svg
echo.
set /p svg="File yang ingin anda proses : "
set /p output="Nama File Output : "
inkscape --export-area-page --export-png=%output%.png "%svg%"
echo.
goto end

:SVGFULL
echo Bersiap mengekspor file SVG (Page) ke SVG Plain
echo file SVG yang tersedia :
echo.
echo Waktu dibuat            Ukuran File Nama File
echo ================================================
dir | findstr .svg
echo.
set /p svg="File yang ingin anda proses : "
set /p output="Nama File Output : "
inkscape --export-area-page --export-plain-svg=%output%.svg "%svg%"
echo.
goto end

:PDFFULL
echo Bersiap mengekspor file SVG (Page) ke PDF
echo file SVG yang tersedia :
echo.
echo Waktu dibuat            Ukuran File Nama File
echo ================================================
dir | findstr .svg
echo.
set /p svg="File yang ingin anda proses : "
set /p output="Nama File Output : "
inkscape --export-pdf=%output%.pdf --export-area-page "%svg%"
echo.
echo %output%.pdf telah dibuat
echo.
goto end

:PDFCMYKFULL
echo Bersiap mengekspor file SVG (Page) ke PDF dengan color space CMYK
echo file SVG yang tersedia :
echo.
echo Waktu dibuat            Ukuran File Nama File
echo ================================================
dir | findstr .svg
echo.
set /p svg="File yang ingin anda proses : "
set /p output="Nama File Output : "
inkscape --export-pdf=%output%-rgb.pdf --export-area-page "%svg%"
gswin32 -dSAFER -dBATCH -dNOPAUSE -dNOCACHE -sDEVICE=pdfwrite -dAutoRotatePages=/None -sColorConversionStrategy=CMYK -dProcessColorModel=/DeviceCMYK -dAutoFilterColorImages=false -dAutoFilterGrayImages=false -dColorImageFilter=/FlateEncode -dGrayImageFilter=/FlateEncode -dDownsampleMonoImages=false -dDownsampleGrayImages=false -sOutputFile=%output%.pdf %output%-rgb.pdf
del %output-rgb.pdf
echo.
echo %output%.pdf telah dibuat
goto end

:EPSFULL
echo Bersiap mengekspor file SVG (Page) ke EPS Default
echo file SVG yang tersedia :
echo.
echo Waktu dibuat            Ukuran File Nama File
echo ================================================
dir | findstr .svg
echo.
set /p svg="File yang ingin anda proses : "
set /p output="Nama File Output : "
inkscape "%svg%" --export-eps=%output%.eps --without-gui --export-ps-level=3 --export-text-to-path --export-ignore-filters >nul
echo %output%.eps telah dibuat
echo.
goto end

:end
cls
echo.
echo Permintaan anda telah diselesaikan
echo file anda telah disimpan di %cd%\%fold%


:langsung_end
echo Sampai jumpa
endlocal
