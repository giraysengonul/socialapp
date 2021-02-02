import 'package:flutter/material.dart';
import 'package:sociaworld/gonderikarti.dart';
import 'package:sociaworld/profilsayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.grey,
            iconSize: 32.0,
            onPressed: () {}),
        title: Text(
          "SocialWorld",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true, //başlığı Ortala
        actions: [
          IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.lightBlue[300],
              iconSize: 32.0,
              onPressed: () {
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return Column(children: [
                    duyuru("Mehmet seni takip etti","3 dk önce"),
                    duyuru("Merve seni etiketledi","17 dk önce"),
                    duyuru("Osman senden bahsetti","1 gün önce"),

                  ],);


                });
              }),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0,
                )
              ],
            ),
            child: ListView(
              scrollDirection:
                  Axis.horizontal, //yatay işlemde kaymasını söyledim
              children: [
                profilKartiOlustur(
                  "cansngnl",
                  "https://avatars0.githubusercontent.com/u/56843071?s=460&u=584400b62d3e96f5cef2e9584e4b72118012421a&v=4",
                  "Hakkı Can ŞENGÖNÜL",
                  "https://cdn.pixabay.com/photo/2020/12/07/18/16/pathway-5812488_1280.jpg",
                  50,
                  150,
                  66,
                ),
                profilKartiOlustur(
                  "Tom",
                  "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_1280.jpg",
                  "Tom COLİN",
                  "https://cdn.pixabay.com/photo/2020/11/29/16/24/port-5788261_1280.jpg",
                  100,
                  120,
                  6,
                ),
                profilKartiOlustur(
                  "Merve",
                  "https://cdn.pixabay.com/photo/2018/02/20/20/52/people-3168830_1280.jpg",
                  "Merve NUR",
                  "https://cdn.pixabay.com/photo/2020/04/19/17/38/castle-5064674_1280.jpg",
                  20,
                  120,
                  67,
                ),
                profilKartiOlustur(
                  "Berna",
                  "https://cdn.pixabay.com/photo/2015/09/02/12/51/woman-918707_1280.jpg",
                  "Berna ALAY",
                  "https://cdn.pixabay.com/photo/2020/12/12/13/07/bird-5825414_1280.jpg",
                  155,
                  120,
                  16,
                ),
                profilKartiOlustur(
                  "Ali",
                  "https://cdn.pixabay.com/photo/2014/12/31/16/25/japanmakake-585086_1280.jpg",
                  "Ali KEMAL",
                  "https://cdn.pixabay.com/photo/2020/12/10/16/19/waterfall-5820721_1280.jpg",
                  40,
                  105,
                  106,
                ),
                profilKartiOlustur(
                  "Can",
                  "https://cdn.pixabay.com/photo/2016/01/25/19/48/man-1161337_1280.jpg",
                  "Can ÖZGÜR",
                  "https://cdn.pixabay.com/photo/2020/11/22/07/11/river-5765785_1280.jpg",
                  110,
                  120,
                  6,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GonderiKarti(
            isimSoyad: "Ayşe ÖZGÜR",
            aciklama: "yeni çektiğim resim nasıl olmuş ?",
            gecenSure: "1 saat önce",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2015/05/01/19/40/girl-748932_1280.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2017/09/25/13/12/dog-2785074_1280.jpg",
          ),
          GonderiKarti(
            isimSoyad: "Nur AĞAÇ",
            aciklama: "Özgürlük ne güzel şey...",
            gecenSure: "1 saat önce",
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2017/09/20/12/12/girl-2768346_1280.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2015/07/12/23/37/hipster-842576_1280.jpg",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: null,
      backgroundColor: Colors.blue[400],
      child: Icon(Icons.camera),
      
      ),
    );
  }

  Padding duyuru(String metin, String gecenzaman) {
    return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(metin,style: TextStyle(fontSize: 15.0),),
                        Text(gecenzaman),
                      ],
                    ),
                  );
  }

  Widget profilKartiOlustur(
      String kullaniciAdi,
      String resimLinki,
      String isimsoyad,
      String kapakResimlinki,
      int takipci,
      int takip,
      int paylasim) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool donenveri = await Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilSayfasi(
                        profilResimlinki: resimLinki,
                        kullaniciAdi: kullaniciAdi,
                        isimSoyad: isimsoyad,
                        kapakResimlinki: kapakResimlinki,
                        takipci: takipci,
                        takip: takip,
                        paylasim: paylasim,
                      )));
          if (donenveri) {
            print("Kullanıcı Ana Sayfaya Döndü");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                                      child: Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 2.0, color: Colors.grey),
                            borderRadius: BorderRadius.circular(35.0),
                            image: DecorationImage(
                              image: NetworkImage(resimLinki),
                              fit: BoxFit.cover,
                            ))),
                  ),
                  Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(25.0),
                        border: Border.all(color: Colors.white, width: 2.0),
                      ))
                ],
              ),
              SizedBox(
                height: 3.0,
              ),
              Text(kullaniciAdi,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
