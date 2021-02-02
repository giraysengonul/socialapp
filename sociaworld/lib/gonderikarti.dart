import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
final String profilResimLinki;
final String isimSoyad;
final String gecenSure;
final String gonderiResimLinki;
final String aciklama;

  const GonderiKarti({Key key, this.profilResimLinki, this.isimSoyad, this.gecenSure, this.gonderiResimLinki, this.aciklama}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        elevation: 1.0,
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 388.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.0),
                              image: DecorationImage(
                                image: NetworkImage(
                                    profilResimLinki,),
                                fit: BoxFit.cover,
                              ))),
                      SizedBox(
                        width: 12.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            isimSoyad,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            gecenSure,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                aciklama,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.network(
               gonderiResimLinki,
                width: double.infinity,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 4.0,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                IconluButonum(
                  ikonum: Icons.favorite,
                  yazi: "Beğen",
                  fonksiyonum: () {
                    print("Beğen Butonuna Basıldı");
                  },
                ),
                IconluButonum(
                  ikonum: Icons.comment,
                  yazi: "Yorum Yap",
                  fonksiyonum: () {
                    print("Yorum Yap Butonuna Basıldı");
                  },
                ),
                // IconluButonum(
                // ikonum: Icons.share,
                // yazi: "Paylaş",
                // fonksiyonum: () {
                // print("Paylaş Butonuna Basıldı");
                // },
                // ),
                FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share,
                      color: Colors.grey,
                    ),
                    label: Text(
                      "Paylaş",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                //üstte yaptığım butonların aynısını tek satırda yapıldığını buldum bunu da kullanabilirsin
              ])
            ],
          ),
        ),
      ),
    );
  }
}

class IconluButonum extends StatelessWidget {
  final IconData ikonum;
  final String yazi;
  final fonksiyonum;

  IconluButonum({this.ikonum, this.yazi, this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                ikonum,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                yazi,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
