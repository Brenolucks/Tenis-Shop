import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:math' as math;

import 'package:tenis_shop/Widgets/welcome_bar_widget.dart';
import 'package:tenis_shop/Widgets/home_banner_widget.dart';
import 'package:tenis_shop/Widgets/categories_widget.dart';
import 'package:tenis_shop/Widgets/carousel_categories_widget.dart';
import 'package:tenis_shop/Widgets/card_widget.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            WelcomeBarWidget(),
            SizedBox(
              height: 30,
            ),
            HomeBannerWidget(),
            SizedBox(
              height: 30,
            ),
            CategoriesWidget(),
            CarouselCategoriesWidget(),
            Expanded(
              child: GridView.count(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                crossAxisSpacing: 25,
                mainAxisSpacing: 30,
                crossAxisCount: 2,
                childAspectRatio: 2 / 3.5,
                scrollDirection: Axis.vertical,
                children: [
                  CardWidget(
                    categoryShoes: 'Unissex Shoes',
                    imageSrc: 'assets/images/balenciaga_shoes.jpg',
                    colorOptionOne: Colors.black,
                    colorOptionTwo: Colors.red,
                    colorOptionThree: Colors.lightGreenAccent,
                    nameShoes: 'Balenciaga Speed',
                    price: '\$435',
                  ),
                  CardWidget(
                    categoryShoes: 'Men\'s Shoes',
                    imageSrc: 'assets/images/nike_green_shoes.jpg',
                    colorOptionOne: Colors.green,
                    colorOptionTwo: Colors.black,
                    colorOptionThree: Colors.red,
                    nameShoes: 'Nike Dunk Low Spartan',
                    price: '\$370',
                  ),
                  CardWidget(
                    categoryShoes: 'Men\'s Shoes',
                    imageSrc: 'assets/images/yeezy_boost_350.png',
                    colorOptionOne: Colors.brown,
                    colorOptionTwo: Colors.black,
                    colorOptionThree: Colors.grey,
                    nameShoes: 'Yeezy Boost  350 V2 Bred',
                    price: '\$300',
                  ),
                  CardWidget(
                    categoryShoes: 'Men\'s Shoes',
                    imageSrc: 'assets/images/asics_japans_white.png',
                    colorOptionOne: Colors.green,
                    colorOptionTwo: Colors.black,
                    colorOptionThree: Colors.red,
                    nameShoes: 'Asics Japan S White',
                    price: '\$300',
                  ),
                  CardWidget(
                    categoryShoes: 'Men\'s Shoes',
                    imageSrc: 'assets/images/adidas_forum_mid.png',
                    colorOptionOne: Colors.green,
                    colorOptionTwo: Colors.black,
                    colorOptionThree: Colors.red,
                    nameShoes: 'Adidas Forum Mid',
                    price: '\$400',
                  ),
                  CardWidget(
                    categoryShoes: 'Men\'s Shoes',
                    imageSrc: 'assets/images/jordan_chicago_one.png',
                    colorOptionOne: Colors.green,
                    colorOptionTwo: Colors.black,
                    colorOptionThree: Colors.red,
                    nameShoes: 'Jordan Chicago 1 Retro High',
                    price: '\$500',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
