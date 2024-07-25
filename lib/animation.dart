import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:InkWell(
        onTap: (){
          Navigator.pop(context);
        },
        child: Column(
          children: [
            Lottie.asset("assets/animation/Animation - 1719635738934.json"),
          ],
        ),
      )
    );
  }
}
