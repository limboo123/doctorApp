import 'dart:async';

import 'package:batch_bhutan2/data/product_list.dart';
import 'package:batch_bhutan2/googlefronts.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Amazon'),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: ListView.builder(
                  //physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: allProducts.length,
                  shrinkWrap: true,
                  itemBuilder: (context,Index){
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 200,
                  width: 400,
                  color: Colors.white,
                  child: Column(
                    children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Image.asset("${allProducts[Index].imgUral}",fit: BoxFit.contain,),
                      ),
                          Column(
                            children: [
                              Text('${allProducts[Index].productName}'),
                              Text("${allProducts[Index].price}"),
                              Text('${allProducts[Index].rating}'),
                              Text("${allProducts[Index].reviews}"),
                            ],
                          ),
                    ],
                  ),
                  ],
                ),
                );
              }),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: allProducts.length,
                shrinkWrap: true,
                itemBuilder:(context,index){
                return  Container(
                  margin: EdgeInsets.all(10),
                  height: 250,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(20),
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: Image.asset("${allProducts[index].imgUral}",fit: BoxFit.contain,),
                          ),
                          Column(
                            children: [
                              Text('${allProducts[index].productName}'),
                              Text("${allProducts[index].price}"),
                              Text('${allProducts[index].rating}'),
                              Text("${allProducts[index].reviews}"),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: (){
                         // Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>//complete()));
                        },
                      ),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black),
                          color: Colors.yellow,
                        ),
                       child:Center(child: Text("Next",style: myStyal(18,Colors.black),),) ,
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
