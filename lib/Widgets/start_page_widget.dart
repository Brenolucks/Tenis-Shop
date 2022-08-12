import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

import 'package:tenis_shop/Widgets/home_page_widget.dart';

class MyHomeWidget extends StatefulWidget {
  const MyHomeWidget({Key? key}) : super(key: key);

  @override
  State<MyHomeWidget> createState() => _MyHomeWidgetState();
}

class _MyHomeWidgetState extends State<MyHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromRGBO(237, 105, 43, 1),
            Color.fromARGB(255, 238, 109, 49),
            Color.fromARGB(255, 238, 112, 54),
            Color.fromRGBO(247, 135, 45, 1),
            Color.fromARGB(255, 247, 142, 90),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 500,
            child: Transform.rotate(
              angle: math.pi / 12,
              child: Image.asset(
                'assets/nike_orange_shoes.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Text(
            "Comfort is everything",
            style: GoogleFonts.montserrat(
              letterSpacing: .7,
              fontSize: 60,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Find the best shoes for comfort",
            style: GoogleFonts.montserrat(
              color: Colors.grey[200],
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "in your daily activities",
            style: GoogleFonts.montserrat(
              color: Colors.grey[200],
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return HomePageWidget();
              }));
            },
            child: Text(
              "Get Started",
              style: GoogleFonts.montserrat(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
