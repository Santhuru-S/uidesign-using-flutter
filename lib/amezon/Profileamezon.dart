import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


import 'api.dart';
import 'app.dart';


class amezon extends StatefulWidget {
  const amezon({super.key});

  @override
  State<amezon> createState() => _amezonState();
}

class _amezonState extends State<amezon> {
  List image = [
    'pictures/amezon.jpg',
    'pictures/fashion.jpg',
    'pictures/beauty.jpg',
    'pictures/elec.jpg',
    'pictures/book.jpg',
    'pictures/phone.jpg',
  ];

  List photo = [
    'pictures/headphone.jpg',
    'pictures/camera.jpg',
    'pictures/laptop.jpg',
    'pictures/watch.jpg',
  ];

  List gallery = [
    'pictures/boywatch.jpg',
    'pictures/giwatch.jpg',
    'pictures/lpcover.jpg',
    'pictures/scanner.jpg',
    'pictures/pcover.jpg',
  ];

  List text = [
    'prime',
    'fashion',
    'beauty',
    'electranic',
    'book',
    'phone',
  ];
  int _index = 0;

  final lages = [
    app(),
    product(),
  ];

  void tap(index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextFormField(
            cursorColor: Colors.red,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.camera),
              ),
              prefixIcon: Icon(Icons.search),
              hintText: ("Search Amezon.in"),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mic,
                size: 35,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.blue,
              child: Row(
                children: [
                  Icon(Icons.location_on_outlined),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'data',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (BuildContext con, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 75,
                            width: 60,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                    image[index],
                                  )),
                            ),
                          ),
                        ),
                        Text(text[index]),
                      ],
                    );
                  },
                ),
              ),
            ),
            CarouselSlider.builder(
                options: CarouselOptions(
                  height: 250,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 1),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  //  onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
                itemCount: photo.length,
                itemBuilder:
                    (BuildContext context, int index, int pageViewIndex) {
                  return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 450,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(photo[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ));
                  // return Container(
                  //   height: 100,
                  //   width: 300,
                  //
                  //   child: Text(itemIndex.toString()),
                  //   decoration: BoxDecoration(image: DecorationImage(
                  //     image:AssetImage( photo[index])
                  //   )),
                  // );
                }),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Up to 70% off| Clothing & beaty essentials from emerging brands',
                style: TextStyle(
                    color: Colors.deepPurple[300],
                    fontSize: 25,
                    fontWeight: FontWeight.w100),
              ),
            ),
            Container(
              height: 400,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // number of items in each row
                    mainAxisSpacing: 20, // spacing between rows
                    crossAxisSpacing: 20, // spacing between columns
                  ),
                  itemCount: image.length,
                  itemBuilder: (BuildContext con, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(image[index]),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Text(
                'Up to 70% off| Clothing & beaty essentials from emerging brands'),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: gallery.length,
                  itemBuilder: (BuildContext con, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 70,
                        width: 150,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              image: AssetImage(gallery[index]),
                              fit: BoxFit.fill,
                            )),
                      ),
                    );
                  }),
            ),
            Image(image: AssetImage('pictures/book.jpg')),
            Container(
              height: 400,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // number of items in each row
                    mainAxisSpacing: 20, // spacing between rows
                    crossAxisSpacing: 20, // spacing between columns
                  ),
                  itemCount: 9,
                  itemBuilder: (BuildContext con, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('pictures/headphone.jpg'),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
      //     BottomNavigationBarItem(icon: Icon(Icons.menu),label: "Menu"),
      //    // BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
      //   ],
      //   currentIndex: _index,
      //   onTap: tap,
      // ) ,
    );
  }
}
