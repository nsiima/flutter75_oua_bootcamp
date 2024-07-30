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
          buildEtiquetteItem(
            context,
            'Nazik ve Saygılı Olmak',
            'Açıklama: Herkese karşı nazik ve saygılı davranmak, farklı görüş ve yaşam tarzlarına saygı göstermek anlamına gelir.\nÖrnek Senaryo: Mehmet, markette alışveriş yaparken kasada çalışan görevliye gülümsüyor ve nazik bir şekilde teşekkür ediyor. Arkasında bekleyen yaşlı kadının acele ettiğini fark ederek ona öncelik tanıyor. Bu şekilde Mehmet, topluma karşı saygı ve nezaket gösteriyor.',
            'assets/genel2.png',
          ),
          buildEtiquetteItem(
            context,
            'Konuşma Adabı',
            'Açıklama: Konuşurken karşınızdakini dinlemek ve sözünü kesmemek, yüksek sesle konuşmaktan kaçınmak ve uygun bir ses tonu kullanmak, argo veya kaba dil kullanmamak anlamına gelir.\nÖrnek Senaryo: Ayşe, iş arkadaşlarıyla bir toplantıda konuşurken, birisi konuştuğunda dikkatlice dinliyor ve konuşmanın bitmesini bekliyor. Konuşma sırası geldiğinde nazik ve uygun bir ses tonu kullanarak fikrini paylaşıyor. Argo veya kaba dil kullanmaktan kaçınıyor.',
            'assets/genel3.png',
          ),
          buildEtiquetteItem(
            context,
            'Kişisel Alan',
            'Açıklama: İnsanların kişisel alanlarına saygı göstermek ve gereksiz fiziksel temaslardan kaçınmak anlamına gelir.\nÖrnek Senaryo: Ali, kalabalık bir otobüste yolculuk yaparken, yanındaki kişinin rahatsız olmaması için mümkün olduğunca mesafesini koruyor ve ona fazla yaklaşmaktan kaçınıyor. Kişisel alana saygı göstererek başkalarının rahatını gözetiyor.',
            'assets/genel4.png',
          ),
          buildEtiquetteItem(
            context,
            'Davetlere Zamanında Gitmek',
            'Açıklama: Davet edildiğiniz yere zamanında gitmek, gecikme durumunda ev sahibi veya organizatörü bilgilendirmek anlamına gelir.\nÖrnek Senaryo: Ebru, bir arkadaşının doğum günü partisine davetlidir. Partiye tam zamanında gelir ve eğer geç kalacağını düşünseydi, ev sahibine mutlaka haber verecekti. Bu şekilde ev sahibine ve diğer konuklara saygı gösterir.',
            'assets/genel5.png',
          ),
          buildEtiquetteItem(
            context,
            'Selamlaşma',
            'Açıklama: Eve veya mekana girerken ev sahibiyle veya organizatörle selamlaşmak, tokalaşma veya uygun bir selamlaşma şekliyle karşılamak anlamına gelir.\nÖrnek Senaryo: Veli, bir iş toplantısına katılırken toplantı odasına girdiğinde ev sahibi ve diğer katılımcılarla selamlaşıyor, el sıkışıyor ve nazik bir şekilde tanışıyor. Bu, toplantının olumlu bir atmosferde başlamasına yardımcı olur.',
            'assets/genel6.png',
          ),
          buildEtiquetteItem(
            context,
            'Konukseverlik',
            'Açıklama: Ev sahibinin sağladığı ikramlara saygı göstermek, fazla ısrarcı olmamak anlamına gelir.\nÖrnek Senaryo: Zeynep, bir arkadaşının evine davetlidir. Arkadaşı ona kahve ikram ettiğinde, Zeynep nazik bir şekilde teşekkür eder ve kahveyi kabul eder. Eğer istemeseydi, kibarca reddeder ve fazla ısrarcı olmazdı.',
            'assets/genel7.png',
          ),
          buildEtiquetteItem(
            context,
            'Sohbet',
            'Açıklama: Sohbet ederken tartışmalı veya hassas konulardan kaçınmak, başkalarının konuşmalarına dikkat etmek ve onları dinlemek anlamına gelir.\nÖrnek Senaryo: Hasan, bir akşam yemeğinde arkadaşlarıyla sohbet ederken, konuşulan konuların hassas olabileceğini fark eder. Bu nedenle, tartışmalı konulardan kaçınır ve herkesi dinleyerek sohbetin pozitif kalmasına yardımcı olur.',
            'assets/genel8.png',
          ),
          buildEtiquetteItem(
            context,
            'Kamu Alanlarında Gürültü',
            'Açıklama: Kamu alanlarında gereksiz gürültü yapmamak, başkalarını rahatsız etmemek anlamına gelir.\nÖrnek Senaryo: Murat, kütüphanede çalışırken telefonunu sessize alır ve arkadaşlarıyla fısıldayarak konuşur. Böylece diğer kütüphane kullanıcılarının sessiz bir ortamda çalışmasını sağlar.',
            'assets/genel9.png',
          ),
          buildEtiquetteItem(
            context,
            'Kamu Alanlarında Temizlik',
            'Açıklama: Kamu alanlarını temiz tutmak, çöp atmamak ve çevreye zarar vermemek anlamına gelir.\nÖrnek Senaryo: Aylin, parkta yürüyüş yaparken yediği çikolatanın ambalajını çöp kutusuna atar. Çöpü yere atmaktan kaçınır ve çevrenin temiz kalmasına katkıda bulunur.',
            'assets/genel10.png',
          ),
          buildEtiquetteItem(
            context,
            'Kamu Alanlarında Kuyruk Adabı',
            'Açıklama: Kuyrukta sırayı bozmak veya öne geçmeye çalışmamak, sabırlı olmak anlamına gelir.\nÖrnek Senaryo: Ahmet, bankada işlem yapmak için sıraya girer ve sabırla bekler. Başkalarının önüne geçmeye çalışmaz ve sırasını bozmadan işlemini gerçekleştirir.',
            'assets/genel11.png',
          ),
          buildEtiquetteItem(
            context,
            'Taşıma Araçlarında Yer Verme',
            'Açıklama: Toplu taşıma araçlarında yaşlılara, hamilelere ve engellilere yer vermek anlamına gelir.\nÖrnek Senaryo: Merve, otobüste otururken yaşlı bir kadının ayakta olduğunu fark eder ve ona yer verir. Bu şekilde, ihtiyacı olanlara yardım etmiş olur.',
            'assets/genel12.png',
          ),
          buildEtiquetteItem(
            context,
            'Taşıma Araçlarında Gürültü Yapmama',
            'Açıklama: Toplu taşıma araçlarında yüksek sesle konuşmamak veya müzik dinlememek anlamına gelir.\nÖrnek Senaryo: Serkan, otobüste kulaklıkla müzik dinlerken ses seviyesini düşük tutar. Yüksek sesle müzik dinlemekten veya yüksek sesle konuşmaktan kaçınır, böylece diğer yolcuların rahatsız olmasını engeller.',
            'assets/genel13.png',
          ),
          buildEtiquetteItem(
            context,
            'Taşıma Araçlarında Sıra Bekleme',
            'Açıklama: Araçlara binerken sıraya girmek ve sırayı bozmamak anlamına gelir.\nÖrnek Senaryo: Selin, metro istasyonunda beklerken sırasını bozmadan bekler ve metro geldiğinde sırayla biner. Başkalarının önüne geçmeye çalışmaz ve sırasını korur.',
            'assets/genel14.png',
          ),
          buildEtiquetteItem(
            context,
            'Empati',
            'Açıklama: Başkalarının duygularını anlamaya çalışmak ve empati göstermek, eleştiri yaparken yapıcı ve nazik olmak anlamına gelir.\nÖrnek Senaryo: Can, iş arkadaşının zor bir gün geçirdiğini fark eder ve ona destek olmak için dinler ve anlayış gösterir. Eleştiri yaparken ise yapıcı bir dil kullanır ve nazikçe geri bildirim verir.',
            'assets/genel15.png',
          ),
          buildEtiquetteItem(
            context,
            'Yardımseverlik',
            'Açıklama: İhtiyacı olanlara yardımcı olmak ve destek vermek anlamına gelir.\nÖrnek Senaryo: Ayhan, komşusunun ağır alışveriş torbalarını taşımasına yardımcı olur. Bu şekilde komşusuna destek olmuş ve yardımsever bir davranış sergilemiştir.',
            'assets/genel16.png',
          ),
          buildEtiquetteItem(
            context,
            'Güvenilirlik',
            'Açıklama: Söz verdiğiniz şeyleri yerine getirmek ve güvenilir olmak anlamına gelir.\nÖrnek Senaryo: Elif, bir arkadaşına bir projede yardım edeceğine söz verir ve verdiği sözü tutar. Proje üzerinde çalışarak arkadaşına destek olur ve güvenilir biri olduğunu gösterir.',
            'assets/genel17.png',
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
