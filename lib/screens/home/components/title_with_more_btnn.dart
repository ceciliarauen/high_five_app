import 'package:flutter/material.dart';
import 'package:high_five_app/values/colors_palette.dart';
import 'package:high_five_app/values/constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String title;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          CustomTitleWithUnderline(
            text: title,
          ),
          const Spacer(),
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: ColorsPalette.kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: Color.fromARGB(255, 11, 24, 19)),
            child: Text(
              "Ver mais",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: press,
          )
        ],
      ),
    );
  }
}

class CustomTitleWithUnderline extends StatelessWidget {
  const CustomTitleWithUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorsPalette.kPrimaryColor),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: ColorsPalette.kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
