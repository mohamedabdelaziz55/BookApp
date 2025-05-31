
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: SizedBox(
        height: h*.3,
        child: AspectRatio(
          aspectRatio: 2.7/4,
          child: Container(
            height: h * .28,
            width: w * .4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(w * .04),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(AssetsData.testImage),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Container(
                //   height:h * .05,
                //   width: w * .12,
                //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                //   child: ClipRRect(
                //     child: BackdropFilter(
                //       filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                //       child: Container(
                //         decoration: BoxDecoration(
                //           color: Colors.white.withValues(alpha: 0.2), // لون خفيف شفاف
                //           borderRadius: BorderRadius.circular(50),
                //         ),
                //         child: Icon(Icons.play_arrow_rounded),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
