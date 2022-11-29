import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/utilities/colors.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {super.key, this.appbartext, this.appbarheight, this.appbaricon});
  String? appbartext;
  double? appbarheight;
  IconData? appbaricon;
  @override
  Size get preferredSize => Size.fromHeight(appbarheight!);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      title: Text(
        appbartext!,
        style: GoogleFonts.poppins(),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Icon(appbaricon),
        ),
      ],
      centerTitle: true,
    );
  }
}
