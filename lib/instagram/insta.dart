import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



class insta extends StatefulWidget {
  const insta({super.key});

  @override
  State<insta> createState() => _instaState();
}

class _instaState extends State<insta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          title: Text(
            'gt software academy',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
        body: SafeArea(
            child: DefaultTabController(
                length: 3,
                child: NestedScrollView(
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return [
                        SliverAppBar(
                          expandedHeight: 480,
                          flexibleSpace: FlexibleSpaceBar(
                            background: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 90,
                                          width: 90,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'pictures/tree.jpg'),
                                              fit: BoxFit.fill,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(50),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: (8),
                                                  color: Colors.amber)
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 70,
                                        width: 100,
                                        child: Column(
                                          children: [
                                            TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                '100',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                            ),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'posts',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 70,
                                        width: 100,
                                        child: Column(
                                          children: [
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  '100',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'flowers',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 70,
                                        width: 100,
                                        child: Column(
                                          children: [
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  '100',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                            TextButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'following',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // SizedBox(height: 8,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'GT',
                                            style: TextStyle(
                                                fontSize: 15, color: Colors.blue),
                                          ),
                                          TextSpan(
                                              text: 'Softwere Academy️🌹',
                                              style: TextStyle(fontSize: 15)),
                                        ],
                                      )),
                                ),
                                // SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Learn Full Stack',
                                            style: TextStyle(
                                                fontSize: 15, color: Colors.blue),
                                          ),
                                          TextSpan(
                                              text: 'and',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black)),
                                          TextSpan(
                                              text:
                                              'Mobile Applications in Pratical',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black)),
                                        ],
                                      )),
                                ),
                                // SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'fan of',
                                            style: TextStyle(
                                                fontSize: 15, color: Colors.blue),
                                          ),
                                          TextSpan(
                                              text: '"Super Singer"❤💖',
                                              style: TextStyle(fontSize: 15)),
                                        ],
                                      )),
                                ),
                                // SizedBox(height: 6,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'GT',
                                            style: TextStyle(
                                                fontSize: 15, color: Colors.blue),
                                          ),
                                          TextSpan(
                                              text: 'Softwere Academy',
                                              style: TextStyle(fontSize: 15)),
                                        ],
                                      )),
                                ),
                                // SizedBox(height: 5,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '🔗',
                                            style: TextStyle(
                                                fontSize: 15, color: Colors.blue),
                                          ),
                                          TextSpan(
                                              text: 'click.tracktit24.com',
                                              style: TextStyle(fontSize: 15)),
                                        ],
                                      )),
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 40, width: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                          BorderRadius.circular(25)),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'following',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      // child:
                                      // SizedBox(height: 40,width:140,
                                      //   child: ElevatedButton(onPressed: (){},child: ListTile(
                                      //     title: Text('following'),
                                      //     trailing: Icon(Icons.arrow_drop_down_outlined),
                                      //   ),),
                                      // ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          color: Colors.black26,
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                'message',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                    FontWeight.w400),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    // Container(height: 50,width: 100,
                                    //   child: Row(children: [
                                    //     Container(child: TextButton(onPressed: (){},child: Text('following'),),
                                    //     ),
                                    //   ],),
                                    // ),
                                    Container(
                                      height: 50, width: 100,
                                      child: Row(
                                        children: [
                                          Container(
                                            child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.person_add_rounded,
                                                  size: 30,
                                                  color: Colors.blue,
                                                )),
                                          )
                                        ],
                                      ),
                                      // child:
                                      // SizedBox(height: 40,width:140,
                                      //   child: ElevatedButton(onPressed: (){},child: ListTile(
                                      //     title: Text('following'),
                                      //     trailing: Icon(Icons.arrow_drop_down_outlined),
                                      //   ),),
                                      // ),
                                    ),
                                    // SizedBox(height: 40,width:130,
                                    //   child: ElevatedButton(
                                    //     onPressed: (){},child: Text('following'),),
                                    // ),
                                    // SizedBox(height: 50,width:150,
                                    //   child: ElevatedButton(onPressed: (){},child: ListTile(
                                    //     title: Text('contact'),
                                    //   ),),
                                    // ),
                                    // SizedBox(height: 50,width:50,
                                    //   child: ElevatedButton(onPressed: (){},child: ListTile(
                                    //     trailing: Icon(Icons.arrow_drop_down_outlined),
                                    //   ),),
                                    // )
                                  ],
                                ),
                                Container(
                                  height: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 10,
                                      itemBuilder: (BuildContext con, index) {
                                        return Column(
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 75,
                                                width: 60,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            'pictures/vijay2.jpeg'),
                                                        fit: BoxFit.fill),
                                                    shape: BoxShape.circle),
                                              ),
                                            ),
                                            ElevatedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'following',
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                ))
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ];
                    },
                    body: SingleChildScrollView(
                      child: Column(children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.blue[100]),
                          child: TabBar(
                            indicatorColor: Colors.blue,
                            indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            labelColor: Colors.black,
                            dividerColor: Colors.black,
                            // ignore: prefer_const_literals_to_create_immutables
                            tabs: [
                              Tab(
                                icon: Icon(
                                  Icons.add_box,
                                  color: Colors.black,
                                ),
                              ),
                              Tab(
                                icon: Icon(
                                  Icons.video_call,
                                  color: Colors.black,
                                ),
                              ),
                              Tab(
                                icon: Icon(
                                  Icons.portrait_sharp,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 400,
                              child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3,
                                    // number of items in each row
                                    mainAxisSpacing: 0,
                                    // spacing between rows
                                    crossAxisSpacing:
                                    0, // spacing between columns
                                  ),
                                  itemCount: 15,
                                  itemBuilder: (BuildContext con, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 100,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image:
                                            AssetImage('pictures/rose.jpg'),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ]),
                    )))));
  }
}
