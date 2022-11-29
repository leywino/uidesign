import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/widgets/additional/additionalswitch.dart';

class AdditionalListView extends StatelessWidget {
  const AdditionalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          ListTile(
            iconColor: Colors.black,
            leading: const Icon(Icons.share_outlined),
            title: Text(
              'Share Dukaan App',
              style: GoogleFonts.poppins(),
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            iconColor: Colors.black,
            leading: const Icon(Icons.language),
            title: Text(
              'Change Language',
              style: GoogleFonts.poppins(),
            ),
            trailing: const Icon(Icons.chevron_right),
          ),
          ListTile(
            iconColor: Colors.black,
            leading: const Icon(Icons.whatsapp_outlined),
            title: Text(
              'WhatsApp Chat Support',
              style: GoogleFonts.poppins(),
            ),
            trailing: const SwitchAdditional(),
          ),
          ListTile(
            iconColor: Colors.black,
            leading: const Icon(Icons.lock),
            title: Text(
              'Privacy Policy',
              style: GoogleFonts.poppins(),
            ),
          ),
          ListTile(
            iconColor: Colors.black,
            leading: const Icon(Icons.star_border_outlined),
            title: Text(
              'Rate Us',
              style: GoogleFonts.poppins(),
            ),
          ),
          ListTile(
            iconColor: Colors.black,
            leading: const Icon(Icons.logout),
            title: Text(
              'Sign Out',
              style: GoogleFonts.poppins(),
            ),
          ),
        ],
      );
  }
}