import 'package:flutter/material.dart';
import 'package:flutter_demo_travel_app/constant.dart';
import 'package:flutter_demo_travel_app/models/category.dart';
import 'package:flutter_demo_travel_app/models/location.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/categories.dart';
import 'components/locations.dart';
import 'components/popular_category.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        shadowColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 60,
        toolbarHeight: 60,
        leading: Container(
          margin: const EdgeInsets.only(left: defaultPadding),
          child: CircleAvatar(
            child: Image.asset('assets/images/avatar.png'),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset('assets/icons/menu.svg'))
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: defaultPadding * 4),
                  child: Text(
                    'Discover The World With Us',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                        color: colorBlueDark,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'PTSerif'),
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                const SearchForm(),
                const SizedBox(height: defaultPadding / 2),
                 const Locations(),
                const PopularCategory()
              ],
            ),
          )
        ],
      ),
    );
  }
}

