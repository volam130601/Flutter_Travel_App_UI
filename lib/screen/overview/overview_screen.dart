import 'package:flutter/material.dart';
import 'package:flutter_demo_travel_app/constant.dart';
import 'package:flutter_demo_travel_app/models/location.dart';
import 'package:flutter_demo_travel_app/screen/home/components/categories.dart';
import 'package:flutter_demo_travel_app/screen/home/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key, required this.location}) : super(key: key);

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 1.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(defaultBorderRadius * 3),
                  bottomRight: Radius.circular(defaultBorderRadius * 3),
                ),
                image: DecorationImage(
                    image: AssetImage(location.image), fit: BoxFit.fill),
              ),
              child: buildDetailOnImage(context, location),
            ),
            const SizedBox(height: defaultPadding),
            buildViewTitle(context),
            Row(children: [
              CategoryTextBtn(title: 'Overview', isActive: true, press: () {}),
              CategoryTextBtn(title: 'Review', isActive: false, press: () {}),
            ]),
            Text(
              'Travel locations are chosen based on interests, budget, safety, and accessibility. Understanding local culture is crucial for responsible travel.',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: colorGrey),
            ),
            const SizedBox(height: defaultPadding * 1.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150,
                  height: 60,
                  child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(),
                          side: BorderSide(color: colorOrange)),
                      child: Text(
                        '\$${location.price}',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: colorOrange),
                      )),
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(), backgroundColor: colorOrange),
                      child: Text(
                        'Buy Now',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium
                            ?.copyWith(color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Row buildViewTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              location.title,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: colorBlueDark,
                    fontFamily: 'PTSerif',
                    fontWeight: FontWeight.w500,
                  ),
            ),
            Row(
                children: List.generate(
              5,
              (index) => Icon(
                Icons.star,
                color:
                    index >= location.starAmount ? Colors.grey : Colors.yellow,
                // size: 16,
              ),
            ))
          ],
        ),
        Container(
          decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
                color: Colors.black12, blurRadius: 10, offset: Offset(0, 5))
          ]),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.favorite,
              color: location.isFavorite ? Colors.redAccent : Colors.grey,
            ),
          ),
        )
      ],
    );
  }

  Stack buildDetailOnImage(BuildContext context, Location location) {
    return Stack(
      children: [
        Positioned(
          top: 35,
          left: 15,
          right: 15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 35,
                height: 35,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  elevation: 0,
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 32,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        Positioned(
            left: 18,
            bottom: 20,
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/location.svg',
                  width: 22,
                ),
                const SizedBox(width: defaultPadding / 4),
                Text(
                  location.location,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w100,
                      color: Colors.white),
                )
              ],
            )),
        Positioned(
            right: 15,
            bottom: 20,
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(defaultBorderRadius)),
                    border: Border.all(width: 5, color: colorGrey),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_1.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(defaultBorderRadius)),
                    border: Border.all(width: 5, color: colorGrey),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_2.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: defaultPadding / 2),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: const BorderRadius.all(
                        Radius.circular(defaultBorderRadius)),
                    border: Border.all(width: 5, color: colorGrey),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/img_3.png'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
