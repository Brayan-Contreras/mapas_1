import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapas_1/ui/auth/login_or_register.dart';
import 'package:mapas_1/ui/pages/home/Nav_Bar.dart';
import 'package:mapas_1/ui/pages/home/home_page.dart';
import 'package:mapas_1/ui/pages/home/home_controller.dart';
import 'package:provider/provider.dart';
//import 'package:mapas_1/Loginpage.dart';
import 'package:mapas_1/ui/pages/home/login_page.dart';
import 'package:mapas_1/ui/pages/favoritos.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: HomePage(),
      home: nav_bar(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final _initialCameraPosition = CameraPosition(
    target:
        LatLng(7.37565, -72.64795), //latitud y longitud del centro de Pamplona
    zoom: 15,
  );

  // @override
  // void initState() {
  //   super.initState();
  //   _controller.addListener(() { })
  // }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeController>(
      create: (_) => HomeController(),
      child: Scaffold(
        appBar: AppBar(),
        body: Consumer<HomeController>(
          builder: (_, controller, __) => GoogleMap(
            // onMapCreated: _controller,
            initialCameraPosition: _initialCameraPosition,
            myLocationButtonEnabled:
                false, //boton de la posicion actual en el mapa
            myLocationEnabled: false, // localizacion
            indoorViewEnabled:
                true, //Habilita o deshabilita la vista interior desde el mapa
            mapToolbarEnabled: true,
            scrollGesturesEnabled: false,
            trafficEnabled:
                false, //Habilita o deshabilita la capa de tráfico del mapa
            zoomControlsEnabled:
                true, //True si la vista de mapa debe mostrar controles de zoom. Esto incluye dos botones para acercar y alejar. El valor predeterminado es mostrar los controles de zoom.
            mapType: MapType.normal, // estilo del mapa
            compassEnabled: false, //quitar o poner la brujula
            markers: controller.markers,
            onTap: controller.onTap,
          ),
        ),
      ),
    );
  }
}
