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
              color: Color.fromARGB(255, 4, 190, 138),
              
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
              child: Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      color: Color.fromARGB(255, 8, 157, 243),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      color: Color.fromARGB(255, 8, 157, 243),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      color: Color.fromARGB(255, 8, 157, 243),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Container(
                      height: 150,
                      width: 200,
                      color: Color.fromARGB(255, 8, 157, 243),
                    ),
                  ),
                ],
              ),

              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
              child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138),

              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
              child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138),

              ),
            ),
            
            Padding(padding: EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 4.0),
              child: Container(
              height: 200,
              color: Color.fromARGB(255, 4, 190, 138),

              ),
            ),
          ],
        ),
      ),
    );
  }
}