import 'package:batch_bhutan2/chairs.dart';
import 'package:batch_bhutan2/data/Whatsapp_list.dart';
import 'package:batch_bhutan2/model/Whatsapp_model.dart';
import 'package:batch_bhutan2/pages/Inside_whatsapp.dart';
import 'package:flutter/material.dart';
class whatsapps extends StatelessWidget {
  whatsapps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp",style: TextStyle(fontSize: 30,color: Colors.green,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        actions: [
          Icon(Icons.camera_alt_outlined),
          Icon(Icons.search),
          Icon(Icons.more_vert_outlined),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 11,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>InsideWhatsapp(whatsapp: App[index],)),);
                    },
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 300,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage("${App[index].image}"),fit: BoxFit.cover),
                              color: Colors.white,
                            ),
                          ),
                          title: Text("${App[index].title}",style: TextStyle(fontSize: 20,color: Colors.black),),
                          subtitle: Text("${App[index].subtitle}",style: TextStyle(fontSize: 15,color: Colors.black),),
                          trailing: Text("${App[index].date}",style: TextStyle(fontSize: 15,color: Colors.black),),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.black,
                        )
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
