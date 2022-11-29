import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/utilities/colors.dart';

class OrderExpanded extends StatefulWidget {
  const OrderExpanded({super.key});

  @override
  State<OrderExpanded> createState() => _OrderExpandedState();
}

class _OrderExpandedState extends State<OrderExpanded> {
  bool _customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ListTile(
          title: Text(
            'Default Method',
            style: GoogleFonts.poppins(fontSize: 18),
          ),
          trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                'Online Payments',
                style: GoogleFonts.poppins(fontSize: 18, color: faqgrey2),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
        ListTile(
          title: Text(
            'Payment Profile',
            style: GoogleFonts.poppins(fontSize: 18),
          ),
          trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                'Bank Account',
                style: GoogleFonts.poppins(fontSize: 18, color: faqgrey2),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
        ExpansionTile(
          title: Text(
            'Payments Overview',
            style: GoogleFonts.poppins(fontSize: 18),
          ),
          trailing:
              Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
            Text(
              'Life Time',
              style: GoogleFonts.poppins(fontSize: 18, color: faqgrey2),
            ),
            Icon(
              _customTileExpanded ? Icons.expand_more : Icons.chevron_right,
            )
          ]),
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    child: Card(
                      color: orangeorder,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 15),
                        child: Column(
                          children: [
                            Text(
                              'AMOUNT ON HOLD',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17),
                            ),
                            Text(
                              '₹0',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Card(
                      color: greeneorder,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30.0, horizontal: 15),
                        child: Column(
                          children: [
                            Text(
                              'AMOUNT RECIEVED',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                            Text(
                              '₹13,332',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
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
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),
      ],
    );
  }
}
