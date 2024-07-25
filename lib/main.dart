import 'package:batch_bhutan2/chairs.dart';
import 'package:batch_bhutan2/hey.dart';
import 'package:batch_bhutan2/music.dart';
import 'package:batch_bhutan2/pages/Alertdialog_practice.dart';
import 'package:batch_bhutan2/pages/Book_Page.dart';
import 'package:batch_bhutan2/pages/Book_button.dart';
import 'package:batch_bhutan2/pages/BottomNavigatorBar.dart';
import 'package:batch_bhutan2/pages/CarouselDemo.dart';
import 'package:batch_bhutan2/pages/Doctors_Home.dart';
import 'package:batch_bhutan2/pages/Gridview.dart';
import 'package:batch_bhutan2/pages/Home_whatsapp.dart';
import 'package:batch_bhutan2/pages/Hospital_home.dart';
import 'package:batch_bhutan2/pages/Inside_whatsapp.dart';
import 'package:batch_bhutan2/pages/Medicine_Store.dart';
import 'package:batch_bhutan2/pages/Medicine_details.dart';
import 'package:batch_bhutan2/pages/PageView.dart';
import 'package:batch_bhutan2/pages/Medicine.dart';
import 'package:batch_bhutan2/pages/Splash.dart';
import 'package:batch_bhutan2/pages/ambulance_page.dart';
import 'package:batch_bhutan2/pages/complete1.dart';
import 'package:batch_bhutan2/pages/dialog_method.dart';
import 'package:batch_bhutan2/pages/home_page.dart';
import 'package:batch_bhutan2/pages/home_page1.dart';
import 'package:batch_bhutan2/pages/product_details1.dart';
import 'package:batch_bhutan2/pages/profile.dart';
import 'package:batch_bhutan2/resume.dart';
import 'package:batch_bhutan2/animation.dart';
import 'package:batch_bhutan2/practice.button.dart';
import 'package:batch_bhutan2/sdiler.dart';
import 'package:batch_bhutan2/slider2.dart';
import 'package:batch_bhutan2/temperature.dart';
import 'package:flutter/material.dart';

import 'BaliExperience.dart';
import 'Slider.dart';
import 'chairpractice2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:SplashScreen(),
    );
  }
}

