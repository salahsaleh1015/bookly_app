import 'package:bookly_app/constatnts.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animationTransition();
    transition();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Image.asset(AssetsData.logo),
        ),
        const SizedBox(
          height: 6,
        ),
        animatedText(),
      ],
    );
  }

  Widget animatedText() => AnimatedBuilder(
        animation: slidingAnimation,
        builder: (BuildContext context, Widget? child) => SlideTransition(
            position: slidingAnimation,
            child: const Text("Read Free Books",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white))),
      );

  void animationTransition() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation = Tween(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void transition() {
    Future.delayed(const Duration(seconds: 4), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kDurationTransition);
    });
  }
}
