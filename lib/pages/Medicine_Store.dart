import 'package:batch_bhutan2/data/Medicine_Store_List.dart';
import 'package:batch_bhutan2/data/Pharmacy_List.dart';
import 'package:batch_bhutan2/googlefronts.dart';
import 'package:batch_bhutan2/pages/Medicine_details.dart';
import 'package:batch_bhutan2/pages/Medicine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MedicenHome extends StatelessWidget {
   MedicenHome({super.key});

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
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: Shop.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>MedicineDetails(medicine: Shop[index],med: allmedicine[index],)));
                  },
                  child: Card(
                    margin: EdgeInsets.all(5),
                    elevation: 4,
                    child: Container(
                      height: 260,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                         border: Border.all(color: Colors.white),
                         color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 258,
                                width: MediaQuery.of(context).size.width*0.5,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.white),
                                  image: DecorationImage(image: AssetImage("${Shop[index].image}"),fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                width: MediaQuery.of(context).size.width*0.4,
                                child: Column(
                                  children: [
                                    Text("${Shop[index].name}",style: myStyal(22,Colors.black,FontWeight.bold),),
                                    SizedBox(height: 5,),
                                    Text("${Shop[index].location}",style: myStyal(20)),
                                    SizedBox(height: 8,),
                                    Text("${Shop[index].rating}",style: myStyal(20)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
                })

          ],
        ),
      ),
    );
  }
}
