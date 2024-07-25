import 'package:batch_bhutan2/data/Doctors_List.dart';
import 'package:flutter/material.dart';
class Pageview extends StatelessWidget {
  const Pageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
        centerTitle: true,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
          Positioned(
            right: -50,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  ),
              ],
            ),
          ),
          Positioned(
            right: -100,
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(100),
                  ),
                  ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
