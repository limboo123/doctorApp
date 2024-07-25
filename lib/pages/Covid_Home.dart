import 'package:batch_bhutan2/data/Medicine_Store_List.dart';
import 'package:batch_bhutan2/googlefronts.dart';
import 'package:batch_bhutan2/model/Meciden_model.dart';
import 'package:flutter/material.dart';
class CovidHome extends StatelessWidget {
   const CovidHome({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.44,
                padding: EdgeInsets.all(6),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        border: Border.all(color: secondaryColor),
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("assets/images/covid.jpg")),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text("Covid-19",style: myStyal(30,secondaryColor,FontWeight.bold),),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Symptoms of a viral infection depend on where you're infected, but some common ones include: Flu-like symptoms: fever, head and body aches, fatigue. Upper respiratory symptoms: sore throat, cough, sneezing. Digestive symptoms: nausea, vomiting, diarrhea.",style: myStyal(16,Colors.black),),
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: primaryColor),
                  color: secondaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("Covid Case",style: myStyal(20,Colors.white,FontWeight.bold),),
                          Text("350k",style: myStyal(20,Colors.white,FontWeight.bold),),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Dead Case",style: myStyal(20,Colors.white,FontWeight.bold),),
                          Text("125k",style: myStyal(20,Colors.white,FontWeight.bold),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Prevention",style: myStyal(30,primaryColor,FontWeight.bold),),
                    Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        border: Border.all(color: secondaryColor),
                        shape: BoxShape.rectangle,
                        image: DecorationImage(image: AssetImage("assets/images/prevent.jpg"),fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      );
  }
}
