import 'package:flutter/material.dart';

class ClothesEtiquettePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giyim Kuralları'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 233, 162, 124),
                Color.fromARGB(255, 231, 186, 166),
                Color.fromARGB(255, 140, 203, 188),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildEtiquetteItem(context, 'İş Görüşmesi veya Resmi Toplantı'),
          buildEtiquetteItem(context, 'Düğün ve Nişan'),
          buildEtiquetteItem(context, 'Cenaze'),
          buildEtiquetteItem(context, 'Yaz Tatili / Plaj'),
          buildEtiquetteItem(context, 'Spor Etkinliği / Piknik'),
          buildEtiquetteItem(context, 'Okul Ortamı'),
          buildEtiquetteItem(context, 'Aile Ziyareti / Bayram'),
        ],
      ),
    );
  }

  Widget buildEtiquetteItem(BuildContext context, String title) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Text(title),
        onTap: () {
          // Detay sayfasına yönlendirme
        },
      ),
    );
  }
}
