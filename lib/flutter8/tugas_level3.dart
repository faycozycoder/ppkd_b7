import 'package:flutter/material.dart';

class ListtData3 extends StatelessWidget {
  const ListtData3({super.key});

  List<Map<String, dynamic>> get kategoriModel => [
    {
      'nama': 'RITZ',
      'gambar': 'assets/image/gambar1.jpeg',
      'deskripsi':
          'Biskuit crackers renyah dengan rasa gurih yang cocok dinikmati sebagai camilan.',
    },
    {
      'nama': 'Topoki Snack',
      'gambar': 'assets/image/gambar2.jpeg',
      'deskripsi':
          'Camilan khas Korea dengan tekstur kenyal dan cita rasa yang lezat.',
    },
    {
      'nama': 'Popcorn',
      'gambar': 'assets/image/gambar3.jpeg',
      'deskripsi':
          'Camilan jagung yang renyah dan cocok dinikmati saat santai atau menonton film.',
    },
    {
      'nama': 'Mie Kremez',
      'gambar': 'assets/image/gambar4.jpeg',
      'deskripsi':
          'Camilan mie kering yang renyah dengan rasa gurih dan bumbu yang nikmat.',
    },
    {
      'nama': 'Chitato',
      'gambar': 'assets/image/gambar5.jpeg',
      'deskripsi':
          'Keripik kentang bergelombang dengan tekstur renyah dan rasa yang gurih.',
    },
    {
      'nama': 'Topoki',
      'gambar': 'assets/image/gambar6.jpeg',
      'deskripsi':
          'Camilan dengan cita rasa khas Korea yang lezat dan menggugah selera.',
    },
    {
      'nama': 'Momogi',
      'gambar': 'assets/image/gambar7.jpeg',
      'deskripsi':
          'Camilan berbentuk stik dengan tekstur renyah dan rasa gurih yang nikmat.',
    },
    {
      'nama': 'Chiki',
      'gambar': 'assets/image/gambar8.jpeg',
      'deskripsi':
          'Camilan ringan berbentuk kecil dengan tekstur renyah dan rasa gurih.',
    },
    {
      'nama': 'Syangkuy',
      'gambar': 'assets/image/gambar9.jpeg',
      'deskripsi':
          'Camilan dengan rasa unik dan tekstur renyah yang cocok untuk menemani waktu santai.',
    },
    {
      'nama': 'Banana Snack',
      'gambar': 'assets/image/gambar10.jpeg',
      'deskripsi':
          'Camilan berbahan dasar pisang dengan rasa manis dan tekstur yang renyah.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(height: 8);
        },
        itemCount: kategoriModel.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            tileColor: index % 2 == 0 ? Colors.red[200] : Colors.grey[200],
            title: Text(kategoriModel[index]["nama"]),
            subtitle: Text(kategoriModel[index]["deskripsi"]),
            trailing: SizedBox(
              width: 56,
              height: 56,
              child: Image.asset(
                kategoriModel[index]["gambar"],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
