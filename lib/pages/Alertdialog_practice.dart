import 'package:batch_bhutan2/googlefronts.dart';
import 'package:flutter/material.dart';
class AlertdialogPractice extends StatelessWidget {
  const AlertdialogPractice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Show Dialogue"),
        centerTitle: true,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width*0.8,
                color: Colors.deepOrange,
                onPressed: (){
                   showDialog(context: context, builder: (context){
                     return AlertDialog(
                       title:Text("Do you want to quit?"),
                       actions: [
                         TextButton(onPressed: (){
                           Navigator.pop(context);
                         }, child: Text("Yes")),
                         TextButton(onPressed: (){}, child: Text("No"))
                       ],
                     );
                   });
                },
              child: Text("button",style: myStyal(20,Colors.white,FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
