import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uidesign/screens/additional_info.dart';
import 'package:uidesign/utilities/colors.dart';
import 'package:uidesign/widgets/customappbar.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          appbarheight: 60,
          appbartext: 'Home',
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 8, top: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: helpgray, borderRadius: BorderRadius.circular(8)),
                child: ListTile(
                  title: Text(
                    'Additional Information',
                    style: GoogleFonts.poppins(fontSize: 18),
                  ),
                  leading: const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                  onTap: () {
                    navigateToAdditional(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

navigateToAdditional(ctx) {
  Future.delayed(Duration.zero, () {
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (ctx1) => const AdditionalInformation()),
    );
  });
}
