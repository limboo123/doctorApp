import 'package:batch_bhutan2/googlefronts.dart';
import 'package:flutter/material.dart';
class PageGrid extends StatelessWidget {
  const PageGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice GridView",style: myStyal(25,Colors.black,FontWeight.bold),),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                    childAspectRatio: 0.9,
                ),
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.red,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
