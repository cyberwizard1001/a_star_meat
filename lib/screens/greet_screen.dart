import 'package:a_star_meat/utils/colors.dart' as colors;
import 'package:a_star_meat/utils/constants.dart' as constants;
import 'package:a_star_meat/widgets/custom_sliver_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GreetScreen extends StatelessWidget {
  const GreetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomSliverView(
          columnList: [
            Expanded(
              child: Container(),
              flex: 1,
            ),
            Image.asset('assets/greeting.png'),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                'A STAR MEAT',
                style: GoogleFonts.nunito(
                    fontSize: 45, fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'Point of Sales System',
                style: GoogleFonts.nunito(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: colors.secondaryHeadingTextColor),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: Center(
                child: Text(
                  'Traditional house for Country chicken, Poultry and Goat meat',
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: colors.tertiaryHeadingTextColor),
                ),
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        'ADMIN',
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: colors.buttonTextColor),
                      ),
                    ),
                  ),
                  style: constants.primaryButtonStyle,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        'SELLER',
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: colors.alternateButtonTextColor),
                      ),
                    ),
                  ),
                  style: constants.alternateButtonStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
