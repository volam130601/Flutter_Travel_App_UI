import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({
    super.key,
    required this.title,
    required this.location,
    required this.price,
    required this.starAmount,
    required this.isFavorite,
    required this.press,
    required this.image,
  });

  final String title, location, image;
  final int price;
  final int starAmount;
  final bool isFavorite;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 200,
        height: 250,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, bottom: defaultPadding / 2),
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white24,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        )
                      ],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(defaultBorderRadius),
                      ),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                ),
                Positioned(
                  top: 12,
                  right: 20,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: const BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Text(
                      '\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white, fontSize: 10),
                    ),
                  ),
                ),
                Positioned(
                    left: 18,
                    bottom: 16,
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/location.svg',
                          width: 16,
                        ),
                        const SizedBox(width: defaultPadding / 4),
                        Text(
                          location,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w100,
                                  color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontFamily: 'PTSerif', fontSize: 12),
                      ),
                      Row(
                          children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color:
                              index >= starAmount ? Colors.grey : Colors.yellow,
                          size: 16,
                        ),
                      ))
                    ],
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 5))
                        ]),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite,
                        color: isFavorite ? Colors.redAccent : Colors.grey,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
