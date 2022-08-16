import 'package:flutter/material.dart';
import 'dart:math' as math;

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

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
          Text('Unissex Shoes'),
          Text('Balenciaga Speed'),
          Transform.rotate(
            angle: -math.pi / 25,
            child: Image.asset(
              'assets/images/balenciaga_shoes.jpg',
              fit: BoxFit.contain,
              width: 127,
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                maxRadius: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                maxRadius: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.black,
                maxRadius: 10,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('\$452'),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
