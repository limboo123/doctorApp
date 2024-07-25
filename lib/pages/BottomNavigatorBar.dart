import 'package:batch_bhutan2/data/Doctors_List.dart';
import 'package:batch_bhutan2/data/Hospital_list.dart';
import 'package:batch_bhutan2/data/Medicine_Store_List.dart';
import 'package:batch_bhutan2/model/Doctor_Model.dart';
import 'package:batch_bhutan2/pages/Docters%20detail.dart';
import 'package:batch_bhutan2/pages/Doctors_Home.dart';
import 'package:batch_bhutan2/pages/Hospital_details.dart';
import 'package:batch_bhutan2/pages/Hospital_home.dart';
import 'package:batch_bhutan2/pages/Medicine_Store.dart';
import 'package:batch_bhutan2/pages/Medicine_details.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class Bottomnavigatorbar extends StatefulWidget {
  const Bottomnavigatorbar({super.key});

  @override
  State<Bottomnavigatorbar> createState() => _BottomnavigatorbarState();
}

class _BottomnavigatorbarState extends State<Bottomnavigatorbar> {
  List list=[
    DoctorsHome(),
    DoctorsDetails(doctors: Class[0],),
    HospitalHome(),
    HospitalDetails(hospital: Alass[0],),
  ];

  //List< BottomNavigationBarItem> allitems=[
  List<Icon> allitems=[
    //BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
    //BottomNavigationBarItem(icon: Icon(Icons.category),label: "Details"),
    //BottomNavigationBarItem(icon: Icon(Icons.search),label: "Hospital"),
  Icon(Icons.home),
  Icon(Icons.category),
  Icon(Icons.search),
  ];

  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        //selectedItemColor: Colors.blue,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        //currentIndex: _currentIndex,
        onTap: (int index){
         _currentIndex=index;
         setState(() {

         });
        },
        items:allitems,
      ),
    );
  }
}
