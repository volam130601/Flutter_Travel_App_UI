import 'package:flutter/material.dart';
import 'package:flutter_demo_travel_app/constant.dart';
import 'package:flutter_demo_travel_app/screen/home/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colorBlue,
              Color(0x9EA679F5),
              colorBlueSky,
            ],
            stops: [0.1, 0.7, 1],
            begin: Alignment.topRight,
            end: Alignment.bottomCenter,
          ),
        ),
        child: const ContentLanding(),
      ),
    );
  }
}

class ContentLanding extends StatelessWidget {
  const ContentLanding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(
          defaultPadding, defaultPadding * 4, defaultPadding, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            'assets/icons/logo.svg',
            width: 150,
          ),
          const SizedBox(height: defaultPadding * 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ready To Explore The World!',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      color: Colors.white,
                      fontFamily: 'PTSerif',
                      fontWeight: FontWeight.w500)),
              const SizedBox(height: defaultPadding * 2),
              Text(
                "Travel made easy with our app.\nPlan your dream vacation today.",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.white),
              ),
              const SizedBox(height: defaultPadding * 2),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 3, vertical: defaultPadding),
                ),
                child: Text(
                  'Next',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          Expanded(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaultBorderRadius * 2),
                    topRight: Radius.circular(defaultBorderRadius * 2),
                  ),
                  image: DecorationImage(
                      image: AssetImage('assets/images/indonesia.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
        ],
      ),
    );
  }
}
