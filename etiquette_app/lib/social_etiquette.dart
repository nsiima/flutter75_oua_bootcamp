import 'package:flutter/material.dart';

class SocialEtiquettePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sosyal Ortamlar - Görgü Kuralları'),
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
          buildEtiquetteItem(context, 'Genel Görgü Kuralları'),
          buildEtiquetteItem(context, 'Nazik ve Saygılı Olmak'),
          buildEtiquetteItem(context, 'Konuşma Adabı'),
          buildEtiquetteItem(context, 'Kişisel Alan'),
          buildEtiquetteItem(context, 'Davetlere Zamanında Gitmek'),
          buildEtiquetteItem(context, 'Selamlaşma'),
          buildEtiquetteItem(context, 'Konukseverlik'),
          buildEtiquetteItem(context, 'Sohbet'),
          buildEtiquetteItem(context, 'Kamu Alanlarında Gürültü'),
          buildEtiquetteItem(context, 'Kamu Alanlarında Temizlik'),
          buildEtiquetteItem(context, 'Kamu Alanlarında Kuyruk Adabı'),
          buildEtiquetteItem(context, 'Taşıma Araçlarında Yer Verme'),
          buildEtiquetteItem(context, 'Taşıma Araçlarında Gürültü Yapmama'),
          buildEtiquetteItem(context, 'Taşıma Araçlarında Sıra Bekleme'),
          buildEtiquetteItem(context, 'Empati'),
          buildEtiquetteItem(context, 'Yardımseverlik'),
          buildEtiquetteItem(context, 'Güvenilirlik'),
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
