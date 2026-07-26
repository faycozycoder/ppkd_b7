import 'package:flutter/material.dart';

class Flutter4 extends StatelessWidget {
  const Flutter4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Laporan & Riyawat Udara",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Center(
            child: Text(
              "Laporan Kondisi Udara",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 30),

          TextField(
            decoration: InputDecoration(
              hintText: "Titik Lokasi (Nama Jalan/Gedung)",
              prefixIcon: Icon(Icons.map),
              fillColor: Colors.grey.shade100,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          SizedBox(height: 15),

          TextField(
            decoration: InputDecoration(
              hintText: "Skor AQI Teramati",
              prefixIcon: Icon(Icons.air),
              fillColor: Colors.grey.shade100,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          SizedBox(height: 15),

          TextField(
            decoration: InputDecoration(
              hintText: "Nama Pelapor",
              prefixIcon: Icon(Icons.person),
              fillColor: Colors.grey.shade100,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          SizedBox(height: 15),

          TextField(
            decoration: InputDecoration(
              hintText: "Catatan Tambahan",
              prefixIcon: Icon(Icons.notes),
              fillColor: Colors.grey.shade100,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),

          SizedBox(height: 15),

          Divider(color: Colors.grey, thickness: 1),
          SizedBox(height: 10),

          Text(
            "Riyawat Laporan Terakhir",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 15),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.warning, color: Colors.white),
            ),
            title: Text(
              "Jakarta Pusat",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("AQI: 156 - Tidak Sehat.\nDilaporkan 5 menit lalu."),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(Icons.cloud, color: Colors.white),
            ),
            title: Text(
              "Bandung Kota",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("AQI: 95 - Sedang. \nDilaporkan 3 menit lalu."),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.check_circle, color: Colors.white),
            ),
            title: Text(
              "Yogyakarta",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("AQI: 42 - Baik. \nDilaporkan 1 hari lalu."),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.masks, color: Colors.white),
            ),
            title: Text(
              "Semarang",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text("AQI: 120 - Sensitif. \nDilaporkan 1 hari lalu."),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
