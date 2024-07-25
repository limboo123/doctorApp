import 'package:batch_bhutan2/data/Pharmacy_List.dart';
import 'package:batch_bhutan2/googlefronts.dart';
import 'package:flutter/material.dart';
class CapitalHome extends StatelessWidget {
  List medicines;
  CapitalHome({super.key,required this.medicines});

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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: allmedicine.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                       color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white)
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 100,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.white),
                              image:DecorationImage(image: AssetImage("${medicines[index].image}"),fit: BoxFit.cover),
                            ),
                          ),
                          Container(
                            child:
                             Column(
                               children: [
                                 Text("${medicines[index].name}",style: myStyal(20,Colors.black,FontWeight.bold),),
                                 Text("${medicines[index].price}",style: myStyal(20,Colors.black,FontWeight.bold),),
                                 Text("${medicines[index].rating}",style: myStyal(20,Colors.black,FontWeight.bold),),
                               ],
                             ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
         ],
        )
      ),
    );
  }
}
