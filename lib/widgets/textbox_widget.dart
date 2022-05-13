import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:a_star_meat/utils/colors.dart' as colors;

class TextBoxField extends StatefulWidget {
  TextBoxField(
      {Key? key,
      required this.validator,
      required this.title,
      required this.hint, required this.padding})
      : super(key: key);

  final _controller = TextEditingController();
  final String? Function(String?)? validator;
  final String title;
  final String hint;
  final EdgeInsets padding;

  @override
  State<TextBoxField> createState() => _TextBoxFieldState();
}

class _TextBoxFieldState extends State<TextBoxField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: TextFormField(
            controller: widget._controller,
            validator: widget.validator,
            style: GoogleFonts.nunito(color: colors.primaryTextColor),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
            label: Text(widget.title,
                  style: GoogleFonts.nunito(
                      color: colors.textBoxTextColor, fontSize: 17)),
              filled: true,
              hintText: widget.hint,
              hintStyle: GoogleFonts.nunito(color: colors.textBoxTextColor),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: colors.textBoxTextColor),
                  borderRadius: BorderRadius.circular(20)),
              fillColor: colors.textBoxColor,
              focusColor: colors.textBoxColor,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: colors.textBoxTextColor),
                  borderRadius: BorderRadius.circular(20)),
            )),
    );
  }
}
