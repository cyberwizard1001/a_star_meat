import 'package:a_star_meat/widgets/custom_sliver_with_back_widget.dart';
import 'package:a_star_meat/widgets/textbox_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:a_star_meat/utils/colors.dart' as colors;
import 'package:a_star_meat/utils/constants.dart' as constants;

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);

  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: CustomSliverViewWithBackButton(
        title: "",
        columnList: [
          Expanded(
            child: Container(),
            flex: 2,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Admin Login',
              style:
                  GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Text(
              'Sign in using your registered mobile number',
              style: GoogleFonts.nunito(fontSize: 18.0,fontWeight: FontWeight.w600),
            ),
          ),
          TextBoxField(
            validator: (code) {},
            padding: EdgeInsets.only(top: 50, bottom: 15),
            hint: 'Please enter phone number',
            title: 'Phone number',
          ),
          TextBoxField(
            validator: (code) {},
            padding: EdgeInsets.only(bottom: 15),
            hint: 'Please enter password',
            title: 'Password',
          ),
          Expanded(child: Container()),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {},
              style: constants.primaryButtonStyle,
              child: SizedBox(
                height: 50,
                child: Center(
                  child: Text(
                    'LOGIN',
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: colors.buttonTextColor),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
