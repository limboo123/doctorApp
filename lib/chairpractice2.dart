import 'package:flutter/material.dart';
class Chairpractice2 extends StatelessWidget {
  const Chairpractice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back),),
        actions: [
          Icon(Icons.favorite_border,size: 30,),
          SizedBox(width: 10,),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-psd/arm-chair-isolated-transparent-background_191095-12827.jpg",)),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:100 ,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 7),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage("https://img.freepik.com/free-psd/arm-chair-isolated-transparent-background_191095-12834.jpg?size=338&ext=jpg&ga=GA1.1.2116175301.1719187200&semt=ais_user",)),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://img.freepik.com/premium-psd/modern-luxury-blue-armchair-furniture-transparent-background_84443-5629.jpg",)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.star,size: 30,color: Colors.deepOrange,),
                Text('4.8',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold, fontSize: 20)),
                SizedBox(width: 10,),
                Container(
                  padding: EdgeInsets.all(2),
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("145 reviews",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Leset Galant',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height:20 ,
                      width: 20,
                      decoration: BoxDecoration(
                        // color: Colors.lightGreen,
                        border: Border.all(color: Colors.lightBlueAccent,width: 2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        height:20 ,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          border: Border.all(color: Colors.white,width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height:20 ,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ],
                ),
              ],

            ),
            Text('Seat And Back Solid Wood Upholested With PU Cushion.It is a fixed armrest with PU cushion.It is a tilting Mechanism.Powder Coated Metal Base With Adjustment LevelerFOOTREST - Solid Wood Upholested With PU Cushion & Aluminium Alloy Base With Adjustment Leveler'),
            SizedBox(height: 30,),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("\$ 64.00",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 25)),
                    ],
                  ),
                  Row(
                    children: [
                      MaterialButton(onPressed: (){},
                        minWidth: 200,
                        color: Colors.black,
                        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Text('Add to cart',style: TextStyle(color: Colors.white),),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
