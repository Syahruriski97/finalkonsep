import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hubungi Kami'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Informasi Kontak',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Alamat: Danau, Kabupaten Aceh Tengah, Aceh 24519'),
            const Text('Telepon: (0651) 123456'),
            const Text('Email: info@renggalihotel'),
            const SizedBox(height: 20),
            const Text(
              'Kirim Pesan',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Pesan'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Pesan berhasil dikirim!')),
                );
              },
              child: const Text('Kirim'),
            ),
          ],
        ),
      ),
    );
  }
}