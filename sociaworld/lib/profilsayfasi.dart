import 'package:flutter/material.dart';
import 'package:sociaworld/gonderikarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResimlinki;
  final String profilResimlinki;
  final int takipci;
  final int takip;
  final int paylasim;

  const ProfilSayfasi({Key key, this.isimSoyad, this.kullaniciAdi, this.kapakResimlinki, this.profilResimlinki, this.takipci, this.takip, this.paylasim}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  //color: Colors.yellow,
                  height: 230.0,
                ),
                Container(
                  height: 180.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage(
                          kapakResimlinki),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 0.0,
                  child: Hero(
                    tag: kullaniciAdi,
                                      child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(60.0),
                        border: Border.all(width: 2.0, color: Colors.white),
                        image: DecorationImage(
                          image: NetworkImage(
                              profilResimlinki),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 190.0,
                  left: 145.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                         isimSoyad,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        kullaniciAdi ,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 130.0,
                  right: 15.0,
                  child: Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[200],
                      border: Border.all(width: 2.0, color: Colors.white),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_circle,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          "Takip Et",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context,true);
                    })
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 75.0,
              color: Colors.grey.withOpacity(0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sayac("Takipçi", "$takipci""K"),
                  sayac("Takip", "$takip"),
                  sayac("Paylaşım", "$paylasim"),
                ],
              ),
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
        ));
  }

  Column sayac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sayi,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        Text(
          baslik,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        )
      ],
    );
  }
}
