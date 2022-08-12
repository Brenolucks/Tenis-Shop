import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 35),
          child: Text(
            'Categories',
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 35),
          child: TextButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: GoogleFonts.montserrat(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
