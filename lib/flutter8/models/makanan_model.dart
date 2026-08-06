import 'dart:convert';

import 'package:flutter/material.dart';

class BuahModel {
  final String nama;
  final String gambar;
  final String deskripsi;

  const BuahModel({
    required this.nama,
    required this.gambar,
    required this.deskripsi,
  });

  Map<String, dynamic> toMap() {
    return {'nama': nama, 'gambar': gambar, 'deskripsi': deskripsi};
  }

  factory BuahModel.fromMap(Map<String, dynamic> map) {
    return BuahModel(
      nama: map['nama'] ?? '',
      gambar: map['gambar'] ?? '',
      deskripsi: map['deskripsi'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BuahModel.fromJson(String source) =>
      BuahModel.fromMap(json.decode(source));
}

class KategoriModel {
  final String nama;
  final IconData icon;

  const KategoriModel({required this.nama, required this.icon});
}
