import 'package:flutter/material.dart';
import 'package:tenis_shop/Widgets/number_list_button_widget.dart';

class ListViewNumber extends StatelessWidget {
  const ListViewNumber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(right: 10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              NumberListWidget(
                numberShoes: '35',
                colorCard: Colors.white,
                colorText: Colors.grey,
              ),
              NumberListWidget(
                  numberShoes: '36',
                  colorCard: Colors.white,
                  colorText: Colors.grey),
              NumberListWidget(
                  numberShoes: '37',
                  colorCard: Colors.white,
                  colorText: Colors.grey),
              NumberListWidget(
                  numberShoes: '38',
                  colorCard: Colors.deepOrange,
                  colorText: Colors.white),
              NumberListWidget(
                  numberShoes: '39',
                  colorCard: Colors.white,
                  colorText: Colors.grey),
              NumberListWidget(
                  numberShoes: '40',
                  colorCard: Colors.white,
                  colorText: Colors.grey),
              NumberListWidget(
                  numberShoes: '41',
                  colorCard: Colors.white,
                  colorText: Colors.grey),
              NumberListWidget(
                  numberShoes: '42',
                  colorCard: Colors.white,
                  colorText: Colors.grey),
              NumberListWidget(
                  numberShoes: '43',
                  colorCard: Colors.white,
                  colorText: Colors.grey),
              NumberListWidget(
                  numberShoes: '44',
                  colorCard: Colors.white,
                  colorText: Colors.grey),
              NumberListWidget(
                  numberShoes: '45',
                  colorCard: Colors.white,
                  colorText: Colors.grey),
            ],
          ),
        ],
      ),
    );
  }
}
