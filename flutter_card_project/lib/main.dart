import 'package:flutter/material.dart';
//https://flutter.io/custom-fonts/#from-packages -- for add font

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
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
                  'Bangers', 
                  fontSize: 20.0,
                  color: Colors.blueGrey[900],
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5, 
                ),
              ),
              SizedBox( 
                height: 20.0,
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
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: ListTile(
                    leading: Icon(Icons.phone,color:Colors.lightBlue[300]
                        ,size: 20.0),
                    title: Text('0533 677 29 99'),

                  ),
                ),
              ),
              Card(
                color: Colors.white, 
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: ListTile(
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
