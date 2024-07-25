import 'package:batch_bhutan2/data/book_list.dart';
import 'package:batch_bhutan2/data/product1.dart';
import 'package:batch_bhutan2/model/book_model.dart';
import 'package:batch_bhutan2/model/book_model.dart';
import 'package:batch_bhutan2/model/book_model.dart';
import 'package:batch_bhutan2/model/book_model.dart';
import 'package:batch_bhutan2/pages/Book_button.dart';
import 'package:batch_bhutan2/pages/Book_details.dart';
import 'package:batch_bhutan2/pages/complete1.dart';
import 'package:flutter/material.dart';
class BookPage extends StatelessWidget {
  BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BookStore"),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 5,
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>BookDetails(bookClass:allbooks[index])));
                    },
                    child: Container(
                      margin: EdgeInsets.all(10),
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage("${allbooks[index].bookimage}"),fit: BoxFit.cover),
                        color: Colors.blue,
                      ),
                    ),
                  );
                  },
              ),
            ),
            ListView.builder(
              itemCount: allbooks.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              //scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 250,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(image: AssetImage("${allbooks[index].bookimage}"),fit: BoxFit.cover),
                              color: Colors.white,
                            ),
                          ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${allbooks[index].bookName}",style: TextStyle(fontSize: 20,color: Colors.black),),
                                    Text("${allbooks[index].bookprice}",style: TextStyle(fontSize: 20,color: Colors.black),),
                                    Text("${allbooks[index].bookrating}",style: TextStyle(fontSize: 20,color: Colors.black),),
                                    Row(
                                      children: [
                                        Text("Views:",style: TextStyle(fontSize: 20,color: Colors.black),),
                                        Text("${allbooks[index].bookreviews}",style: TextStyle(fontSize: 20,color: Colors.black),),
                                      ],
                                    ),
                                    InkWell(
                                      onTap:(){
                                        Navigator.of(context).push(MaterialPageRoute(builder:(builder)=>BookButton()),);
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 70,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.blue,
                                        ),
                                        child: Center(child: Text("Next",style: TextStyle(fontSize: 20,color: Colors.white),)),
                                      ),
                                      ),
                                  ],
                                ),
                              ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
