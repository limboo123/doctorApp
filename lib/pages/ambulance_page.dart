import 'package:batch_bhutan2/googlefronts.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class AmbulancePage extends StatelessWidget {
  const AmbulancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: RichText(
            text: TextSpan(
                style: myStyal(26,primaryColor,FontWeight.bold),
                children: [
                  TextSpan(
                    text: "Doc",
                  ),
                  TextSpan(
                      text: "Time",
                      style: myStyal(26,secondaryColor,FontWeight.bold)
                  ),
                  TextSpan(
                    text: "+",
                    style: myStyal(26,primaryColor,FontWeight.bold),
                  ),
                ]
            ),
          ),
        ),
      ),
        body:
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Center(child: Text("Ambulance",style: myStyal(35,primaryColor,FontWeight.bold),)),
                ),
                Column(
                  children: [
                    Lottie.asset("assets/animation/Animation - 1721187118835.json"),
                  ],
                ),
                Container(
                  height: 60,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primaryColor
                  ),
                  child: Center(child: Text("Call Now",style: myStyal(23,Colors.white,FontWeight.bold),)),
                )
              ],
            ),
    );
  }
}
