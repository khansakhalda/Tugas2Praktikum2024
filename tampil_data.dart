import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final int tahun;

  const TampilData({
    Key? key,
    required this.nama,
    required this.nim,
    required this.tahun,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int umur = DateTime.now().year - tahun;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkenalan"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        width: double.infinity, // Memastikan container mengisi lebar penuh
        height: double.infinity, // Memastikan container mengisi tinggi penuh
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade100, Colors.teal.shade300],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          // Untuk mengatasi overflow saat layar lebih kecil
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading:
                        const Icon(Icons.person, size: 50, color: Colors.teal),
                    title: const Text(
                      'Nama',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(nama),
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.perm_identity,
                        size: 50, color: Colors.teal),
                    title: const Text(
                      'NIM',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(nim),
                  ),
                  const Divider(),
                  ListTile(
                    leading:
                        const Icon(Icons.cake, size: 50, color: Colors.teal),
                    title: const Text(
                      'Umur',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('$umur tahun'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
