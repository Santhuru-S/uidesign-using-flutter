import 'package:flutter/material.dart';
import 'package:uidesign/whatsapp/class.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatdata.length,
          itemBuilder: (BuildContext context,int index){
          return Column(
            children: [
              Divider(height: 0.2,),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(chatdata[index].pic),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(chatdata[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Text(chatdata[index].time,
                    style: TextStyle(
                      fontSize: 12,color: Colors.grey
                    ),)
                  ],
                ),
                subtitle: Text(chatdata[index].msg ),
              ),

            ],
          );
          })
    );
  }
}
