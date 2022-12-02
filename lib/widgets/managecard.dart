import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ManageCard extends StatelessWidget implements PreferredSizeWidget {
  ManageCard({super.key, this.cardtext, this.cardicon, this.cardbg});

  String? cardtext;
  IconData? cardicon;
  Color? cardbg;

  @override
  Widget build(BuildContext context) {
    double vwwidth = MediaQuery.of(context).size.width;
    vwwidth = vwwidth / 2.4;
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox(
        width: vwwidth,
        height: 120,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: cardbg,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Icon(cardicon),
                ),
              ),
              SizedBox(
                width: 110,
                child: Text(
                  cardtext!,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => throw UnimplementedError();
}
