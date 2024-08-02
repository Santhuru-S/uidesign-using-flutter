import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uidesign/whatsapp/states.dart';
import 'call.dart';
import 'firstpage.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green.shade700,
           title: Text('ChatApp',
           style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
            actions: [
              Icon(CupertinoIcons.search,color: Colors.white,),
              SizedBox(width: 10,),
              Icon(Icons.more_vert_outlined,color: Colors.white,),
            ],
            bottom: TabBar(
              labelColor: Colors.white,
             // unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
              controller: _tabController,
              tabs: [
                Tab(
                  text: "chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                )
              ],
            )),
        body: TabBarView(
          controller: _tabController,
          children: [Chat(), Call(), Update()],
        ),
        floatingActionButton: _tabController.index == 0
            ? FloatingActionButton(
          backgroundColor: Colors.green,
                onPressed: () {},
                child: Icon(Icons.message,color: Colors.white,),
              )
            : _tabController.index == 1
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 45,width: 45,
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.edit),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(CupertinoIcons.camera),
                      )
                    ],
                  )
                : FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add_call),
                  ));
  }

  Widget _appBar(BuildContext context, double height) {
    return Stack(
      children: [
        Container(
          // Background
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Text(
                  "app",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              Spacer(),
              Icon(
                Icons.qr_code_scanner_outlined,
                size: 40,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.camera,
                    size: 40,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                    size: 40,
                  ))
            ],
          ),
          color: Colors.greenAccent,
          height: height + 75,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          // To take AppBar Size only
          top: 110.0,
          left: 20.0,
          right: 20.0,
          child: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(
                    text: "call",
                  ),
                  Tab(
                    text: "chats",
                  ),
                  Tab(
                    icon: Icon(Icons.call),
                  )
                ],
              )),
        ),
      ],
    );
  }
}
