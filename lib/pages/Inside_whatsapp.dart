import 'package:batch_bhutan2/data/Whatsapp_list.dart';
import 'package:batch_bhutan2/model/Whatsapp_model.dart';
import 'package:batch_bhutan2/pages/Home_whatsapp.dart';
import 'package:flutter/material.dart';
class InsideWhatsapp extends StatelessWidget {
  Whatsapp whatsapp;
  InsideWhatsapp({super.key,required this.whatsapp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.3,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage("${whatsapp.image}"),fit: BoxFit.cover),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                  child: Text("${whatsapp.title}",style: TextStyle(fontSize: 20),maxLines: 1,)),
            ],
          ),
          Row(
            children: [
              Icon(Icons.video_call),
              Icon(Icons.call),
              Icon(Icons.more_vert_outlined),
            ],
          )
        ],
      ),
      backgroundColor:Color(0xffcdb4db),
    );
  }
}
