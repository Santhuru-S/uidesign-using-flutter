import 'package:flutter/material.dart';
import 'package:uidesign/whatsapp/class.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Row(
           children: [
             Expanded(child: ListTile(
               leading: Container(
                 width: 50,
                 child: Stack(
                   children: [
                     ClipOval(
                       child: Image.network("http://randomuser.me/api/portraits/men/1.jpg",
                       height: 50,
                       width: 50,),
                     ),
                     Align(
                       alignment: Alignment.bottomRight,
                       child: Container(
                         width: 20,
                         height: 20,
                         decoration: BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(20)
                         ),
                         child: Icon(Icons.add,color: Colors.white,size: 15,),
                       ),
                     )
                   ],
                 ),
               ),
               title: Text("My Status",style: TextStyle(fontWeight: FontWeight.bold),),
             ))
           ],
         ),
          SizedBox(
            height: 30,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              width: double.infinity,
              color: Colors.grey.shade200,
              child: Text("Recent Update",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600
              ),),
            ),
          ),
          Expanded(child: ListView.builder(
            itemCount: statusdata.length,
            itemBuilder: (BuildContext context, int index)=>Column(
              children: [
                Divider(height: 0.2,),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage:NetworkImage(statusdata[index].pic),

                  ),
                  title: Text(statusdata[index].name,style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold
                  ),),
                  subtitle: Text(statusdata[index].time,
                  style: TextStyle(
                    fontSize: 12,color: Colors.grey
                  ),),
                )
              ],
            ),

          ))
        ],
      ),
    );
  }
}
