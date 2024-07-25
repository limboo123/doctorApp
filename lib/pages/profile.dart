import 'package:batch_bhutan2/googlefronts.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

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
      body: SingleChildScrollView(
        child: Column(
            children: [
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(child: Text("Details of Patient",style: myStyal(30,primaryColor,FontWeight.bold),)),
              ),
              Center(
                child: Container(
                    margin: EdgeInsets.all(10),
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black),
                        image: DecorationImage(image: AssetImage("assets/images/girl.jpg"),fit: BoxFit.cover),
                        color: Colors.blue
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 400,
                width: 300,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name:",style: myStyal(20,primaryColor,FontWeight.bold,),),
                          Text("Age:",style: myStyal(20,primaryColor,FontWeight.bold),),
                          Text("Gender:",style: myStyal(20,primaryColor,FontWeight.bold),),
                          Text("Number:",style: myStyal(20,primaryColor,FontWeight.bold),),
                          Text("Location:",style: myStyal(20,primaryColor,FontWeight.bold),),
                          Text("Decease:",style: myStyal(20,primaryColor,FontWeight.bold),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Rosey Posey",style: myStyal(20,Colors.black),),
                          Text("21 years",style: myStyal(20,Colors.black),),
                          Text("Female",style: myStyal(20,Colors.black),),
                          Text("77223256",style: myStyal(20,Colors.black),),
                          Text("Thimphu,Bhutan",style: myStyal(20,Colors.black),),
                          Text("Heart Patient",style: myStyal(20,Colors.black),),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}
