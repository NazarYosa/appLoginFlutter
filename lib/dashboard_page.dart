import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  TextEditingController namaController = TextEditingController();
  TextEditingController hubunganController = TextEditingController();
  TextEditingController nomorKontakController = TextEditingController();
  List<Map<String, String>> dataFromDatabase = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextFormField(
              controller: hubunganController,
              decoration: InputDecoration(labelText: 'Hubungan dengan Anda'),
            ),
            TextFormField(
              controller: nomorKontakController,
              decoration: InputDecoration(labelText: 'Nomor Kontak'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                String nama = namaController.text;
                String hubungan = hubunganController.text;
                String nomorKontak = nomorKontakController.text;

                dataFromDatabase.add({
                  'Nama': nama,
                  'Hubungan': hubungan,
                  'Nomor Kontak': nomorKontak,
                });

                namaController.clear();
                hubunganController.clear();
                nomorKontakController.clear();

                setState(() {});
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 16),
            Text(
              'Data dari Database:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: dataFromDatabase.length,
                itemBuilder: (context, index) {
                  Map<String, String> data = dataFromDatabase[index];
                  return ListTile(
                    title: Text('Nama: ${data['Nama']}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hubungan: ${data['Hubungan']}'),
                        Text('Nomor Kontak: ${data['Nomor Kontak']}'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
