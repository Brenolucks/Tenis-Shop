import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 323,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 255, 132, 32),
                Color.fromARGB(255, 245, 126, 66),
                Color.fromARGB(255, 255, 148, 95),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular now',
                      style: GoogleFonts.montserrat(
                          color: Colors.grey[200], letterSpacing: 3.0),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Nike Go Flyease',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Buy Now',
                        style: GoogleFonts.montserrat(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100,
          padding: EdgeInsets.only(left: 120),
          child: Transform.rotate(
            alignment: Alignment.topRight,
            angle: -math.pi / 6,
            child: Image.asset(
              'assets/images/nike_orange_shoes.png',
              fit: BoxFit.contain,
              alignment: Alignment.topRight,
            ),
          ),
        ),
      ],
    );
  }
}
