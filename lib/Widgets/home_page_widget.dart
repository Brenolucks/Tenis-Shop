import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenis_shop/Widgets/carousel_categories_widget.dart';
import 'package:tenis_shop/Widgets/categories_widget.dart';

import 'dart:math' as math;

import 'package:tenis_shop/Widgets/welcome_bar_widget.dart';
import 'package:tenis_shop/Widgets/home_banner_widget.dart';
import 'package:tenis_shop/Widgets/categories_widget.dart';
import 'package:tenis_shop/Widgets/carousel_categories_widget.dart';

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
        color: Colors.grey[100],
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
          ],
        ),
      ),
    );
  }
}
