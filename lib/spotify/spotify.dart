import 'package:flutter/material.dart';

class spotify extends StatefulWidget {
  const spotify({super.key});

  @override
  State<spotify> createState() => _spotifyState();
}

class _spotifyState extends State<spotify> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled)
            {
              return[
                SliverAppBar(
                  leading: Icon(Icons.arrow_back,color: Colors.white,),
                  pinned: true,
                  expandedHeight: 500,
                  backgroundColor: Colors.black,
                  flexibleSpace:
                  Container(
                    decoration: BoxDecoration(
                      gradient:  LinearGradient (
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.green,
                          Colors.yellowAccent,
                        ],
                      ),),
                    child: Center(child: FlexibleSpaceBar(
                      centerTitle: false,
                      title: Column(crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('vijay hits',style: TextStyle(fontWeight: FontWeight.bold),)
                        ],),
                      background: Column( children: [
                        Row(
                          children: [
                            SizedBox( width: 300,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    filled: true,
                                    prefixIcon: Icon(Icons.search,color: Colors.black,),
                                    border: OutlineInputBorder(),
                                    hintText: "Find the playlist",
                                    hintStyle: TextStyle(color: Colors.brown),
                                  ),),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(onPressed: (){},
                                  child: Text('sort',
                                    style: TextStyle(
                                        color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),)),

                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:50.0),
                              child: Container(height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                  image:DecorationImage(
                                    image: AssetImage('pictures/vijay2.jpeg'),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 200),
                                  child: Center(child: Text("vijay hit music",
                                    style: TextStyle(color: Colors.yellowAccent,fontSize: 35),),),
                                ),

                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Padding(
                          padding: const EdgeInsets.only(right: 150.0),
                          child: RichText(text: TextSpan(children: [
                            TextSpan(text: 'silambarasan TR Aniruth',
                              style: TextStyle(fontSize: 15,color: Colors.green,
                                  decoration: TextDecoration.underline),),
                            TextSpan(text: 'and',style: TextStyle(fontSize: 15,),
                            ),
                            TextSpan(text: 'Dhanush',style: TextStyle(fontSize: 15,
                                decoration: TextDecoration.underline,color: Colors.green)),


                          ],
                          )),
                        ),
                        Row(children: [
                          IconButton(onPressed: (){}, icon:  Icon(Icons.music_note_outlined),),
                          Text('spotify',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 24),)
                        ],),

                      ],),
                    ),),

                  ),

                ),
              ];
            },
            body: SingleChildScrollView(
              child: Column(children: [
                Container(height:1000,width: 420,
                  child: Column(children: [
                    Row(children: [
                      IconButton(onPressed: (){}, icon:  Icon(Icons.add_circle_outline,size: 50,),),
                      IconButton(onPressed: (){}, icon:  Icon(Icons.arrow_circle_down_outlined,size: 50,),),
                      IconButton(onPressed: (){}, icon:  Icon(Icons.more_vert_outlined,size: 50,),),
                      SizedBox(width: 60,),
                      IconButton(onPressed: (){}, icon:  Icon(Icons.shuffle_outlined,size: 50,color: Colors.green,),),
                      IconButton(onPressed: (){},
                        icon:  Icon(Icons.play_circle_outline_rounded,color: Colors.green,size: 50,),),
                    ],),


                    Container(
                      height: 900,
                      child:
                      ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: 25,
                          itemBuilder: (BuildContext con,index)
                          {
                            return
                              ListTile(

                                leading: Container(
                                  height: 60,width: 60,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage('pictures/song.jpg'))
                                  ),
                                ),
                                title:
                                Container(
                                  child: Column(
                                    children: [
                                      Text('solumate',style: TextStyle(color: Colors.white,fontSize: 25),),
                                      Text('solumate',style: TextStyle(color: Colors.white,fontSize: 10),),
                                    ],
                                  ),
                                ),
                                trailing: Icon(Icons.more_vert,color: Colors.white,size: 25,),
                                // title:
                              );
                          }
                      ),
                    ),

                  ],),

                ),
              ],),
            ),),
        ),
      ),
    );
  }
}
