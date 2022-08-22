import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:math' as math;

import 'package:tenis_shop/Widgets/list_view_number_widget.dart';

class ShowPageWidget extends StatelessWidget {
  const ShowPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Container(
                height: 400,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back_ios_new),
                          iconSize: 24,
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                        ),
                        Text(
                          'Unissex Shoes',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          size: 24,
                        ),
                      ],
                    ),
                    Container(
                      child: Transform.rotate(
                        angle: -math.pi / 30,
                        child: Image.asset(
                          'assets/images/puma_rsx.png',
                          fit: BoxFit.contain,
                          width: 300,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Puma RS-X Toys',
                        style: GoogleFonts.montserrat(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'Description\n',
                        style: GoogleFonts.montserrat(
                          fontSize: 17.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Just when you thought you\'d seen it all, Nike wows \n'
                        'with an all-new way to quickly and easily get into \n'
                        'your shoes. The entire heel (including t... See More',
                        style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Color',
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          border: Border.all(
                            color: Colors.brown,
                            width: 2.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.yellow,
                          maxRadius: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue[700],
                          maxRadius: 15,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.red[700],
                          maxRadius: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Size',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  ListViewNumber(),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: GoogleFonts.montserrat(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '\$530',
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.only(left: 30, top: 5),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.deepOrange,
                              padding: EdgeInsets.only(top: 15, bottom: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Buy Now',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
