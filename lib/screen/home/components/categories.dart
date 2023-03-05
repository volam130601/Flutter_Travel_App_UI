import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/category.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int checkIndex = 1;

  void changeCategory(int categoryID) {
    setState(() {
      checkIndex = categoryID;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        demo_categories.length,
        (index) => CategoryTextBtn(
          title: demo_categories[index].title,
          isActive:
              (checkIndex == demo_categories[index].categoryID) ? true : false,
          press: () {
            changeCategory(demo_categories[index].categoryID);
          },
        ),
      )),
    );
  }
}

class CategoryTextBtn extends StatelessWidget {
  const CategoryTextBtn({
    super.key,
    required this.title,
    required this.isActive,
    required this.press,
  });

  final String title;
  final bool isActive;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: press,
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2)),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: isActive ? colorOrange : colorGrey,
            ),
      ),
    );
  }
}
