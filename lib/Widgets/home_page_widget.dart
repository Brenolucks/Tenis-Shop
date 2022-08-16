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
                padding: const EdgeInsets.symmetric(horizontal: 35),
                crossAxisSpacing: 25,
                mainAxisSpacing: 30,
                crossAxisCount: 2,
                childAspectRatio: 2 / 3,
                scrollDirection: Axis.vertical,
                children: [
                  CardWidget(),
                  CardWidget(),
                  CardWidget(),
                  CardWidget(),
                  CardWidget(),
                  CardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
