import 'package:flutter/material.dart';

void main () {
  runApp(const BiodataApp());
}
class BiodataApp extends StatelessWidget {
  const BiodataApp ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
    title: 'Biodata',
        debugShowCheckedModeBanner : false,
    theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    useMaterial3: true,
    ),
    home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
 const BiodataPage ({super.key});

  @override
Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Biodata diri'),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 24),
              color: Colors.white,
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/foto.jpeg'),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Adam Surya Budiansyah',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    'Mahasiswa',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(16),
              child: Card(
                elevation: 3,
                child: Column(
                  children: [
                    BiodataItem(
                      icon: Icons.person,
                      label: 'Nama',
                      value: 'Adam Surya Budiansyah',
                    ),
                    Divider(height: 1),
                    BiodataItem(
                      icon: Icons.cake,
                      label: 'Tempat, Tanggal Lahir',
                      value: 'Jakarta, 22 Januari 2000',
                    ),
                    Divider(height: 1),
                    BiodataItem(
                      icon: Icons.wc,
                      label: 'Kelamin',
                      value: 'Laki-Laki',
                    ),
                    Divider(height: 1),
                    BiodataItem(
                      icon: Icons.home,
                      label: 'Alamat',
                      value: 'Mutiara Gading city cluster palermo 1 Blok: D12/20',
                    ),
                    Divider(height: 1),
                    BiodataItem(
                      icon: Icons.phone,
                      label: 'phone',
                      value: '0896-3172-8199',
                    ),
                    Divider(height: 1),
                    BiodataItem(
                      icon: Icons.email,
                      label: 'Email',
                      value: 'Adamsurya555@student.essaunggul.ac.id',
                    ),
                    Divider(height: 1),
                    BiodataItem(
                      icon: Icons.work,
                      label: 'Pekerjaan',
                      value: 'Store keeper',
                    ),
                    Divider(height: 1),
                    BiodataItem(
                      icon: Icons.school,
                      label: 'Pendidikan',
                      value: 'Universitas Esa Unggul Bekasi',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Widget terpisah agar kode tidak berulang
class BiodataItem extends StatelessWidget {
  final IconData icon;
  final String  label;
  final String value;

  const BiodataItem ({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
});

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: Icon(icon, color: Colors.greenAccent),
      title: Text(
        label,
        style: const TextStyle(fontSize: 12, color: Colors.grey),
      ),
      subtitle: Text (
        value,
        style: TextStyle(fontSize: 16, color: Colors.black87),
      ),
    );
  }
}



