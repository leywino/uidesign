import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/utilities/colors.dart';
import 'package:uidesign/widgets/additional/additionallistview.dart';
import 'package:uidesign/widgets/customappbar.dart';

class AdditionalInformation extends StatelessWidget {
  const AdditionalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appbartext: 'Additional Information',
        appbarheight: 60,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AdditionalListView(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              children: [
                Text(
                  'Version',
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                    color: Colors.black.withOpacity(0.3),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '2.4.2',
                  style: GoogleFonts.poppins(
                    fontSize: 19,
                    color: Colors.black.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
