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
          buildEtiquetteItem(
            context,
            'Doğru ve Saygılı Hitap Kullanımı',
            'E-posta başlarken alıcıya uygun bir şekilde hitap etmek önemlidir.\n\nÖrnek:\n"Sayın Ahmet Bey,"\n"Değerli Müşterimiz,"\n"Merhaba Ali Bey,"',
            'assets/is1.png',
          ),
          buildEtiquetteItem(
            context,
            'Giriş Cümlesi',
            'Nazik bir giriş yaparak konuya başlamak: İlk cümlede selamlaşma ve mesajın amacı belirtilir.\n\nÖrnek:\n"Geçtiğimiz toplantımızla ilgili görüşlerimi paylaşmak istiyorum."',
            'assets/is2.png',
          ),
          buildEtiquetteItem(
            context,
            'Yanıt Süresi',
            'E-postalara 24 saat içinde yanıt vermek: İş dünyasında genellikle bir e-postanın 24 saat içinde yanıtlanması beklenir. Acil durumlarda bu süre daha kısa olabilir.\n\nÖrnek:\n"Merhaba Ayşe Hanım, Gönderdiğiniz raporu aldım. En kısa sürede inceleyip size dönüş yapacağım."\n"Değerli Müşterimiz, Talebiniz üzerine araştırma yapıp size en geç yarın geri dönüş yapacağız."',
            'assets/is3.png',
          ),
          buildEtiquetteItem(
            context,
            'Yanıt İçeriği',
            'Kısa bir onay veya bilgi paylaşımı: Gelen e-postayı aldığınızı ve gereken işlemi başlattığınızı bildirmek.\n\nÖrnek:\n"E-postanızı aldım, konu üzerinde çalışmaya başladım."\n"Gönderdiğiniz dokümanları aldım, teşekkür ederim."',
            'assets/is4.png',
          ),
          buildEtiquetteItem(
            context,
            'Gecikme Durumunda Bilgilendirme',
            'Yanıt gecikecekse bu durumu bildirmek: Eğer yanıt vermeniz gereken süreyi aşacaksanız, bu durumu karşı tarafa bildirmek önemlidir.\n\nÖrnek:\n"Merhaba Hasan Bey, Yoğunluktan dolayı cevabım geciktiği için özür dilerim. Sorularınızı en kısa sürede yanıtlayacağım."\n"Sayın Müşterimiz, Talebinizle ilgili detaylı inceleme yapmamız gerektiğinden yanıtımız biraz gecikebilir. Anlayışınız için teşekkür ederiz."',
            'assets/is5.png',
          ),
          buildEtiquetteItem(
            context,
            'Konuşma Sırası',
            'Yanlış: Başkalarının sözünü kesmek.\nDoğru: Söz almayı beklemek ve nazikçe katkıda bulunmak.\n\nÖrnek:\n"Bu konuda eklemek istediğim bir şey var," diyerek söz almak.',
            'assets/is6.png',
          ),
          buildEtiquetteItem(
            context,
            'E-postada Emoji Kullanımı',
            'Durum: Resmi bir e-postada emoji kullanmak uygun mu?\nDoğru Yaklaşım: Resmi yazışmalarda emojilerden kaçının. Ancak daha samimi bir iş ortamında veya dostça bir tonda yazışırken uygun olabilir.',
            'assets/is7.png',
          ),
          buildEtiquetteItem(
            context,
            'Kamera Kullanımı',
            'Durum: Video konferans sırasında kamerayı açık tutmak zorunda mısınız?\nDoğru Yaklaşım: Kamerayı açık tutmak genellikle daha profesyoneldir ve iletişimi kolaylaştırır. Ancak, internet bağlantısı veya kişisel nedenlerden dolayı kapalı tutmak gerekiyorsa, toplantı başında bunu açıklayın.',
            'assets/is8.png',
          ),
          buildEtiquetteItem(
            context,
            'Arka Plan',
            'Durum: Video konferans sırasında arka planda nelerin göründüğüne dikkat etmeli misiniz?\nDoğru Yaklaşım: Arka planın düzenli ve dikkat dağıtıcı unsurlardan arındırılmış olması idealdir. Sanal arka plan kullanmak da bir seçenek olabilir.',
            'assets/is9.png',
          ),
          buildEtiquetteItem(
            context,
            'Yanlış Kişiye E-posta Gönderme',
            'Durum: Yanlışlıkla gizli bilgileri içeren bir e-postayı yanlış kişiye göndermek.\nDoğru Yaklaşım: Hemen hatanızı fark edip ilgili kişiyi bilgilendirin ve gerekli önlemleri alın. Gizli bilgilerin yanlış ellere geçmesini önlemek için durumu yöneticinize bildirin.',
            'assets/is10.png',
          ),
          buildEtiquetteItem(
            context,
            'Yemek Yerken Video Konferans',
            'Durum: Video konferans sırasında yemek yemek uygun mu?\nDoğru Yaklaşım: Video konferans sırasında yemek yemekten kaçının. Eğer gerçekten yemek yemeniz gerekiyorsa, mikrofonu kapatın ve kamerayı kapatarak diğer katılımcılara saygı gösterin.',
            'assets/is11.png',
          ),
        ],
      ),
    );
  }

  Widget buildEtiquetteItem(BuildContext context, String title, String detailText, String imagePath) {
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
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(imagePath),
                      SizedBox(height: 10),
                      Text(detailText),
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
