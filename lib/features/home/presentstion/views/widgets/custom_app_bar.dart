import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage(AssetsData.logo)),
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.magnifyingGlass,),
          ),
        ],
      ),
    );
  }
}
