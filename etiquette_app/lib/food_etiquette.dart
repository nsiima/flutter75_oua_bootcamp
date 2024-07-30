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
          buildEtiquetteItem(
            context,
            'Çorba İçme',
            'Çorba kaşığını çorbanın kenarına sıyırmalıdır. Çorba bittikten sonra çorba kasesinin yanına kaşık konulmalıdır.',
            'assets/yemeicme1.jpg',
          ),
          buildEtiquetteItem(
            context,
            'Çay Kaşığı Kullanımı',
            'Çay karıştırıldıktan sonra çay kaşığı çay bardağının yanına saat 2 yönünde olacak şekilde çapraz konumlandırılmalıdır.',
            'assets/yemeicme2.jpg',
          ),
          buildEtiquetteItem(
            context,
            'Sofrada Hapşırma',
            'Sofraya karşı ne elinizi tutarak ne de sofra bezini tutarak hapşurulmamalıdır. Sofraya 90° verip insanın olmadığı yöne hapşırılmalıdır.',
            'assets/yemeicme3.jpg',
          ),
          buildEtiquetteItem(
            context,
            'Garson Servis Toplanmasına Yapılması Gereken',
            'Garsona en büyük yardım işine karışmamaktır.',
            'assets/yemeicme4.jpg',
          ),
          buildEtiquetteItem(
            context,
            'Karşındaki Kişinin Yemeğini Alma',
            'Karşındaki kişinin yemeğini yemeyi arzuluyorsanız garsondan temiz tabak talep edip, karşınızdaki kişi gelen boş tabağa kendi yemeğinden bir parça koyduktan sonra size uzatmalıdır.',
            'assets/yemeicme5.png',
          ),
          buildEtiquetteItem(
            context,
            'Sofrada El Konumlandırma',
            'Eğer masaya ellerinizi koymak istiyorsanız bileğinize kadar masaya koymalısınız.',
            'assets/yemeicme6.png',
          ),
          buildEtiquetteItem(
            context,
            'Hatalı Bıçak Kullanımı',
            'Bıçak yalanmamalıdır. Çatala destek olarak kullanılmalıdır.',
            'assets/yemeicme7.png',
          ),
          buildEtiquetteItem(
            context,
            'Sofrada Bez Kullanımı',
            'Sofrada bez kullanım maksatı bardaktan herhangi bir şey içtikten sonra bardağı kirletmemektir. Bardağın kirlenmesini engellemek için dizlerin üstüne serilmiş olan bezle dudaklara pon ponlama yapılır. Dudak etrafı silinmez.',
            'assets/yemeicme8.jpg',
          ),
        ],
      ),
    );
  }

  Widget buildEtiquetteItem(
      BuildContext context, String title, String description, String imagePath) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        title: Text(title),
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(imagePath),
                      const SizedBox(height: 16),
                      Text(description),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Kapat'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}