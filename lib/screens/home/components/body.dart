import 'package:flutter/material.dart';
import 'package:high_five_app/screens/home/components/header_with_search.dart';
import 'package:high_five_app/screens/home/components/recomends_clothes.dart';
import 'package:high_five_app/screens/home/components/recomends_clothes_male.dart';
import 'package:high_five_app/values/constants.dart';

import 'title_with_more_btnn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Para Elas",
            press: () {},
          ),
          const RecomendsClothes(),
          TitleWithMoreBtn(
            title: "Para Eles",
            press: () {},
          ),
          const RecomendsClothesMale(),
        ],
      ),
    );
  }
}
