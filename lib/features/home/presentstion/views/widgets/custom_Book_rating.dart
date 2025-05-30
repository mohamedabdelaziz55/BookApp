import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F)),
        const SizedBox(width: 10,),
        Text("4.8", style: Styles.textStyle16),
        const SizedBox(width: 10,),
        Text("(2330)", style: Styles.textStyle14),
      ],
    );
  }
}