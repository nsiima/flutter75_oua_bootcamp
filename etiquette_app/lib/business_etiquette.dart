import 'package:flutter/material.dart';

class BusinessEtiquettePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('İş Etiği'),
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
          buildEtiquetteItem(context, 'İş Ortamları'),
          buildEtiquetteItem(context, 'Toplantılar ve Görüşmeler'),
          buildEtiquetteItem(context, 'Doğru ve Saygılı Hitap Kullanımı'),
          buildEtiquetteItem(context, 'Giriş Cümlesi'),
          buildEtiquetteItem(context, 'Yanıt Süresi'),
          buildEtiquetteItem(context, 'Yanıt İçeriği'),
          buildEtiquetteItem(context, 'Gecikme Durumunda Bilgilendirme'),
          buildEtiquetteItem(context, 'Konuşma Sırası'),
          buildEtiquetteItem(context, 'E-postada Emoji Kullanımı'),
          buildEtiquetteItem(context, 'Yanıt Verme Süresi'),
          buildEtiquetteItem(context, 'Kamera Kullanımı'),
          buildEtiquetteItem(context, 'Arka Plan'),
          buildEtiquetteItem(context, 'Yanlış Kişiye E-posta Gönderme'),
          buildEtiquetteItem(context, 'Yemek Yerken Video Konferans'),
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
