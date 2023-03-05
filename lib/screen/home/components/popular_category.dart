import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';


class PopularCategory extends StatelessWidget {
  const PopularCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Popular category",
            style:
            Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorBlueDark,
            ),
          ),
        ),
        const SizedBox(height: defaultPadding / 2 + 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            PopularCategoryCard(
              icon: 'assets/icons/airplane.svg',
              categoryBgColor: colorOrange,
              isActive: true,
              press: () {},
            ),
            PopularCategoryCard(
              icon: 'assets/icons/hotel.svg',
              categoryBgColor: colorBlue,
              isActive: false,
              press: () {},
            ),
            PopularCategoryCard(
              icon: 'assets/icons/mountain.svg',
              categoryBgColor: colorCyan,
              isActive: false,
              press: () {},
            ),
            PopularCategoryCard(
              icon: 'assets/icons/photography.svg',
              categoryBgColor: colorPink,
              isActive: false,
              press: () {},
            ),
          ],
        )
      ],
    );
  }
}

class PopularCategoryCard extends StatelessWidget {
  const PopularCategoryCard({
    super.key,
    required this.icon,
    required this.categoryBgColor,
    required this.isActive,
    required this.press,
  });

  final String icon;
  final Color categoryBgColor;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: categoryBgColor,
        border: Border.all(
            width: 5,
            color: isActive ? const Color(0xFFFDF3E9) : Colors.transparent),
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultBorderRadius),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
          color: categoryBgColor,
          border: Border.all(color: Colors.transparent),
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}