import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:phone/bottom%20demo.dart';
// import 'package:phone/lodin%202.dart';

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Center(
                  child: Container(
                    height: 300,
                    width: 140,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("pictures/flower.jpg"))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("pictures/flower.jpg"))
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("pictures/flower.jpg"))
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("pictures/flower.jpg"))
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("pictures/flower.jpg"))
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            width: 350,
            decoration:BoxDecoration(color: Colors.black26,
              image: DecorationImage(
                  image: AssetImage("pictures/tree.jpg"),
                  fit: BoxFit.fill
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("pictures/eagle.jpg"),),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20), // Set border radius to 20
                        borderSide: BorderSide(
                          color: Colors.red, // Set border color to red
                          width: 200.0, // Set border width
                        ),
                      ),
                    ),
                  ),
                ),


                ElevatedButton(onPressed: (){
                  // Navigator.push(context,
                  //     MaterialPageRoute(
                  //       builder:(context)=>bottomdemo(),));
                }, child: Padding(
                  padding: const EdgeInsets.all(20.5),
                  child: Text("lohin"),
                ))








              ],
            ),
          ),



        ],
      ),
    );
  }
}
