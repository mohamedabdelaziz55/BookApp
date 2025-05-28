import 'package:book_app/core/utils/assets.dart';
import 'package:book_app/features/home/presentstion/views/home_view.dart';
import 'package:book_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constents.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sildingAnimation;

  @override
  void initState() {
    super.initState();
    iniSilldungAnimations();
    navToHome();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SizedBox(
            height: h * .16,
            width: w * .8,
            child: Image.asset(AssetsData.logo, fit: BoxFit.fill),
          ),
        ),
        const SizedBox(height: 25),
        SildingText(sildingAnimation: sildingAnimation),
      ],
    );
  }

  void navToHome() {
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(const HomeView(),transition: Transition.fade, duration: kTranstionDuration);
    });
  }
  void iniSilldungAnimations() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    sildingAnimation = Tween<Offset>(
      end: Offset.zero,
      begin: const Offset(0, 2),
    ).animate(animationController);
    animationController.forward();
  }
}
