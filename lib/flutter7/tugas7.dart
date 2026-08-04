import 'package:flutter/material.dart';
import 'package:ppkd_b7/flutter7/input.dart';

class Tugas7Page extends StatelessWidget {
  const Tugas7Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas Flutter 7'),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue.shade50, Colors.white],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Tugas Flutter 7',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Latihan membuat input interaktif, navigasi detail, dan pilihan data seperti syarat, mode, kategori, tanggal, dan pengingat.',
                      ),
                      const SizedBox(height: 12),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: const [
                          Chip(label: Text('Stateful')),
                          Chip(label: Text('Navigator')),
                          Chip(label: Text('Form Input')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Menu Tugas',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Input(section: 'terms'),
              const SizedBox(height: 12),
              const Input(section: 'mode'),
              const SizedBox(height: 12),
              const Input(section: 'category'),
              const SizedBox(height: 12),
              const Input(section: 'date'),
              const SizedBox(height: 12),
              const Input(section: 'reminder'),
            ],
          ),
        ),
      ),
    );
  }
}
