import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

class CardWidget extends StatelessWidget {
  final String categoryShoes;
  final String nameShoes;
  final String imageSrc;
  final Color colorOptionOne, colorOptionTwo, colorOptionThree;
  final String price;

  const CardWidget({
    Key? key,
    required this.categoryShoes,
    required this.nameShoes,
    required this.imageSrc,
    required this.colorOptionOne,
    required this.colorOptionTwo,
    required this.colorOptionThree,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, top: 15),
            child: Text(
              categoryShoes,
              style: GoogleFonts.montserrat(
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              nameShoes,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Image.asset(
              imageSrc,
              fit: BoxFit.contain,
              width: 120,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: CircleAvatar(
                  backgroundColor: colorOptionOne,
                  maxRadius: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: CircleAvatar(
                  backgroundColor: colorOptionTwo,
                  maxRadius: 5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: CircleAvatar(
                  backgroundColor: colorOptionThree,
                  maxRadius: 5,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  price,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                  ),
                ),
              ),
              Container(
                width: 45,
                height: 51.5,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
