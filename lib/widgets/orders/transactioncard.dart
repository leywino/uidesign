import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/utilities/colors.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    double vwwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: vwwidth / 1.05,
            child: Card(
              elevation: 0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: helpgray),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transaction Limit',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 19,
                      ),
                    ),
                    Text(
                      'A free limit up to which you will recieve the online payments directly in your bank',
                      style: GoogleFonts.poppins(color: faqgrey1, fontSize: 16),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: LinearProgressIndicator(
                        value: 0.26,
                        minHeight: 5,
                        color: appBarColor,
                        backgroundColor: helpgray,
                      ),
                    ),
                    Text(
                      '36,668 left out of ₹50,000',
                      style: GoogleFonts.poppins(color: faqgrey1, fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: appBarColor),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Increase Limit',
                            style: GoogleFonts.poppins(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
