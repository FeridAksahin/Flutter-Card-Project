import 'package:flutter/material.dart';
//https://flutter.io/custom-fonts/#from-packages -- for add font

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[300],
        body: SafeArea(
          child: Column(//https://api.flutter.dev/flutter/widgets/Flex/mainAxisAlignment.html
            //mainAxis kodu ile columnun içinde hangi nesnelerimiz varsa
            //cardlar vb hepsi ortalandı artık. Bunu yazmadan önce orta ama en üstten
            //başlıyordu şimdi orta-orta oldular.
            mainAxisAlignment: MainAxisAlignment.center,
            //https://api.flutter.dev/flutter/widgets/Flex/mainAxisAlignment.html
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                // backgroundColor: Colors.red,
                backgroundImage: AssetImage('1/1.jpg'),
              ),
              Text(
                'CUBE',
                style: TextStyle(
                  fontFamily: 'Urbanist',
                  fontSize: 40.0,
                  color: Colors.blueGrey[900],
                ),
              ),
              Text(
                'Developer',
                style: TextStyle(
                  fontFamily:
                  'Bangers', //pubspec.yaml dosyasına attıgımız font dosyası
                  fontSize: 20.0,
                  //color: Colors.teal.shade100, //shade gölge
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5, //harfler arasındaki boşluk
                ),
              ),
              SizedBox( //https://api.flutter.dev/flutter/material/Divider-class.html
                height: 20.0,
                // width: 200.0, indent görevini görüyordu divider'ın
                child: Divider(
                  color: Colors.lightBlue,
                  height: 20,
                  thickness: 5,
                  indent: 150,
                  endIndent: 150,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                //https://api.flutter.dev/flutter/widgets/Padding-class.html
                child: Padding(//card classında paddingi direk kullanamayız o yüzden padding widgetı açtık
                  padding: EdgeInsets.all(25.0),
                  child: ListTile(
                    leading: Icon(Icons.phone,color:Colors.lightBlue[300]
                        ,size: 20.0),
                    title: Text('0533 677 29 99'),

                  ),
                  /*
                      aşağıdaki kodların işlevili ListTile classı kullanarak yaptık
                      ListTile kullanmasak aşağıdaki kodları yazardık
                      Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone, //icon adını
                          //https://www.materialpalette.com/icons siteisnden aldım.
                          //icon classı image'ten ayrıdır. class ile iconları uğraşmadan
                          //sadece isimle alabiliriz sizelarını,color vb değiştirebiliriz.
                          size: 20.0,
                          color: Colors.lightBlue[300],
                        ),
                        SizedBox(
                          //icon ile tel no boşluk olması için görünmez bir kutu açıp
                          //10.0 boşluk bıraktık
                          //row'un içinde yazdığımızdan row içi hepsi satırda olur
                          width: 10.0,
                        ),
                        Text(
                          '0533 677 29 99',
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontFamily: 'Urbanist',
                              fontSize: 20.0),
                        )
                      ],
                    ),
                       */
                ),
              ),
              Card(
                //https://api.flutter.dev/flutter/material/Card-class.html
                color: Colors.white, //default card classı beyaz geliyor yazmasakta olur
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: ListTile(//https://api.flutter.dev/flutter/material/ListTile-class.html
                    leading: Icon(Icons.email,color:Colors.lightBlue[300],size: 20.0
                    ),
                    title: Text('cuber@gmail.com'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
