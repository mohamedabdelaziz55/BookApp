import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBarBookDetalis extends StatelessWidget {
  const CustomAppBarBookDetalis({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      IconButton(onPressed: (){}, icon: Icon(Icons.close)),
        IconButton(
          onPressed: () {},
          icon: Icon(FontAwesomeIcons.shoppingCart,),
        ),
      ],
    );
  }
}
