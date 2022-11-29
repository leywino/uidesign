import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/utilities/colors.dart';

class OrderTransactions extends StatelessWidget {
  const OrderTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Transactions',
            style: GoogleFonts.poppins(fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: helpgray,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8, left: 20, right: 20),
                    child: Text(
                      'On hold',
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: appBarColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8, left: 20, right: 20),
                    child: Text(
                      'Payouts(15)',
                      style: GoogleFonts.poppins(
                          fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: helpgray,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8, left: 20, right: 20),
                    child: Text(
                      'Refunds',
                      style: GoogleFonts.poppins(fontSize: 18),
                    ),
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
