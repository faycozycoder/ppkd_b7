import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class InputWidgetDay13 extends StatefulWidget {
  const InputWidgetDay13({super.key});

  @override
  State<InputWidgetDay13> createState() => _InputWidgetDay13State();
}

class _InputWidgetDay13State extends State<InputWidgetDay13> {
  bool _isCheck = false;
  bool _isOn = false;
  String? selected;
  TimeOfDay? _selectedTime;
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        checkboxWidget(),
        switchWidget(),
        dropdownWidget(),
        dataPickerWidget(context),
      ],
    );
  }

  Column dataPickerWidget(BuildContext context) {
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
          child: const Text("Pilih Tanggal"),
        ),

        Text(
          _selectedDate == null
              ? "Anda belum pilih tanggal"
              : DateFormat('EEE, dd MMM yyyy').format(_selectedDate!),
        ),

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
          child: const Text("Pilih Jam"),
        ),

        Text(
          _selectedTime == null
              ? "Anda belum pilih jam"
              : _selectedTime!.format(context),
        ),
      ],
    );
  }

  Column switchWidget() {
    return Column(
      children: [
        Column(
          children: [
            Switch(
              activeThumbColor: Colors.yellow,
              inactiveThumbColor: Colors.black,
              value: _isOn,
              onChanged: (value) {
                _isOn = value;
                setState(() {});
              },
            ),
            Text(_isOn ? "Switch is ON" : "Switch is OFF"),
          ],
        ),
      ],
    );
  }

  Column dropdownWidget() {
    return Column(
      children: [
        DropdownButton(
          value: selected,
          items: ["Merah", "Kuning", "Hijau"].map((String val) {
            return DropdownMenuItem(value: val, child: Text(val));
          }).toList(),
          onChanged: (value) {
            selected = value;
            setState(() {});
          },
        ),
        Text(selected.toString()),

        Container(
          height: 50,
          width: 50,
          color: selected == "Merah"
              ? Colors.red
              : selected == "Kuning"
              ? Colors.yellow
              : selected == "Hijau"
              ? Colors.green
              : Colors.grey,
        ),
      ],
    );
  }

  Column checkboxWidget() {
    return Column(
      children: [
        Checkbox(
          value: _isCheck,
          onChanged: (value) {
            _isCheck = value ?? false;
            setState(() {});
          },
        ),
        Text(_isCheck ? "Sudah di ceklist" : "Belum di ceklist"),
      ],
    );
  }
}
