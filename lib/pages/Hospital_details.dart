import 'package:batch_bhutan2/googlefronts.dart';
import 'package:batch_bhutan2/model/Hospital_model.dart';
import 'package:flutter/material.dart';

class HospitalDetails extends StatelessWidget {
  Hospital hospital;
  HospitalDetails({super.key,required this.hospital});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        physics: BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Text("${hospital.name}",style: myStyal(25,primaryColor,FontWeight.bold),),
              SizedBox(height: 10,),
              Card(
                  elevation: 8,
                  child: Image(image: AssetImage("${hospital.image}"),fit: BoxFit.cover,)),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("${hospital.brief}",style: myStyal(20),),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${hospital.rating}",style: myStyal(20),),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.call,size: 20,),
                        SizedBox(width: 10,),
                        Text("${hospital.number}",style: myStyal(20,Colors.black),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        Text("Location: ${hospital.location}",style: myStyal(20,Colors.black),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    SizedBox(height: 10,),
                    Text("Doctors: ${hospital.doctors}",style: myStyal(20,Colors.black),),
                    SizedBox(height: 10,),
                    Text("Patient: ${hospital.patient}",style: myStyal(20,Colors.black),),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}