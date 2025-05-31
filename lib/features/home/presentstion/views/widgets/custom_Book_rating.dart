import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment =MainAxisAlignment.start });
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment:mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, size: 17,color: Color(0xffFFDD4F)),
        const SizedBox(width: 10,),
        Text("4.8", style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(width: 10,),
        Opacity(
            opacity: .5,
            child: Text("(2330)", style: Styles.textStyle14)),
      ],
    );
  }
}