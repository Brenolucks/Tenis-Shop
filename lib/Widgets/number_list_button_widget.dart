import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberListWidget extends StatelessWidget {
  final String numberShoes;
  final Color colorCard;
  final Color colorText;
  const NumberListWidget(
      {Key? key,
      required this.numberShoes,
      required this.colorCard,
      required this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(10, 30),
          primary: colorCard,
        ),
        onPressed: () {},
        child: Text(
          numberShoes,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            color: colorText,
          ),
        ),
      ),
    );
  }
}
