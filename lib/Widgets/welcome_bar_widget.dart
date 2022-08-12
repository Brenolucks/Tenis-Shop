import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeBarWidget extends StatelessWidget {
  const WelcomeBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Welcome back',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.grey[200],
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    'Yoru Fernandes!',
                    style: GoogleFonts.montserrat(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      textStyle: TextStyle(
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 90),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_active_outlined,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
