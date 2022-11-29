import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FaqTitle extends StatelessWidget {
  const FaqTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Text(
        'Frequently asked questions',
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
