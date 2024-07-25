import 'package:batch_bhutan2/data/Hospital_list.dart';
import 'package:batch_bhutan2/googlefronts.dart';
import 'package:batch_bhutan2/pages/Hospital_details.dart';
import 'package:flutter/material.dart';
class HospitalHome extends StatelessWidget {
  HospitalHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xffcaf0f8),
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
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: Alass.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>HospitalDetails(hospital: Alass[index],)));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 252,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white),
                          color: primaryColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 250,
                                width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(image: AssetImage("${Alass[index].image}"),fit: BoxFit.cover)
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("${Alass[index].name}",style: myStyal(22,Colors.white,FontWeight.bold),maxLines: 2,),
                                      SizedBox(height: 20,),
                                      Text("${Alass[index].location}",style: myStyal(18,Colors.white),),
                                      SizedBox(height: 10,),
                                      Text("${Alass[index].rating}")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
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