import 'dart:convert';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;





class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();

}

class _productState extends State<product> {

  // Future<List<product>> fetch()async {
  //   var res = await http.get(Uri.parse("https://fakestoreapi.com/products"));
  //   var data = jsonDecode(res.body);
  // }
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[100],
          title: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              cursorColor: Colors.red,
              decoration: InputDecoration(filled: true,fillColor: Colors.white,
                suffixIcon: IconButton(onPressed: (){},icon: Icon(Icons.camera),),
                prefixIcon: Icon(Icons.search),
                hintText: ("Search Amezon.in"),
                border: OutlineInputBorder(),
              ),

            ),
          ),
          actions: [
            IconButton(onPressed:(){}, icon:Icon(Icons.mic,size: 35,)),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,width: 50,
                      decoration: BoxDecoration(shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("pictures/rose.jpg"),)
                      ),
                    ),
                    Column(children: [
                      TextButton(onPressed: (){},
                          child:Text('PALAY',style: TextStyle(fontSize: 25),)),
                      TextButton(onPressed: (){},
                        child:Text('visit the store',style: TextStyle(fontSize:20)),
                      )],),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: RatingBar.builder(
                        initialRating: 1,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 6.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.blue,
                        ),
                        itemSize: 25,
                        onRatingUpdate: (rating) {
                          print(rating);
                        },),
                    ),
                  ], ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('PALAY fashion PUWidth Belt,Women mental buckle design '),
                  ),
                ),
                Stack(
                    children: [
                      Container(height: 450,width: double.infinity,
                        color: Colors.blue,
                        child:
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (BuildContext con,index)
                            {
                              return  Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 150,
                                  width: 400,

                                  decoration: BoxDecoration(shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage('pictures/lpcover.jpg'),fit: BoxFit.fill,
                                      )),
                                ),
                              );
                            }
                        ),
                      ),

                      Positioned(
                          right: 10,
                          top: 10,
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.share))
                      ),
                      Positioned(
                          left: 10,
                          bottom: 10,
                          child:IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline),)
                      ),
                    ]
                ),
                DotsIndicator(
                  dotsCount: 7,
                  position: 0,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.blue[50],
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext con,index)
                      {
                        return  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: 80,

                            decoration: BoxDecoration(shape: BoxShape.rectangle,
                                image: DecorationImage(
                                  image: AssetImage('pictures/lpcover.jpg'),fit: BoxFit.fill,
                                )),
                          ),
                        );
                      }
                  ),

                ),
                Divider(indent: 9,),
                Padding(
                  padding: const EdgeInsets.only(right:220),
                  child: RichText(
                      text:TextSpan(
                          text: 'limited time deal',style: TextStyle(backgroundColor: Colors.blue,
                          fontSize: 20,color: Colors.white)
                      ) ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:280),
                  child:
                  RichText(text: TextSpan(children: [
                    TextSpan(text: '-75%',style: TextStyle(fontSize: 25,color: Colors.blue),),
                    TextSpan(text: '₹209',style: TextStyle(fontSize: 25)),
                  ],

                  ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 280.0),
                  child: RichText(text: TextSpan(children: [
                    TextSpan(text: 'MRP:',style: TextStyle(fontSize: 25,color: Colors.black)) ,
                    TextSpan(text: '999',style: TextStyle(fontSize: 25,color: Colors.black,
                        decoration: TextDecoration.lineThrough),)
                  ])),
                ),


                Padding(
                  padding: const EdgeInsets.only(right:100.0),
                  child: RichText(text: TextSpan(children: [
                    TextSpan(text: 'emi starts at72',style: TextStyle(fontSize: 20,color: Colors.blue),),
                    TextSpan(text: 'EMI options',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800)),
                  ],
                  ),),
                ),
                RichText(text: TextSpan(children:[
                  TextSpan(text: 'offer',style: TextStyle(color: Colors.deepPurple,
                      fontSize: 35))
                ])),
                Divider(indent: 9,),
                RichText(text: TextSpan(children:[
                  TextSpan(text: 'Total:₹9995',style: TextStyle(color: Colors.black,
                      fontSize: 38))
                ])),
                RichText(text: TextSpan(children: [
                  TextSpan(text: 'FREE delivery',style: TextStyle(fontSize: 15,color: Colors.blue),),
                  TextSpan(text: 'Tuesday,4, 3June',style: TextStyle(fontSize: 15)),


                ],
                )),
                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Container(height: 50,width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),color: Colors.white24,
                        boxShadow: [BoxShadow(blurRadius: (2),color: Colors.black12)]
                    ),
                    child: Center(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2<String>(
                          isExpanded: true,
                          hint: Text(
                            'Quality',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.orange,//Theme.of(context).hintColor,,
                            ),
                          ),
                          items: items
                              .map((String item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ))
                              .toList(),
                          value: selectedValue,
                          onChanged: (String? value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          buttonStyleData: const ButtonStyleData(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            height: 40,
                            width: 140,
                          ),
                          menuItemStyleData: const MenuItemStyleData(
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(height: 50,width: 350,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),
                    color: Colors.yellowAccent,),
                  child: TextButton(onPressed: (){},child: Text('Add to cart',
                    style: TextStyle(fontSize: 30,color: Colors.black),),),
                ),
                SizedBox(height: 9,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(height: 50,width: 350,
                    decoration: BoxDecoration(color: Colors.orange,
                        borderRadius: BorderRadius.circular(35)),
                    child: TextButton(onPressed: (){},child: Text('Buy Now',
                      style: TextStyle(fontSize: 25,color: Colors.black),),),
                  ),
                ),
                ListTile(
                  leading: IconButton(onPressed: (){},icon: Icon(Icons.location_on_outlined),),
                  title:  Text('Secure transaction'),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(children: [
                    Text('Ships from',style: TextStyle(fontSize: 20),),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Text('Amezon',style: TextStyle(fontSize: 25,fontWeight:FontWeight.w600 ),),
                    )
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(children: [
                    Text('Sold by',style: TextStyle(fontSize: 20),),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Text('Cambium Retail',style: TextStyle(fontSize: 25,fontWeight:FontWeight.w600 ),),
                    )
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(children: [
                    Text('packaging',style: TextStyle(fontSize: 20),),
                    Padding(
                      padding: const EdgeInsets.only(left: 100.0),
                      child: Text('Ships in product packaging',style: TextStyle(fontSize: 15,fontWeight:FontWeight.w600,
                          color: Colors.blue),),

                    ),
                    Divider(indent: 10,)
                  ],),
                )
              ]
          ),


        ));
  }
}
