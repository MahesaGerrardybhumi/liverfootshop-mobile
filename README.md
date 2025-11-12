tugas 7

1. Widget Tree adalah representasi hierarki visual dari antarmuka pengguna (UI) aplikasi Flutter. . Setiap elemen yang terlihat di layar, dari tombol hingga tata letak halaman, adalah sebuah widget yang tersusun. Struktur ini berawal dari widget root dan bercabang ke bawah, membentuk hubungan Parent-Child  yang ketat.

Dalam hubungan ini, Parent Widget memiliki tanggung jawab utama untuk menentukan aturan tata letak dan batasan ukuran untuk Child Widget-nya. Misalnya, Parent seperti Column akan memberi tahu semua Child untuk berbaris secara vertikal, sementara Parent seperti Container akan membatasi ukuran Child di dalamnya. Child Widget pada gilirannya akan mencoba menyesuaikan diri dengan batasan yang diberikan Parent dan mendefinisikan ukurannya sendiri.

2. -Scaffold : Menyediakan kerangka dasar halaman, termasuk lokasi untuk AppBar dan body
   -AppBar : Menampilkan bilah aplikasi di bagian atas halaman, berisi judul.
   -GridView.count : Menampilkan menu dalam tata letak grid dengan jumlah kolom tetap
   -Text & Icon : menampilkan teks dan simbol visual.
   -Card & Material :memberikan tampilan visual yang ditinggikan (elevated) dan latar belakang yang dapat merespons interaksi
   -InkWell : Memberikan respons visual ketika widget ditekan

3. MaterialApp adalah widget yang bertanggung jawab untuk menyediakan fungsionalitas dan konfigurasi yang diperlukan untuk aplikasi yang mengikuti pedoman Material Design.

MaterialApp sering digunakan sebagai widget root karena ia bertindak sebagai penyedia konteks dan layanan global. Ini mencakup:

Theming: Menyediakan skema warna, tipografi, dan bentuk default (Theme.of(context)) yang akan diwarisi oleh semua widget di bawahnya.

Navigasi: Menginisialisasi sistem routing untuk berpindah antar layar.

Akses Data: Menyediakan widget seperti MediaQuery untuk mengakses informasi device (seperti ukuran layar) di seluruh aplikasi.

4. perbedaan  antara StatelessWidget dan StatefulWidget yang bergantung pada kemampuan mereka dalam mengelola data yang berubah atau state. StatelessWidget adalah widget yang bersifat statis; setelah widget ini dibangun, tampilan antarmuka penggunanya  tidak akan pernah berubah. Widget jenis ini ideal digunakan untuk elemen presentasi murni seperti menampilkan teks, ikon, atau gambar statis yang tidak memerlukan interaksi pengguna untuk mengubah tampilannya. Sebaliknya, StatefulWidget adalah widget yang bersifat dinamis karena ia mampu memiliki objek State yang menyimpan data yang dapat berubah selama masa pakai aplikasi. Perubahan pada data ini memungkinkan widget untuk membangun ulang UI-nya secara eksplisit dengan memanggil metode setState(). Oleh karena itu, StatefulWidget dipilih ketika widget harus merespons interaksi pengguna, seperti counter yang angkanya bertambah atau checkbox yang statusnya berubah, menjadikannya kunci untuk membangun elemen interaktif dalam aplikasi.

5. -BuildContext adalah referensi ke lokasi widget dalam Widget Tree. Setiap widget memiliki context uniknya sendiri, yang bertindak sebagai "pegangan" alamat.
   -BuildContext penting karena memungkinkan sebuah widget untuk menemukan dan berinteraksi dengan widget lain yang berada di atasnya (terutama widget pewaris seperti Theme dan Navigator).
   - Metode build setiap widget secara universal menerima BuildContext context sebagai argumen. Melalui context inilah sebuah widget dapat, misalnya, mengambil skema warna dari MaterialApp dengan memanggil Theme.of(context), atau meminta Scaffold untuk menampilkan SnackBar melalui ScaffoldMessenger.of(context)
  
6. Hot Reload bekerja dengan menyuntikkan (inject) kode yang diubah ke dalam Dart Virtual Machine (VM) yang sedang berjalan di perangkat.

   Hot Reload adalah senjata utama untuk perubahan visual, sementara Hot Restart digunakan ketika perubahan kode Anda memengaruhi state atau inisialisasi aplikasi secara mendalam.

tugas 8

