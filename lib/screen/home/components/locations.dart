import 'package:flutter/material.dart';
import 'package:flutter_demo_travel_app/screen/overview/overview_screen.dart';

import '../../../models/location.dart';
import 'categories.dart';
import 'location_card.dart';

class Locations extends StatelessWidget {
  const Locations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Categories(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_locations.length,
              (index) => LocationCard(
                title: demo_locations[index].title,
                image: demo_locations[index].image,
                location: demo_locations[index].location,
                price: demo_locations[index].price,
                isFavorite: demo_locations[index].isFavorite,
                starAmount: demo_locations[index].starAmount,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OverviewScreen(location: demo_locations[index])));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
