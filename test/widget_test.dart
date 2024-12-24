import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:grand_renggali/screens/home_screen.dart';
import 'package:grand_renggali/screens/booking_screen.dart';
import 'package:grand_renggali/screens/contact_screen.dart';

void main() {
  testWidgets('HomeScreen loads correctly', (WidgetTester tester) async {
    // Memuat widget HomeScreen
    await tester.pumpWidget(MaterialApp(home: HomeScreen()));

    // Memeriksa apakah judul ditampilkan
    expect(find.text('Kyriad Muraya Hotel'), findsOneWidget);

    // Memeriksa apakah tombol ditampilkan
    expect(find.text('Pesan Kamar'), findsOneWidget);
    expect(find.text('Hubungi Kami'), findsOneWidget);

    // Memeriksa apakah gambar ditampilkan
    expect(find.byType(Image), findsOneWidget);
  });

  testWidgets('BookingScreen displays room types', (WidgetTester tester) async {
    // Memuat widget BookingScreen
    await tester.pumpWidget(MaterialApp(home: BookingScreen()));

    // Memeriksa apakah tipe kamar ditampilkan
    expect(find.text('Pilih Kamar'), findsOneWidget);
    expect(find.text('Standar'), findsOneWidget);
    expect(find.text('Deluxe'), findsOneWidget);
    expect(find.text('Suite'), findsOneWidget);

    // Memeriksa apakah tombol konfirmasi ditampilkan
    expect(find.text('Konfirmasi Pemesanan'), findsOneWidget);
  });

  testWidgets('ContactScreen displays contact info', (WidgetTester tester) async {
    // Memuat widget ContactScreen
    await tester.pumpWidget(MaterialApp(home: ContactScreen()));

    // Memeriksa apakah informasi kontak ditampilkan
    expect(find.text('Informasi Kontak'), findsOneWidget);
    expect(find.text('Alamat: Danau, Kabupaten Aceh Tengah, Aceh 24519'), findsOneWidget);
    expect(find.text('Telepon: (0651) 123456'), findsOneWidget);

    // Memeriksa apakah form input ditampilkan
    expect(find.byType(TextField), findsNWidgets(2)); // Nama dan Pesan

    // Memeriksa apakah tombol kirim ditampilkan
    expect(find.text('Kirim'), findsOneWidget);
  });
}
