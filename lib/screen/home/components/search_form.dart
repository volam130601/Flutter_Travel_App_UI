import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Material(
        elevation: 30.0,
        shadowColor: Colors.white30,
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Search something",
              filled: true,
              fillColor: Colors.white,
              border: outlineInputBorder,
              enabledBorder: outlineInputBorder,
              focusedBorder: outlineInputBorder,
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colorOrange,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                                Radius.circular(defaultBorderRadius)))),
                    child: SvgPicture.asset('assets/icons/search.svg'),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}

var outlineInputBorder = const OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius * 1.5)),
  borderSide: BorderSide.none,
);
