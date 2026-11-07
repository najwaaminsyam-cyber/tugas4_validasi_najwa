import 'package:flutter_test/flutter_test.dart';
import 'package:tugas4_validasi_najwa/main.dart';

void main() {
  testWidgets('Dashboard dan halaman Tambah Mahasiswa',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Pastikan Dashboard terbuka
    expect(find.text('Dashboard Akademik'), findsOneWidget);

    // Tekan tombol Tambah
    await tester.tap(find.text('Tambah'));
    await tester.pumpAndSettle();

    // Pastikan halaman form terbuka
    expect(find.text('Tambah Mahasiswa'), findsOneWidget);
    expect(find.text('Nama lengkap'), findsOneWidget);
    expect(find.text('NIM'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Semester'), findsOneWidget);
  });
}
