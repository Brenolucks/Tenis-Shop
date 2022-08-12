import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonTextCategoriesWidget extends StatelessWidget {
  final Color defaultBackgroundColor;
  final Color defaultTextColor;
  final String text;
  const ButtonTextCategoriesWidget({
    Key? key,
    required this.defaultBackgroundColor,
    required this.defaultTextColor,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 10, top: 30, bottom: 30),
        child: ElevatedButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: defaultBackgroundColor,
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.montserrat(
              fontSize: 14,
              color: defaultTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