1. Navigator.push() dan Navigator.pushReplacement() merupakan dua metode navigasi di Flutter yang memiliki fungsi berbeda dalam mengelola perpindahan antarhalaman. Navigator.push() digunakan untuk menambahkan halaman baru di atas stack navigasi tanpa menghapus halaman sebelumnya. Dengan cara ini, pengguna masih dapat kembali ke halaman sebelumnya menggunakan tombol “back”. Misalnya, dalam aplikasi Football Shop saya, ketika pengguna memilih salah satu produk dari daftar produk, maka fungsi Navigator.push() dapat digunakan untuk menampilkan halaman detail produk. Setelah melihat detailnya, pengguna dapat menekan tombol kembali untuk kembali ke daftar produk.

Sementara itu, Navigator.pushReplacement() berfungsi untuk menggantikan halaman yang sedang dibuka dengan halaman baru. Halaman sebelumnya dihapus dari stack, sehingga pengguna tidak dapat kembali ke halaman tersebut dengan tombol “back”. Dalam konteks aplikasi Football Shop saya, metode ini lebih cocok digunakan pada situasi di mana pengguna tidak perlu lagi mengakses halaman sebelumnya, seperti setelah login berhasil atau setelah proses checkout selesai. Dengan demikian, pengguna diarahkan langsung ke halaman utama atau halaman konfirmasi, tanpa risiko kembali ke halaman login atau checkout yang sudah tidak relevan.

2. Dalam membangun aplikasi Flutter seperti Football Shop, menjaga konsistensi tampilan antarseluruh halaman merupakan hal penting untuk memberikan pengalaman pengguna yang nyaman dan terstruktur. Hierarki widget seperti Scaffold, AppBar, dan Drawer digunakan untuk mencapai tujuan tersebut. Scaffold berfungsi sebagai kerangka dasar yang menampung seluruh elemen utama halaman, seperti area konten (body), bilah atas (AppBar), menu samping (Drawer), serta tombol aksi mengambang (floating action button).

AppBar digunakan untuk menampilkan judul halaman serta ikon penting seperti ikon keranjang belanja atau tombol pencarian. Dengan AppBar, setiap halaman memiliki identitas yang jelas dan navigasi yang mudah dipahami pengguna. Sementara itu, Drawer berfungsi sebagai menu navigasi yang memudahkan pengguna berpindah antarhalaman, seperti ke halaman “Beranda”, “Kategori Produk”, atau “Profil”. Dengan kombinasi tiga widget tersebut, aplikasi Football Shop memiliki struktur halaman yang seragam dan profesional, serta memudahkan pengguna menjelajahi berbagai fitur di dalam aplikasi dengan konsisten.

3. Penggunaan layout widget seperti Padding, SingleChildScrollView, dan ListView memiliki peran penting dalam mendesain antarmuka yang rapi dan responsif, terutama pada halaman yang menampilkan form atau daftar elemen. Padding digunakan untuk memberikan jarak antar elemen agar tampilan tidak terlihat sempit dan lebih nyaman dilihat. SingleChildScrollView memungkinkan seluruh konten dapat di-scroll ke atas dan ke bawah, sehingga tidak terjadi overflow pada layar dengan ukuran kecil. Sedangkan ListView merupakan versi scrollable dari Column yang efisien digunakan saat jumlah elemen banyak dan perlu ditampilkan dalam daftar panjang.

Dalam aplikasi Football Shop, ketiga widget tersebut dimanfaatkan pada halaman checkout. Halaman tersebut menampilkan form yang berisi kolom isian seperti nama lengkap, alamat pengiriman, dan nomor telepon. Kombinasi antara SingleChildScrollView dan Padding memastikan form dapat digulir dan tetap memiliki jarak yang proporsional, sementara ListView dapat digunakan jika daftar input atau item yang ditampilkan bersifat dinamis. Dengan penggunaan layout ini, tampilan form menjadi lebih responsif, mudah digunakan, dan enak dilihat pada berbagai ukuran layar.

4. Penyesuaian warna tema merupakan aspek penting dalam membangun identitas visual aplikasi agar tampil profesional dan mencerminkan karakter brand. Dalam Flutter, tema dapat diatur menggunakan ThemeData di dalam widget MaterialApp. Melalui pengaturan ini, pengembang dapat menentukan warna utama (primary color), warna latar, gaya tombol, serta warna teks agar konsisten di seluruh aplikasi.

Pada aplikasi Football Shop, pemilihan warna didasarkan pada elemen yang identik dengan dunia sepak bola. Warna hijau tua digunakan sebagai warna utama untuk melambangkan lapangan sepak bola, sedangkan warna putih digunakan sebagai warna pendukung yang memberikan kesan bersih dan modern, seperti warna gawang dan seragam pemain. Kombinasi warna tersebut diterapkan pada berbagai komponen seperti AppBar, tombol, dan latar belakang. Dengan tema warna yang konsisten, aplikasi Football Shop tidak hanya terlihat menarik, tetapi juga membangun identitas visual yang kuat dan mudah dikenali oleh pengguna.
