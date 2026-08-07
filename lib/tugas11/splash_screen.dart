import 'package:flutter/material.dart';
import 'package:ppkd_b7/flutter10/home_pendaftaran.dart';
import 'package:ppkd_b7/tugas11/login.dart';
import 'package:ppkd_b7/tugas11/preference_handler1.dart';

class SplasScreenTugas11 extends StatefulWidget {
  const SplasScreenTugas11({super.key});

  @override
  State<SplasScreenTugas11> createState() => _SplasScreenTugas11State();
}

class _SplasScreenTugas11State extends State<SplasScreenTugas11> {
  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    await Future.delayed(const Duration(seconds: 4));

    // if (!mounted) return;

    if (PreferenceHandler.isLogin == true) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const HomeTugas10(nama: "User", kota: "Jakarta"),
        ),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginTrasToCash()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1F1E),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: const Color(0xFFEAF7F2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                  color: const Color(0xFF00854A),
                  borderRadius: BorderRadius.circular(26),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.15),
                      blurRadius: 12,
                      offset: const Offset(0, 6),
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(Icons.recycling, color: Colors.white, size: 56),
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                "TrashToCash",
                style: TextStyle(
                  color: Color(0xFF007A43),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Ubah sampah Anda menjadi saldo digital\n"
                "dengan satu ketukan.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF3F514B),
                  fontSize: 15,
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 35),

              const SizedBox(
                width: 28,
                height: 28,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: Color(0xFF00854A),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
