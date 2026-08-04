import 'package:flutter/material.dart';

import 'Input_detail.dart';

const Map<String, String> _titles = {
  'terms': 'Syarat & Ketentuan',
  'mode': 'Mode Tampilan',
  'category': 'Kategori Produk',
  'date': 'Pilih Tanggal',
  'reminder': 'Atur Pengingat',
};

const Map<String, String> _descriptions = {
  'terms':
      'Buka halaman syarat dan ketentuan sebelum menyetujui akses fitur ini.',
  'mode': 'Ubah tampilan aplikasi dengan mode gelap yang lebih nyaman.',
  'category': 'Pilih kategori produk sesuai kebutuhan anda.',
  'date': 'Pilih tanggal yang ingin dijadikan acuan aktivitas.',
  'reminder': 'Tentukan waktu pengingat untuk aktivitas anda.',
};

const Map<String, IconData> _icons = {
  'terms': Icons.rule_folder,
  'mode': Icons.dark_mode,
  'category': Icons.category,
  'date': Icons.calendar_month,
  'reminder': Icons.access_time,
};

const Map<String, String> _buttonLabels = {
  'terms': 'Buka Syarat & Ketentuan',
  'mode': 'Buka Pengaturan Tampilan',
  'category': 'Pilih Kategori',
  'date': 'Pilih Tanggal',
  'reminder': 'Atur Pengingat',
};

String titleFor(String section) => _titles[section] ?? _titles['reminder']!;
String _descriptionFor(String section) =>
    _descriptions[section] ?? _descriptions['reminder']!;
IconData _iconFor(String section) => _icons[section] ?? _icons['reminder']!;
String _buttonLabelFor(String section) =>
    _buttonLabels[section] ?? _buttonLabels['reminder']!;

class Input extends StatefulWidget {
  const Input({super.key, required this.section});

  final String section;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final bool _isOn = false;
  String get _title => titleFor(widget.section);
  String get _description => _descriptionFor(widget.section);
  IconData get _icon => _iconFor(widget.section);
  String get _buttonLabel => _buttonLabelFor(widget.section);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: _isOn ? Colors.grey[900] : Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(_icon, size: 42, color: Colors.blue),
                  const SizedBox(height: 12),
                  Text(
                    _title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _description,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _isOn ? Colors.white : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => InputDetailPage(
                            section: widget.section,
                            initialDarkMode: _isOn,
                          ),
                        ),
                      );
                    },
                    icon: const Icon(Icons.open_in_new),
                    label: Text(_buttonLabel),
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
