import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ppkd_b7/tugas11/login.dart';
import 'package:ppkd_b7/tugas11/preference_handler1.dart';

class HomeTugas10 extends StatelessWidget {
  const HomeTugas10({super.key, required this.nama, required this.kota});

  final String nama;
  final String kota;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hasil Pendaftaran",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

        // Tombol Logout
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.red.shade200),
              ),
              child: TextButton.icon(
                onPressed: () async {
                  await PreferenceHandler.setLogin(false);

                  if (!context.mounted) return;

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginTrasToCash(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.logout_rounded,
                  color: Colors.red,
                  size: 19,
                ),
                label: const Text(
                  "Logout",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  minimumSize: Size.zero,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

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
