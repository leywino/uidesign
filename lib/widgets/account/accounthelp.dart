import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/utilities/colors.dart';

class AccountHelp extends StatelessWidget {
  const AccountHelp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Need help? Get in touch',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                child: Card(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(color: helpgray),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 50),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.chat_bubble_outline,
                          size: 35,
                        ),
                        Text(
                          'Live Chat',
                          style: GoogleFonts.poppins(
                              color: faqgrey1,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Card(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: helpgray,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 50),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.call_outlined,
                          size: 35,
                        ),
                        Text(
                          'Phone Call',
                          style: GoogleFonts.poppins(
                            color: faqgrey1,
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 3,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Select Domain',
                style: GoogleFonts.poppins(color: appBarColor, fontSize: 20),
              ),
              Card(
                color: appBarColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 30, right: 30, bottom: 8),
                  child: Text(
                    'Get Premium',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
