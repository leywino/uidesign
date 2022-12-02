import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    double vwwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
              child: Column(
                children: [
                  SizedBox(
                    width: vwwidth / 1.06,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 170,
                          child: ClipRRect(
                            child: Image.asset(
                              'assets/images/logo.jpg',
                            ),
                          ),
                        ),
                        Text(
                          'Get Dukaan Premium for just',
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '₹4,999/year',
                          style: GoogleFonts.poppins(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'All the advanced features for scaling your',
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                        Text(
                          'Business.',
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
