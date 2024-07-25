import 'package:batch_bhutan2/googlefronts.dart';
import 'package:batch_bhutan2/model/model1.dart';
import 'package:flutter/material.dart';
class ProductDetails1 extends StatelessWidget {
  Model model;
  ProductDetails1({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${model.name}",style: myStyal(30,Colors.black,FontWeight.bold),),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width*0.9,
              child: Image.asset("${model.image}",fit: BoxFit.cover,)),
          SizedBox(height:30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Nu.${model.price}",style: myStyal(20,Colors.black,FontWeight.bold),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Icon(Icons.star,color: Colors.yellow,),
                  Text("${model.rating}",style: myStyal(20,Colors.black,FontWeight.bold),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Views: ",style: myStyal(20,Colors.black),),
                  Text("${model.reviews}",style: myStyal(20,Colors.black,FontWeight.bold,),),
                ],
              ),
            ],
          ),
          Container(
            height: 50,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow,
            ),
            child: Center(child: Text("Buy",style: myStyal(20,Colors.black,FontWeight.bold),)),
            ),
        ],
      ),
    );
  }
}
