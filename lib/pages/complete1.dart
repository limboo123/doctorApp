import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pop(context);
        },
          child: Center(child: Lottie.asset("assets/animation/complete1"))),
    );
  }
}
