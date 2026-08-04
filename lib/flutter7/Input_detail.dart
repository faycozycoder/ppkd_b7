import 'package:flutter/material.dart';
import 'package:ppkd_b7/flutter7/input.dart';

class InputDetailPage extends StatefulWidget {
  const InputDetailPage({
    super.key,
    required this.section,
    this.initialDarkMode = false,
  });

  final String section;
  final bool initialDarkMode;

  @override
  State<InputDetailPage> createState() => InputDetailPageState();
}

class InputDetailPageState extends State<InputDetailPage> {
  bool _isCheck = false;
  bool _isOn = false;
  String? selected;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  void initState() {
    super.initState();
    _isOn = widget.initialDarkMode;
  }

  String get _pageTitle => titleFor(widget.section);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pageTitle)),
      body: Container(
        width: double.infinity,
        color: _isOn ? Colors.grey[900] : Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: _buildSectionContent(context),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionContent(BuildContext context) {
    switch (widget.section) {
      case 'terms':
        return _termsContent();
      case 'mode':
        return _modeContent();
      case 'category':
        return _categoryContent();
      case 'date':
        return _dateContent();
      case 'reminder':
      default:
        return _reminderContent();
    }
  }

  @override
  String toStringShort() => 'InputDetailPage(${widget.section})';

  Widget _termsContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Dengan menyetujui syarat ini, Anda setuju untuk menggunakan fitur ini dengan baik dan bertanggung jawab.',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 16),
        CheckboxListTile(
          title: const Text('Saya menyetujui persyaratan'),
          value: _isCheck,
          onChanged: (value) {
            setState(() {
              _isCheck = value ?? false;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali'),
        ),
      ],
    );
  }

  Widget _modeContent() {
    return Column(
      children: [
        SwitchListTile(
          title: const Text('Aktifkan Mode Gelap'),
          value: _isOn,
          onChanged: (value) {
            setState(() {
              _isOn = value;
            });
          },
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali'),
        ),
      ],
    );
  }

  Widget _categoryContent() {
    return Column(
      children: [
        DropdownButton<String>(
          value: selected,
          hint: const Text('Pilih Kategori'),
          items: ['Elektronik', 'Pakaian', 'Makanan', 'Lainnya'].map((val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),
          onChanged: (value) {
            setState(() {
              selected = value;
            });
          },
        ),
        const SizedBox(height: 12),
        Text(
          selected == null
              ? 'Anda belum memilih kategori'
              : 'Anda memilih kategori: $selected',
          style: TextStyle(color: _isOn ? Colors.white : Colors.black),
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali'),
        ),
      ],
    );
  }

  Widget _dateContent() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              firstDate: DateTime(2021),
              lastDate: DateTime.now(),
              initialDate: DateTime.now(),
            );

            if (picked != null) {
              setState(() {
                _selectedDate = picked;
              });
            }
          },
          child: const Text('Pilih Tanggal'),
        ),
        const SizedBox(height: 12),
        Text(
          _selectedDate == null
              ? 'Anda belum memilih tanggal'
              : 'Tanggal dipilih: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
          style: TextStyle(color: _isOn ? Colors.white : Colors.black),
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali'),
        ),
      ],
    );
  }

  Widget _reminderContent() {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () async {
            final TimeOfDay? picked = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );

            if (picked != null) {
              setState(() {
                _selectedTime = picked;
              });
            }
          },
          child: const Text('Atur Pengingat'),
        ),
        const SizedBox(height: 12),
        Text(
          _selectedTime == null
              ? 'Anda belum mengatur pengingat'
              : 'Pengingat diatur pukul: ${_selectedTime!.hour.toString().padLeft(2, '0')}:${_selectedTime!.minute.toString().padLeft(2, '0')}',
          style: TextStyle(color: _isOn ? Colors.white : Colors.black),
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali'),
        ),
      ],
    );
  }
}
