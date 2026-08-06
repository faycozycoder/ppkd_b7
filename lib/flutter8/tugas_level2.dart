import 'package:flutter/material.dart';
import 'package:ppkd_b7/flutter8/models/makanan_model.dart';

class ListDataLevel2 extends StatelessWidget {
  const ListDataLevel2({super.key});

  final List<KategoriModel> kategori = const [
    KategoriModel(nama: 'RITZ', icon: Icons.cookie),
    KategoriModel(nama: 'Topoki Snack', icon: Icons.restaurant),
    KategoriModel(nama: 'Popcorn', icon: Icons.fastfood),
    KategoriModel(nama: 'Mie Kremez', icon: Icons.ramen_dining),
    KategoriModel(nama: 'Chitato', icon: Icons.local_dining),
    KategoriModel(nama: 'Topoki', icon: Icons.restaurant),
    KategoriModel(nama: 'Momogi', icon: Icons.cookie),
    KategoriModel(nama: 'Chiki', icon: Icons.fastfood),
    KategoriModel(nama: 'Syangkuy', icon: Icons.local_dining),
    KategoriModel(nama: 'Banana Snack', icon: Icons.fastfood),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: kategori.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(kategori[index].icon),
            title: Text(kategori[index].nama),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
