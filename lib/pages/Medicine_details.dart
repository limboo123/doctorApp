import 'package:batch_bhutan2/data/Medicine_Store_List.dart';
import 'package:batch_bhutan2/googlefronts.dart';
import 'package:batch_bhutan2/model/Meciden_model.dart';
import 'package:batch_bhutan2/pages/Medicine.dart';
import 'package:flutter/material.dart';
class MedicineDetails extends StatelessWidget {
  Medicine medicine;
  List med;
  MedicineDetails({super.key,required this.medicine,required this.med});

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
        child: InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>CapitalHome(medicines: med,)));
          },
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    //margin: EdgeInsets.all(10),
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white),
                      image: DecorationImage(image: AssetImage("${medicine.image}"),fit: BoxFit.cover),
                      color: Colors.blue,
                    ),
                  ),
                ),
                Text("${medicine.name}",style: myStyal(20,Colors.black,FontWeight.bold),),
                Row(
                  children: [
                    Icon(Icons.location_pin),
                    Text("${medicine.location}",style: myStyal(20,Colors.black),),
                  ],
                ),
                Text("${medicine.rating}",style: myStyal(20,Colors.black,FontWeight.bold),),
                Row(
                  children: [
                    Icon(Icons.call_end_sharp),
                    Text("${medicine.number}",style: myStyal(20,Colors.black),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${medicine.brief}",style: myStyal(20,Colors.black,),),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: secondaryColor,
                    ),
                    child: Center(child: Text("View Medicine",style: myStyal(25,Colors.white,FontWeight.bold),)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
