Nama : Reza Fahresi
Kelas : 2A TRPL
Nim : 362358302144

Pratikum 1
Jelaskan maksud dari langkah 2 pada praktikum tersebut!
Jawab :digunakan untuk menambahkan package bernama auto_size_text ke proyek Flutter Anda. Package ini berguna untuk menyesuaikan ukuran teks agar otomatis sesuai dengan batas atau ruang yang tersedia, sehingga teks tidak terpotong atau keluar dari area tampilan.

Jelaskan maksud dari langkah 5 pada praktikum tersebut!
Jawab : Final adalah kata kunci yang menyatakan bahwa nilai variabel text hanya dapat di inisialisasi sekali dan tidak dapat di ubah
        String text; mendeklarasikan variabel text dengan tipe data String.
        Jadi, final String text; adalah deklarasi untuk sebuah variabel text yang nilainya tidak bisa diubah setelah diberikan.
        Kata kunci const menunjukkan bahwa konstruktor ini dapat digunakan untuk membuat objek immutable (tidak dapat diubah) jika semua atribut dalam kelas tersebut juga 
        immutable. Dengan kata lain, objek yang dihasilkan dari konstruktor ini bisa menjadi objek konstan (konstanta).

Pada langkah 6 terdapat dua widget yang ditambahkan, jelaskan fungsi dan perbedaannya!
Jawab : Container 1 : color: Colors.yellowAccent: Memberikan latar belakang berwarna kuning terang pada Container.
                      width: 50: Mengatur lebar Container menjadi 50 piksel.
                      child: const RedTextWidget(...): Container ini memiliki child berupa widget RedTextWidget, yang menerima teks sebagai parameter.
        Container 2 : color: Colors.greenAccent: Memberikan latar belakang berwarna hijau terang pada Container.
                      width: 100: Mengatur lebar Container menjadi 100 piksel. child: const Text(...): Container ini memiliki child berupa widget Text, yang langsung 
                      menampilkan teks tanpa melalui widget RedTextWidget.
        Perbedaanya : Child Widget:
                      Container pertama menggunakan RedTextWidget, yang didesain khusus untuk menampilkan teks dalam warna merah. Ini berarti RedTextWidget memiliki gaya                          teks yang sudah ditentukan (warna merah) dalam TextStyle.
                      Container kedua menggunakan Text langsung, tanpa modifikasi gaya tertentu, sehingga tampilannya akan menggunakan gaya teks bawaan atau gaya yang                             diwariskan dari konteks aplikasi.Lebar (Width):
                      Container pertama memiliki lebar 50, sehingga teks mungkin akan terpotong jika tidak cukup ruang.
                      Container kedua memiliki lebar 100, yang memberikan ruang lebih luas untuk teks. Teks yang panjang pun akan dibungkus atau dipotong sesuai pengaturan                        default.Gaya Teks:
                      Teks dalam RedTextWidget akan tampil dalam warna merah (karena pengaturan di RedTextWidget).
                      Teks dalam Text (di Container kedua) akan tampil dengan gaya teks default atau gaya yang diwariskan dari tema aplikasi.

Jelaskan maksud dari tiap parameter yang ada di dalam plugin auto_size_text berdasarkan tautan pada dokumentasi ini !
Jawab : Plugin auto_size_text dalam Flutter otomatis menyesuaikan ukuran teks berdasarkan ruang yang tersedia. Berikut ringkasan parameter utamanya:
        minFontSize & maxFontSize: Menentukan ukuran font minimum dan maksimum untuk penyesuaian.
        presetFontSizes: Daftar ukuran font khusus yang akan dicoba.
        stepGranularity: Mengatur langkah penurunan ukuran font, membantu penyesuaian halus.
        wrapWords & softWrap: Mengontrol pemotongan kata di akhir baris.
        overflow & overflowReplacement: Menangani bagaimana teks yang tidak muat ditampilkan.
        maxLines: Menetapkan batas jumlah baris yang dapat ditampilkan.

<img width="307" alt="image" src="https://github.com/user-attachments/assets/c6d23dbf-1a0e-4c07-ba23-a29160968adf">
Ini hasil dari pratikum pertama dan kedua


Pratikum 2
Selesaikan Praktikum 1 dan 2, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md! Jika 
terdapat error atau kode yang tidak dapat berjalan, silakan Anda perbaiki sesuai tujuan aplikasi dibuat!
Jawab : <img width="959" alt="image" src="https://github.com/user-attachments/assets/b9627e92-c10e-4142-82b4-b04d28361e78">
        ini untuk hasil foto code dan hasil dari pratikum 1 dan dua

Gabungkan hasil praktikum 1 dengan hasil praktikum 2 sehingga setelah melakukan pengambilan foto, dapat dibuat filter carouselnya! 
Jawab : <img width="302" alt="image" src="https://github.com/user-attachments/assets/a62c50c9-f265-4ce8-a4bd-1a5c9ff2c20e">
        ini hasil gabungan dari pratikum 1 dan 2

Jelaskan maksud void async pada praktikum 1?
Jawab : Void: Menandakan bahwa fungsi ini tidak mengembalikan nilai apa pun 
        async: Digunakan untuk menandai fungsi sebagai asinkron

Jelaskan fungsi dari anotasi @immutable dan @override ? 
Jawab : @immutable : digunakan untuk menandai class sebagai immutable
        @override : digunakan untuk menunjukan bahwa suatu metode di dalam subclass mengimplemetasikan atau mengubah perilaku dari superclass
