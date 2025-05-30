import 'package:flutter/material.dart';

import 'custom_best_seller.dart';

class CutsomListViewBestSeller extends StatelessWidget {
  const CutsomListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,itemBuilder: (context, index) {
      return CustomBestSeller();
    },);
  }
}

