import 'package:flutter/material.dart';
import 'package:liverfoot_shop/screens/menu.dart';
import 'package:liverfoot_shop/screens/productlist_form.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
            // TODO: Bagian drawer header
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            children: [
              Text(
                'Liverfoot Shop',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Text("Seluruh produk Seputar Sepak Bola",
                  // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  )),
                  
            ],
          ),
        ),
          
          // TODO: Bagian routing
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              // Bagian redirection ke MyHomePage
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(
                        colorScheme: Theme.of(context).colorScheme,
                      ),
                    ));
              },
            ),
            ListTile(
              leading: const Icon(Icons.post_add),
              title: const Text('Create Product'),
              // Bagian redirection ke NewsFormPage
              onTap: () {
                /*
                TODO: Buatlah routing ke NewsFormPage di sini,
                setelah halaman NewsFormPage sudah dibuat.
                */
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProductFormPage()));
              },
            ),
            // TODO: Buat ListTile baru untuk ke halaman melihat news       
        ],
      ),
    );
  }
}