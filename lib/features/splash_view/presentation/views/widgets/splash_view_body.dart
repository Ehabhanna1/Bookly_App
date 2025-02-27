import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home_view/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash_view/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlidingAnimation();
    super.initState();

    navigateToHomeView();
  }



 
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        const SizedBox(height: 4),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

// init sliding animation
 void initSlidingAnimation() {
     animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    
    slidingAnimation =Tween<Offset>(begin: const Offset(0,2), end: Offset.zero).animate(animationController);
       
      
    animationController.forward();
  }
 // navigate to home view
    void navigateToHomeView() {
     Future.delayed(const Duration(seconds: 3), () {
      Get.to(()=>const HomeView(),transition: Transition.fade ,duration: kTranstionDuration);
    });
  }



}

