import 'package:flutter/material.dart';

class FoodEtiquettePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yeme - İçme Kuralları'),
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
          buildEtiquetteItem(context, 'Çorba İçme'),
          buildEtiquetteItem(context, 'Çay Kaşığı Kullanımı'),
          buildEtiquetteItem(context, 'Sofrada Hapşırma'),
          buildEtiquetteItem(context, 'Garson Servis Toplanmasına Yapılması Gereken'),
          buildEtiquetteItem(context, 'Karşındaki Kişinin Yemeğini Alma'),
          buildEtiquetteItem(context, 'Sofrada El Konumlandırma'),
          buildEtiquetteItem(context, 'Hatalı Bıçak Kullanımı'),
          buildEtiquetteItem(context, 'Sofrada Bez Kullanımı'),
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
