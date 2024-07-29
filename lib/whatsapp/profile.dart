
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

class _WhatsappState extends State<Whatsapp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this,initialIndex: 0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          leading: Text("App"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: [
              Tab(text:"chats",),
              Tab(text:"chats",),
              Tab(text:"chats",)

            ],
          )
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Chat(),
          Call(),
          Update()

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {},
        backgroundColor: Colors.green,
        child: Icon(Icons.message_outlined,color: CupertinoColors.white,),),
    );
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
              Icon(Icons.qr_code_scanner_outlined,size: 40,),
              IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.camera,size: 40,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 40,))
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
              // leading: Icon(
              //   Icons.menu,
              //   color: Theme.of(context).primaryColor,
              // ),
              // primary: false,
              // title: TextField(
              //   decoration: InputDecoration(
              //     hintText: "Search",
              //     border: InputBorder.none,
              //     hintStyle: TextStyle(color: Colors.grey),
              //   ),
              // ),
              // actions: <Widget> [
              //   IconButton(
              //     icon: Icon(
              //       Icons.search,
              //       color: Theme.of(context).primaryColorDark,
              //     ),
              //     onPressed: () {},
              //   ),
              //   IconButton(
              //     icon: Icon(
              //       Icons.notifications,
              //       color: Theme.of(context).primaryColor,
              //     ),
              //     onPressed: () {},
              //   ),
              // ],
              bottom: TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text:"chats",),
                  Tab(text:"chats",),
                  Tab(text:"chats",)

                ],
              )
          ),
        ),
      ],
    );
  }
}
