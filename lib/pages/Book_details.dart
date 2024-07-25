import 'package:batch_bhutan2/data/book_list.dart';
import 'package:batch_bhutan2/googlefronts.dart';
import 'package:batch_bhutan2/model/book_model.dart';
import 'package:flutter/material.dart';
class BookDetails extends StatelessWidget {
  BookClass bookClass;
  BookDetails({super.key,required this.bookClass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${bookClass.bookName}",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
        centerTitle:true ,
      ),
      body: Column(

        children: [
          Container(
            margin: EdgeInsets.all(15),
            width: MediaQuery.of(context).size.width*0.9,
            child: Image.asset("${bookClass.bookimage}",fit: BoxFit.cover,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("${bookClass.author}",style: myStyal(15,Colors.black,),),
                  Text("${bookClass.genre}",style: myStyal(15,Colors.black,),),
                ],
              ),
              Column(
                children: [
                  Text("Views: ${bookClass.bookreviews}",style: myStyal(15,Colors.black,),),
                  Text("Nu. ${bookClass.bookprice}",style: myStyal(15,Colors.black,),),
                ],
              ),
              Column(
                children: [
                  Text("${bookClass.publishDate}",style: myStyal(15,Colors.black,),),
                  Text("${bookClass.bookrating}",style: myStyal(15,Colors.black,),),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("${bookClass.brief}",style: myStyal(20,Colors.purple,),),
          ),
        ],
      ),
    );
  }
}
