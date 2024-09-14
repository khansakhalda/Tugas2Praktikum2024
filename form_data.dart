import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade200, Colors.teal.shade400],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            _textboxNama(),
            const SizedBox(height: 10),
            _textboxNIM(),
            const SizedBox(height: 10),
            _textboxTahun(),
            const SizedBox(height: 20),
            _tombolSimpan(),
          ],
        ),
      ),
    );
  }

  Widget _textboxNama() {
    return TextField(
      cursorColor: Colors.teal, // Warna kursor
      decoration: const InputDecoration(
        labelText: "Nama",
        labelStyle: TextStyle(color: Colors.teal), // Warna label sebelum fokus
        floatingLabelStyle: TextStyle(
            color: Colors.teal), // Warna label saat floating (saat fokus)
        border: OutlineInputBorder(),
        prefixIcon:
            Icon(Icons.person, color: Colors.teal), // Ikon berwarna teal
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.teal), // Warna hijau teal saat tidak fokus
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.teal, width: 2.0), // Warna hijau teal saat fokus
        ),
      ),
      controller: _namaController,
    );
  }

  Widget _textboxNIM() {
    return TextField(
      cursorColor: Colors.teal, // Warna kursor
      decoration: const InputDecoration(
        labelText: "NIM",
        labelStyle: TextStyle(color: Colors.teal), // Warna label sebelum fokus
        floatingLabelStyle: TextStyle(
            color: Colors.teal), // Warna label saat floating (saat fokus)
        border: OutlineInputBorder(),
        prefixIcon:
            Icon(Icons.perm_identity, color: Colors.teal), // Ikon berwarna teal
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.teal), // Warna hijau teal saat tidak fokus
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.teal, width: 2.0), // Warna hijau teal saat fokus
        ),
      ),
      controller: _nimController,
    );
  }

  Widget _textboxTahun() {
    return TextField(
      cursorColor: Colors.teal, // Warna kursor
      decoration: const InputDecoration(
        labelText: "Tahun Lahir",
        labelStyle: TextStyle(color: Colors.teal), // Warna label sebelum fokus
        floatingLabelStyle: TextStyle(
            color: Colors.teal), // Warna label saat floating (saat fokus)
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.calendar_today,
            color: Colors.teal), // Ikon berwarna teal
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.teal), // Warna hijau teal saat tidak fokus
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.teal, width: 2.0), // Warna hijau teal saat fokus
        ),
      ),
      keyboardType: TextInputType.number,
      controller: _tahunController,
    );
  }

  Widget _tombolSimpan() {
    return ElevatedButton.icon(
      onPressed: () {
        String nama = _namaController.text;
        String nim = _nimController.text;
        int tahun = int.parse(_tahunController.text);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                TampilData(nama: nama, nim: nim, tahun: tahun)));
      },
      icon: const Icon(Icons.save),
      label: const Text('Simpan'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.teal.shade700, // Warna tombol simpan
        foregroundColor: Colors.white, // Warna teks tombol simpan
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        textStyle: const TextStyle(fontSize: 16),
      ),
    );
  }
}
