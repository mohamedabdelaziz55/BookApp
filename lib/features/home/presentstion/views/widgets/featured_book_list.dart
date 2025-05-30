import 'package:flutter/material.dart';

import 'custom_list_view.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return CustomListViewItem();
        },
      ),
    );
  }
}
