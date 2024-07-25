import 'package:flutter/material.dart';
class divider extends StatelessWidget {
  const divider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Divider(
        thickness: 1,
        color: Colors.black,
      ),
    );
  }
}
