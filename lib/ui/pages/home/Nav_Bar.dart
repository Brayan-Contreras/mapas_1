import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mapas_1/main.dart';
import 'package:mapas_1/ui/pages/home/login_page.dart';
import 'package:mapas_1/ui/pages/home/register_page.dart';
import 'package:mapas_1/ui/pages/favoritos.dart';

class nav_bar extends StatefulWidget {
  const nav_bar({super.key});

  @override
  State<nav_bar> createState() => _nav_bar();
}

class _nav_bar extends State<nav_bar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Scrollimage(),
    HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        padding: EdgeInsets.all(16),
        gap: 1,
        tabs: [
          GButton(
            icon: Icons.search,
            text: 'Buscar',
          ),
          GButton(
            icon: Icons.location_on,
            text: 'Lugares',
          ),
          GButton(
            icon: Icons.add_business,
            text: 'Añadir',
          ),
          GButton(
            icon: Icons.favorite_border,
            text: 'Favoritos',
          ),
          GButton(
            icon: Icons.account_box,
            text: 'Cuenta',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index; // Actualiza el índice de la página actual
          });
        },
      ),
      body: _pages[_selectedIndex],
    );
  }
}
