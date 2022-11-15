import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;

  Animation<double>? fadingAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 600));

    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          FadeTransition(
            opacity: fadingAnimation!,
            child: const Text(
              'Fruit Market',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 51,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff)),
            ),
          ),
          Image.asset('assets/images/splash_view_image.png')
        ],
      ),
    );
  }
}
