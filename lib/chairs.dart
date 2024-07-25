import 'package:flutter/material.dart';
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        actions: [
          Icon(Icons.delete),
          Icon(Icons.person),
        ],
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Discover product",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
                Icon(Icons.filter_list),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 39,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Center(child: Text("sofas",style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold),),),
                ),
                Container(
                  height: 39,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black
                  ),
                  child: Center(child: Text("Chairs",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                ),
                Container(
                  height: 39,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Center(child: Text("Tables",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
                ),
                Container(
                  height: 39,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey
                  ),
                  child: Center(child: Text("Kitchen",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHlGQxWcrp56LDpYzUHFkxT8TdQzAsLijzvA&s')),
                      ),
                    ),
                    Text("Soft Element Jack",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("\$57.00",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pinkAccent,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),

                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://img.freepik.com/premium-psd/chair-design-chair-with-wooden-legs-png-clipart-isolated-transparent-background_888962-85.jpg')),
                      ),
                    ),
                    Text("Leset Galaant",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("\$64.00",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD0__HihhkUV7SdUdqdZCbv4I7HFoyaqN3k3wjOEjHtbRa776C-2QgFe9h3pRQE0f3ee4&usqp=CAU')),
                      ),
                    ),
                    Text("Chester Chair",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("\$61.00",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blueAccent,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBfmCZW_eIq5EvvJo8JhvbAT-OiMRZ5hmIgx8NOe6VYICsSShd_6kzaLQX680djOVxm30&usqp=CAU')),
                      ),
                    ),
                    Text("Avrora Chair",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("\$47.00",style: TextStyle(color: Colors.black,fontSize: 18),),
                    Row(
                      children: [
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
