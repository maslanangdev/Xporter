Bismillah

# Xporter
tool sederhana untuk mengekspor berkas SVG melalui Inkscape Command Line

Aplikasi yang dibutuhkan :
- **Inkscape** : https://inkscape.org/
- **Ghostscript** untuk expor pdf-cmyk : https://www.ghostscript.com/download/gsdnld.html (gunakan ghostscript 32bit, karena inkporter.bat ini saya tulis agar menggunakan gswin32 sehingga dapat berjalan di semua arsitektur)

Petunjuk Instalasi

- Unduh dan salin inkporter.bat ke direktori installasi Inkscape
- tambahkan direktori installasi inkscape dan ghostscript ke %PATH%
	- buka Control Panel -> System and Security -> System 
	- klik pada pojok kiri atas *Advanced system setting* lalu akan muncul system properties
	
	 ![image set path 1](https://github.com/maslanangdev/inkporter/blob/windows/tutorial_image/3.png)

	- masuk ke *Environment Variables...*
	
	 ![image set path 2](https://github.com/maslanangdev/inkporter/blob/windows/tutorial_image/4.png)
	
	- Edit System variable *Path*
	
	 ![image set_path 3](https://github.com/maslanangdev/inkporter/blob/windows/tutorial_image/5.png)
	
	- lalu tambahkan direktori installasi Inkscape (C:\Program Files\Inkscape) dan Ghostscript (untuk versi terbaru saat ini ditulis = C:\Program Files\gs\gs9.52\bin)
	
	![image set_path 4](https://github.com/maslanangdev/inkporter/blob/windows/tutorial_image/7.png)
	
	- **TIP** Jika kalian menggunakan Python, pastikan untuk meletakkan direktori Inkscape dibawah direktori python agar saat hendak menjalankan Python lewat CMD tidak menjalankan Python dari direktori Inkscape, karena di dalam folder Inkscape juga terdapat Python
	
	![image tip](https://github.com/maslanangdev/inkporter/blob/windows/tutorial_image/tip1.png)
  
  Petunjuk Pemakaian
  
  * untuk mengarahkan CMD pada direktori yang di tuju
	  * buka cmd
	  * ketik **nama_partisi:** misal **D:** lalu enter untuk pindah ke partisi D:\
 	  * selanjutnya ketik **cd nama_folder** misal **cd project** lalu tekan enter untuk masuk ke folder bernama project
  * jalankan Xporter dengan mengetikkan xporter di CMD lalu tekan enter
  * pilih format expor yang anda inginkan seperti eps, maka ketik angka 4 lalu enter
  * lalu akan muncul berkas-berkas SVG yang ada di direktori saat ini, setelah itu ketik salah satu berkas yang ingin anda proses seperti **drawing.svg*
  * setelah itu pilih tentukan nama berkas hasil expor seperti **project1**
  * berkas anda akan di proses dan disimpan di direktori yang sama dengan berkas SVG anda

Sekian, Terima Kasih
