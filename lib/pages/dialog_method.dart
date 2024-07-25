import 'package:batch_bhutan2/googlefronts.dart';
import 'package:flutter/material.dart';
class DialogButton extends StatelessWidget {
  const DialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button",style: myStyal(20,Colors.white,FontWeight.bold),),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MaterialButton(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),) ,
              minWidth: MediaQuery.of(context).size.width*0.8,
                color: Colors.purple,
                onPressed: (){},
              child: Text("Button 1",style: myStyal(20,Colors.white,FontWeight.bold),),
            ), MaterialButton(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),) ,
              minWidth: MediaQuery.of(context).size.width*0.8,
                color: Colors.purple,
                onPressed: (){},
              child: Text("Button 2",style: myStyal(20,Colors.white,FontWeight.bold),),
            ), MaterialButton(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),) ,
              minWidth: MediaQuery.of(context).size.width*0.8,
                color: Colors.purple,
                onPressed: (){},
              child: Text("Button 3",style: myStyal(20,Colors.white,FontWeight.bold),),
            ),

          ],
        ),
      ),
    );
  }
}
