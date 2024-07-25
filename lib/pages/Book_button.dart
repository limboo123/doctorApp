import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class BookButton extends StatelessWidget {
  const BookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          Navigator.pop(context);
      },
        child: Center(child: Lottie.asset("assets/animation/book.json")),
      ),
    );
  }
}
