import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/utilities/colors.dart';

class AccountFAQ extends StatefulWidget {
  const AccountFAQ({super.key});

  @override
  State<AccountFAQ> createState() => _AccountFAQState();
}

class _AccountFAQState extends State<AccountFAQ> {
  bool tileExpanded = false;
  List faqtitles = [
    'What is your refund policy?',
    'Will there be an automatic charge after the paid trial?',
    'What payment methods do you offer?',
    'What happens when my free trial ends?',
    'What are the terms for the custom domain?',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        ExpansionTile(
          onExpansionChanged: (bool expanded) {
            setState(() => tileExpanded = expanded);
          },
          trailing: Icon(
            tileExpanded ? Icons.remove : Icons.add,
          ),
          title: Text(
            'What types of businesses can use Dukaan Premium?',
            style: GoogleFonts.poppins(
                color: faqgrey1, fontWeight: FontWeight.w500),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.',
                style: GoogleFonts.poppins(color: faqgrey2),
              ),
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                faqtitles[index],
                style: GoogleFonts.poppins(
                    color: faqgrey1, fontWeight: FontWeight.w500),
              ),
              trailing: const Icon(Icons.add),
            );
          },
        ),
        const Divider(
          thickness: 5,
        )
      ],
    );
  }
}
