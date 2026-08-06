import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeTugas10 extends StatelessWidget {
  const HomeTugas10({super.key, required this.nama, required this.kota});

  final String nama;
  final String kota;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hasil Pendaftaran")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/animation/Success.json", height: 180),

            const SizedBox(height: 20),

            const Text(
              "Pendaftaran Berhasil!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 20),

            Text(
              "Terima kasih, $nama",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text(
              "dari $kota telah mendaftar.",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
