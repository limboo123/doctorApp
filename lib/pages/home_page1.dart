import 'package:batch_bhutan2/data/product1.dart';
import 'package:batch_bhutan2/googlefronts.dart';
import 'package:batch_bhutan2/model/model1.dart';
import 'package:batch_bhutan2/pages/complete1.dart';
import 'package:batch_bhutan2/pages/product_details1.dart';
import 'package:flutter/material.dart';
class HomePage1 extends StatelessWidget {
  HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Amazon"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 180,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child:Column(
                      children: [
                      InkWell(
                        onTap:(){

                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=> ProductDetails1(model: allproducts[index])));
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 160,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(image: AssetImage("${allproducts[index].image}"),fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${allproducts[index].name}",style: myStyal(20,Colors.white,FontWeight.bold),),
                          ),
                        ),
                      ),
                      ],
                    )
                  );
                  }),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: allproducts.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 180,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 160,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                                image: DecorationImage(image: AssetImage("${allproducts[index].image}"),fit: BoxFit.cover),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${allproducts[index].name}",style: myStyal(20,Colors.black,FontWeight.bold),),
                                Text("Nu.${allproducts[index].price}",style: myStyal(20,Colors.black,FontWeight.bold),),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                    Text("${allproducts[index].rating}",style: myStyal(20,Colors.black,FontWeight.bold),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Views: ",style: myStyal(20,Colors.black),),
                                    Text("${allproducts[index].reviews}",style: myStyal(20,Colors.black,FontWeight.bold,),),
                                  ],
                                ),
                                InkWell(
                                  onTap:(){
                                    Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>Button()),);
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.black),
                                      color: Colors.yellow,
                                    ),
                                    child: Center(child: Text("Next",style: myStyal(18,Colors.black),)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
