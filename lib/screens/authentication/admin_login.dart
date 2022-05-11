import 'package:a_star_meat/widgets/custom_sliver_with_back_widget.dart';
import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key}) : super(key: key);


  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomSliverViewWithBackButton(
        title: "",
        columnList: [

        ],
      ),
    );
  }
}
