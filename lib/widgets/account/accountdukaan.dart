import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDukaan extends StatelessWidget {
  const AccountDukaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          thickness: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'What is Dukaan Premium?',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: SizedBox(
            height: 220,
            child: Image.asset('assets/images/youtube.jpg'),
          ),
        ),
      ],
    );
  }
}
