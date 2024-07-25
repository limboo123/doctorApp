import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class Carouseldemo extends StatefulWidget {
  const Carouseldemo({super.key});

  @override
  State<Carouseldemo> createState() => _CarouseldemoState();
}

class _CarouseldemoState extends State<Carouseldemo> {
  final List<String> images=[
    "assets/images/doctor1.png",
    "assets/images/doctor2.png",
    "assets/images/doctor3.png",
    "assets/images/doctor4.png",
    "assets/images/doctor5.png",
  ];

  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
                items: images.map((e){
                  return Image.asset(e);
                }).toList(),
                options: CarouselOptions(
                  initialPage: 0,
                  autoPlay: true,
                  autoPlayInterval: Duration(milliseconds: 5),
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  onPageChanged: (value,_){
                    setState(() {
                      _currentIndex= value;
                    });
                  }
            )
            ),
            buildIndicator(),
          ],
        ),
      ),
    );
  }

  buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for(int i = 0; i < images.length; i++)
          Container(
            margin: EdgeInsets.all(5),
            height: 7,
            width: i == _currentIndex ? 35 : 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: i == _currentIndex ? Colors.black : Colors.grey,
            ),
          )
      ],
    );
  }
}

