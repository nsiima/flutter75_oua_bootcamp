// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use

import 'package:etiquette_app/business_etiquette.dart';
import 'package:etiquette_app/clothes_etiquette.dart';
import 'package:etiquette_app/food_etiquette.dart';
import 'package:etiquette_app/social_etiquette.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyEtiquetteApp());
}

class MyEtiquetteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Görgü Kuralları',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final LinearGradient categoryGradient = const LinearGradient(
    colors: [
      Color(0xFF8C6B6C),
      Color(0xFFE7BAA6),
      Color(0xFFE9A27C),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
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
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Merhaba!',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Color.fromARGB(171, 209, 204, 204),
                        ),
                        Shadow(
                          offset: Offset(-2.0, 2.0),
                          blurRadius: 3.0,
                          color: Color.fromARGB(150, 163, 163, 163),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          buildCategoryItem(
            context,
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Sosyal Ortamlar - Genel Görgü Kuralları',
            description: 'Toplumsal İlişkilerde Davranış Kuralları',
            backgroundColor: categoryGradient,
            page: SocialEtiquettePage(),
          ),
          const SizedBox(height: 16.0),
          buildCategoryItem(
            context,
            imageUrl: 'https://via.placeholder.com/150',
            title: 'İş Etiği',
            description: 'İş Ortamında Davranış ve Etik Kuralları',
            backgroundColor: categoryGradient,
            page: BusinessEtiquettePage(),
          ),
          const SizedBox(height: 16.0),
          buildCategoryItem(
            context,
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Yeme - İçme Kuralları',
            description: 'İnternet ve Dijital Ortam Etik Kuralları',
            backgroundColor: categoryGradient,
            page: FoodEtiquettePage(),
          ),
          const SizedBox(height: 16.0),
          buildCategoryItem(
            context,
            imageUrl: 'https://via.placeholder.com/150',
            title: 'Giyim Kuralları',
            description: 'Farklı Ortamlarda Giyim Etiketi',
            backgroundColor: categoryGradient,
            page: ClothesEtiquettePage(),
          ),
        ],
      ),
    );
  }

  Widget buildCategoryItem(BuildContext context,
      {required String imageUrl,
      required String title,
      required String description,
      required LinearGradient backgroundColor,
      required Widget page}) {
    //nurg
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
        // Kategoriye tıklandığında yapılacak işlemler buraya yazılabilir
        // Örneğin, ilgili kategori sayfasına yönlendirme gibi.
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: backgroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.network(
                  imageUrl,
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge
                          ?.copyWith(color: Colors.white),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      description,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white70),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
