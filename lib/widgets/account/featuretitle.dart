import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeatureTitle extends StatelessWidget {
  const FeatureTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, top: 20),
      child: Text(
        'Features',
        style: GoogleFonts.poppins(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
