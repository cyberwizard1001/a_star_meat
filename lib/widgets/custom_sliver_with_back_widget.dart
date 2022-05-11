import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:a_star_meat/utils/colors.dart' as colors;

class CustomSliverViewWithBackButton extends StatelessWidget {
  const CustomSliverViewWithBackButton(
      {Key? key, required this.columnList, required this.title, this.actions})
      : super(key: key);
  final List<Widget> columnList;
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: colors.scaffoldColor,
          elevation: 0,
          leading: IconButton(
              splashRadius: 20,
              icon: Icon(
                Icons.arrow_back,
                color: colors.primaryTextColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(title,style: GoogleFonts.nunito(color: colors.primaryTextColor),),
          actions: actions,

        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0,left: 20.0,right: 20.0),
            child: Column(
              children: columnList,
            ),
          ),
        ),
      ],
    );
  }
}
