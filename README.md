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

