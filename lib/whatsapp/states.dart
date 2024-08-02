import 'package:flutter/material.dart';

import 'class.dart';


class Update extends StatefulWidget {
  const Update({super.key});

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: calldata.length,
          itemBuilder: (BuildContext context,int index){
          return Column(
            children: [
              Divider(height: 0.2,),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(calldata[index].pic),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(calldata[index].name,
                    style: TextStyle(
                      fontSize: 12,fontWeight: FontWeight.bold
                    ),),
                    Icon(index%2==0?Icons.call:Icons.videocam,
                    color: Theme.of(context).primaryColor,)
                  ],
                ),
                subtitle: Text(
                  calldata[index].time,
                  style: TextStyle(color: Colors.grey,fontSize: 12),
                ),
              )
            ],
          );
          })
    );
  }
}
