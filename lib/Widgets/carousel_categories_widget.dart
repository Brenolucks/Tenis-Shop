import 'package:flutter/material.dart';

import 'package:tenis_shop/Widgets/button_text_categories_widget.dart';

class CarouselCategoriesWidget extends StatelessWidget {
  const CarouselCategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        padding: EdgeInsets.only(left: 35),
        scrollDirection: Axis.horizontal,
        children: [
          ButtonTextCategoriesWidget(
            text: 'All',
            defaultBackgroundColor: Colors.deepOrange,
            defaultTextColor: Colors.white,
          ),
          ButtonTextCategoriesWidget(
            text: 'Nike',
            defaultBackgroundColor: Colors.white,
            defaultTextColor: Colors.black,
          ),
          ButtonTextCategoriesWidget(
            text: 'Adidas',
            defaultBackgroundColor: Colors.white,
            defaultTextColor: Colors.black,
          ),
          ButtonTextCategoriesWidget(
            text: 'Puma',
            defaultBackgroundColor: Colors.white,
            defaultTextColor: Colors.black,
          ),
          ButtonTextCategoriesWidget(
            text: 'Balenciaga',
            defaultBackgroundColor: Colors.white,
            defaultTextColor: Colors.black,
          ),
          ButtonTextCategoriesWidget(
            text: 'Asics',
            defaultBackgroundColor: Colors.white,
            defaultTextColor: Colors.black,
          ),
          ButtonTextCategoriesWidget(
            text: 'Mizuno',
            defaultBackgroundColor: Colors.white,
            defaultTextColor: Colors.black,
          ),
          ButtonTextCategoriesWidget(
            text: 'Off-White',
            defaultBackgroundColor: Colors.white,
            defaultTextColor: Colors.black,
          ),
          ButtonTextCategoriesWidget(
            text: 'Jordan',
            defaultBackgroundColor: Colors.white,
            defaultTextColor: Colors.black,
          ),
          ButtonTextCategoriesWidget(
            text: 'Yeezy',
            defaultBackgroundColor: Colors.white,
            defaultTextColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
