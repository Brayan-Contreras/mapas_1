import 'package:flutter/material.dart';

class Scrollimage extends StatefulWidget {
  const Scrollimage({super.key});

  @override
  State<Scrollimage> createState() => _ScrollimageState();
}

class _ScrollimageState extends State<Scrollimage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Viviendas'),
        ),
        body: ListView(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
              child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.pink,
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset('assets/imagenes/uno.jpg',
                    fit: BoxFit.cover,
                    ),
                  ),
                ],                
              ),
              //color: Color.fromARGB(255, 4, 190, 138),
              ),
            ),

            Padding(padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
              child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.pink,
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset('assets/imagenes/dos.jpg',
                    fit: BoxFit.cover,
                    ),
                  ),
                ],                
              ),
              //color: Color.fromARGB(255, 4, 190, 138),
              ),
            ),

            Padding(padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
              child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.pink,
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset('assets/imagenes/tres.jpg',
                    fit: BoxFit.cover,
                    ),
                  ),
                ],                
              ),
              //color: Color.fromARGB(255, 4, 190, 138),
              ),
            ),

            Padding(padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
              child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.pink,
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset('assets/imagenes/cuatro.jpg',
                    fit: BoxFit.cover,
                    ),
                  ),
                ],                
              ),
              //color: Color.fromARGB(255, 4, 190, 138),
              ),
            ),

            Padding(padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
              child: Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.pink,
              ),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset('assets/imagenes/cinco.jpg',
                    fit: BoxFit.cover,
                    ),
                  ),
                ],                
              ),
              //color: Color.fromARGB(255, 4, 190, 138),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}