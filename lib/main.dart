import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, String>> data = [
    {"nama": "Nanda Kharima", "hobi": "Membaca", "foto": "nanda.jpeg"},
    {
      "nama": "Safitri Dunn",
      "hobi": "Bermain musik",
      "foto": "assets/safitri.jpg"
    },
    {"nama": "Alice Citra", "hobi": "Memasak", "foto": "assets/alice.jpg"},
    // Tambahkan data lainnya sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hello',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return CardWidget(
              nama: data[index]['nama']!,
              hobi: data[index]['hobi']!,
              foto: data[index]['foto']!,
            );
          },
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String nama;
  final String hobi;
  final String foto;

  const CardWidget({
    required this.nama,
    required this.hobi,
    required this.foto,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(nama),
        subtitle: Text(hobi),
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(foto),
            ),
          ),
          child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
