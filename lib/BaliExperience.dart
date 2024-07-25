import 'package:flutter/material.dart';
class Place extends StatelessWidget {
  const Place({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Bali Experince",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black),),
        actions: [
          Text("Edit",style: TextStyle(fontSize: 18),),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                  image: DecorationImage(image: NetworkImage('https://media1.thrillophilia.com/filestore/1dfu2c1et4f11ltf92fjbrwedl37_1558952635_kelingking-beach.jpg?w=305&h=230&dpr'),fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.all(4),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child:
                              Icon(Icons.favorite,color: Colors.red,),
                            ),
                            SizedBox(height: 60,),
                            Container(
                              margin: EdgeInsets.all(6),
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Epic Trip*Bali Indonesia',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                        Row(
                                          children: [
                                            Icon(Icons.star,size: 18,),
                                            Text('4.1(12k)'),
                                          ],
                                        )
                                      ],
                                    ),
                                    Text("Best Place Ball",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Adventure from Ubud to Nuse Penide"),
                                        Text('\$700 per day'),
                                      ],
                                    ),
                                      ],
                                    ),

                                ),
                              ),
                          ],
                    ),
                ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                  image: DecorationImage(image: NetworkImage('https://imageio.forbes.com/specials-images/imageserve/675172642/pura-ulun-danu-bratan-temple-in-Bali-/960x0.jpg?format=jpg&width=960'),fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(6),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child:
                      Icon(Icons.favorite,color: Colors.red,),
                    ),
                    SizedBox(height: 60,),
                    Container(
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Unknow Village in Ball',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    Icon(Icons.star,size: 18,),
                                    Text('4.1(12k)'),
                                  ],
                                )
                              ],
                            ),
                            Text("Best Place Ball",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Adventure from Ubud to Nuse Penide"),
                                Text('\$700 per day'),
                              ],
                            ),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.all(6),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue,
                  image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4y-q-WmwGkavlbD2TxzIEsSRffs1nFECpKw&s'),fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(4),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child:
                      Icon(Icons.favorite,color: Colors.red,),
                    ),
                    SizedBox(height: 60,),
                    Container(
                      margin: EdgeInsets.all(6),
                      height: 80,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Discover Hidden Gem Ball',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    Icon(Icons.star,size: 18,),
                                    Text('4.1(12k)'),
                                  ],
                                )
                              ],
                            ),
                            Text("Best Place Ball",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Adventure from Ubud to Nuse Penide"),
                                Text('\$700 per day'),
                              ],
                            ),
                          ],
                        ),

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
  }
}
