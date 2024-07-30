import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
          buildEtiquetteItem(
            context,
            'İş Görüşmesi veya Resmi Toplantı',
            'Erkekler: Koyu renk (siyah, lacivert veya koyu gri) takım elbise, beyaz veya açık mavi gömlek, uyumlu ve sade desenli kravat, siyah veya kahverengi klasik deri ayakkabı tercih edilmelidir. Aksesuar olarak minimal bir saat ve kemer yeterlidir.',
            'Kadınlar: Diz hizasında etek veya klasik kesim pantolon, düz renkli bluzlar, şık bir ceket ve düşük topuklu klasik ayakkabı giyilmelidir. Sade takılar ve şık bir çanta ile görünüm tamamlanmalıdır.',
            'assets/giyim1.1.png',
            'assets/giyim1.2.png',
          ),
          buildEtiquetteItem(
            context,
            'Düğün ve Nişan',
            'Erkekler: Mekan ve düğünün resmi olup olmamasına göre takım elbise veya smokin, beyaz gömlek, uyumlu renkte kravat veya papyon, klasik siyah veya koyu kahverengi deri ayakkabı tercih edilmelidir. Aksesuar olarak zarif kol düğmeleri ve sade bir saat kullanılabilir.',
            'Kadınlar: Şık, diz hizasında veya uzun elbise, uyumlu topuklu ayakkabı ve zarif takılar tercih edilmelidir. Şık bir çanta ve gerektiğinde bir şal veya ceket ile görünüm tamamlanmalıdır.',
            'assets/giyim2.1.png',
            'assets/giyim2.2.png',
          ),
          buildEtiquetteItem(
            context,
            'Cenaze',
            'Erkekler: Siyah veya koyu renk takım elbise, beyaz gömlek, siyah veya koyu renk kravat, siyah klasik ayakkabı tercih edilmelidir. Minimal aksesuarlar, sade bir saat yeterlidir.',
            'Kadınlar: Siyah veya koyu renkli, sade ve diz hizasında elbise veya etek-bluz kombinasyonu, kapalı ve düşük topuklu ayakkabı tercih edilmelidir. Minimal ve sade takılar kullanılmalıdır.',
            'assets/giyim3.2.png',
            'assets/giyim3.1.png',
          ),
          buildEtiquetteItem(
            context,
            'Yaz Tatili / Plaj',
            'Erkekler: Hafif ve rahat şortlar, nefes alabilen tişört veya göğüs açık gömlek, sandalet veya plaj terliği tercih edilmelidir. Güneş gözlüğü ve şapka gibi aksesuarlar kullanılabilir.',
            'Kadınlar: Hafif ve rahat plaj elbisesi veya pareo, vücut tipine uygun mayo veya bikini, sandalet veya plaj terliği tercih edilmelidir. Güneş gözlüğü, şapka ve plaj çantası gibi aksesuarlarla görünüm tamamlanmalıdır.',
            'assets/giyim4.1.png',
            'assets/giyim4.2.png',
          ),
          buildEtiquetteItem(
            context,
            'Spor Etkinliği / Piknik',
            'Erkekler: Rahat ve hareket kolaylığı sağlayan spor şort veya eşofman, nefes alabilen tişört, spor ayakkabı tercih edilmelidir. Spor saati ve güneş gözlüğü gibi aksesuarlar kullanılabilir.',
            'Kadınlar: Rahat ve esnek spor tayt veya eşofman, nefes alabilen tişört veya spor sütyeni, spor ayakkabı tercih edilmelidir. Spor saati ve güneş gözlüğü gibi aksesuarlarla görünüm tamamlanmalıdır.',
            'assets/giyim5.1.png',
            'assets/giyim5.2.png',
          ),
          buildEtiquetteItem(
            context,
            'Okul Ortamı',
            'Erkekler: Rahat ve dayanıklı kot pantolon veya rahat pantolon, temiz ve ütülü tişört veya gömlek, spor ayakkabı tercih edilmelidir. Sade bir saat ve gerektiğinde sırt çantası kullanılabilir.',
            'Kadınlar: Rahat ve temiz kot pantolon veya etek, rahat ve ütülü tişört veya bluz, spor ayakkabı veya rahat ayakkabı tercih edilmelidir. Sade takılar ve gerektiğinde sırt çantası ile görünüm tamamlanmalıdır.',
            'assets/giyim6.1.png',
            'assets/giyim6.2.png',
          ),
          buildEtiquetteItem(
            context,
            'Aile Ziyareti / Bayram',
            'Erkekler: Rahat ve temiz kot pantolon veya pantolon, temiz ve ütülü gömlek veya polo yaka tişört, rahat ve temiz ayakkabı tercih edilmelidir. Sade bir saat ve gerektiğinde ceket kullanılabilir.',
            'Kadınlar: Rahat ve şık elbise veya pantolon, temiz ve ütülü bluz veya tişört, rahat ve şık ayakkabı tercih edilmelidir. Şık ve sade takılar, gerektiğinde şal veya ceket ile görünüm tamamlanmalıdır.',
            'assets/giyim7.2.png',
            'assets/giyim7.1.png',
          ),
        ],
      ),
    );
  }

  Widget buildEtiquetteItem(
      BuildContext context,
      String title,
      String maleDescription,
      String femaleDescription,
      String maleImagePath,
      String femaleImagePath) {
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
              final PageController _pageController = PageController();

              return AlertDialog(
                title: Text(title),
                content: SizedBox(
                  width: double.maxFinite, // Ensure it occupies the maximum width
                  height: 550, // Set a fixed height
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: PageView(
                          controller: _pageController,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey, width: 2.0),
                                      borderRadius: BorderRadius.circular(12.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.asset(
                                        maleImagePath,
                                        fit: BoxFit.cover, // Adjust this as needed
                                        width: double.infinity,
                                        height: 370, // Adjust the height as needed
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(maleDescription),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey, width: 2.0),
                                      borderRadius: BorderRadius.circular(12.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.2),
                                          spreadRadius: 2,
                                          blurRadius: 5,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.asset(
                                        femaleImagePath,
                                        fit: BoxFit.cover, // Adjust this as needed
                                        width: double.infinity,
                                        height: 370, // Adjust the height as needed
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(femaleDescription),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 0), // Add spacing between PageView and PageIndicator
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 2,
                        effect: const WormEffect(), // You can customize this effect
                      ),
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
