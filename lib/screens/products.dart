import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/utilities/colors.dart';
import 'package:uidesign/widgets/productslist.dart';

class ScreenProducts extends StatelessWidget {
  ScreenProducts({super.key});

  final upperTab = TabBar(tabs: <Tab>[
    Tab(
      icon: Text(
        'Products',
        style: GoogleFonts.poppins(fontSize: 18),
      ),
    ),
    Tab(
      icon: Text(
        'Categories',
        style: GoogleFonts.poppins(fontSize: 18),
      ),
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          bottom: upperTab,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text('Catalogue'),
              ),
            ],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            ProductsList(),
            ProductsList(),
          ],
        ),
      ),
    );
  }
}
