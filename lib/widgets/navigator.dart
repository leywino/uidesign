import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/screens/account.dart';
import 'package:uidesign/screens/home.dart';
import 'package:uidesign/screens/manage.dart';
import 'package:uidesign/screens/orders.dart';
import 'package:uidesign/screens/products.dart';
import 'package:uidesign/utilities/colors.dart';

class NavigatorWidget extends StatefulWidget {
  const NavigatorWidget({super.key});

  @override
  State<NavigatorWidget> createState() => _NavigatorWidgetState();
}

class _NavigatorWidgetState extends State<NavigatorWidget> {
  int _currentSelectedIndex = 0;
  final _pages = [
    const ScreenHome(),
    const ScreenOrders(),
    ScreenProducts(),
    const ScreenManage(),
    const ScreenAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentSelectedIndex],
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          selectedLabelStyle: GoogleFonts.poppins(),
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: iconUnselectedBackground,
          selectedItemColor: iconSelectedBackground,
          currentIndex: _currentSelectedIndex,
          onTap: (newIndex) {
            setState(() {
              _currentSelectedIndex = newIndex;
            });
          },
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt_long_outlined,
              ),
              label: 'Orders',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
              ),
              label: 'Products',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.layers_sharp,
              ),
              label: 'Manage',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              label: 'Account',
            ),
          ]),
    );
  }
}
