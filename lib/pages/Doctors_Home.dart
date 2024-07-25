
import 'package:batch_bhutan2/data/Medicine_Store_List.dart';
import 'package:batch_bhutan2/data/Doctors_List.dart';
import 'package:batch_bhutan2/googlefronts.dart';
import 'package:batch_bhutan2/pages/Covid_Home.dart';
import 'package:batch_bhutan2/pages/Docters%20detail.dart';
import 'package:batch_bhutan2/pages/Hospital_details.dart';
import 'package:batch_bhutan2/pages/Hospital_home.dart';
import 'package:batch_bhutan2/pages/Medicine_Store.dart';
import 'package:batch_bhutan2/pages/ambulance_page.dart';
import 'package:batch_bhutan2/pages/profile.dart';
import 'package:flutter/material.dart';
class DoctorsHome extends StatelessWidget {
  DoctorsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,size: 30,),
                    RichText(
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
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Profile()));
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: primaryColor),
                            image: DecorationImage(image: AssetImage("assets/images/girl.jpg"),fit: BoxFit.cover)
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height*0.28,
                        width: MediaQuery.of(context).size.width*0.5,
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                            image: DecorationImage(image: AssetImage("assets/images/doctors.jpg"),fit: BoxFit.cover)
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width*0.44,
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Stay Healthy!",style: myStyal(24,Colors.black,FontWeight.bold),),
                            Text("Stay Safe!",style: myStyal(20,Colors.black,FontWeight.bold),maxLines: 1,),
                            Text("We are here to help you 24/7 with the best treatment in the world",style: myStyal(16,Colors.black),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(Icons.video_call,size: 30,color: primaryColor,),
                                Text("Meet Online",style: myStyal(18,secondaryColor,FontWeight.bold),),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Services",style: myStyal(25,primaryColor,FontWeight.bold),),
                    Text("See All",style: myStyal(18,Colors.black),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CovidHome()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icons/virus.gif"),
                          Text("Covid-19",style: myStyal(16,Colors.black),),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>AmbulancePage()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icons/ambulance.gif"),
                          Text("Ambulance",style: myStyal(16,Colors.black),),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HospitalHome()));
                      },
                      child: Column(
                        children: [
                          Image.asset("assets/icons/hospital.gif"),
                          Text("Hospital",style: myStyal(16,Colors.black),),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> MedicenHome()));
                    },
                      child: Column(
                        children: [
                          Image.asset("assets/icons/medicine.gif"),
                          Text("Medicine",style: myStyal(16,Colors.black),),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Rated Doctors",style: myStyal(25,primaryColor,FontWeight.bold),),
                    Text("See All",style: myStyal(18,Colors.black),),
                  ],
                ),
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: Class.length,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 0.7,
                  ),
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>DoctorsDetails(doctors: Class[index],)));
                      },
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white),
                            color: Colors.greenAccent.withOpacity(0.2),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Column(
                              children: [
                                Hero(
                                  tag:"${Class[index].image}" ,
                                  child: CircleAvatar(
                                    maxRadius: 50,
                                    backgroundColor: Color(0xffc7f9cc),
                                    backgroundImage: AssetImage("${Class[index].image}"),
                                  ),
                                ),
                                Text("${Class[index].name}",style: myStyal(20,Colors.black,FontWeight.bold),textAlign: TextAlign.center,),
                                Text("${Class[index].speciality}",style: myStyal(16,Colors.black),),
                                Container(
                                  margin: EdgeInsets.all(25),
                                    height: 30,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.white),
                                        color: Colors.white
                                    ),
                                    child: Center(child: Text("${Class[index].rating}"))),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}