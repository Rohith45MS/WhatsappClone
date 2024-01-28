import 'package:flutter/material.dart';

class ChatsClone extends StatefulWidget {
  const ChatsClone({super.key});

  @override
  State<ChatsClone> createState() => _ChatsCloneState();
}

class _ChatsCloneState extends State<ChatsClone> {
  List names =["Sam","Adam","John","Bosco","Carry"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView.builder(itemBuilder: (BuildContext,int index)
        {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 22,
              child: Icon(Icons.account_circle_rounded,color: Colors.white,),
            ),
            title: Text(names[index],style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
            subtitle: Text("it's ok",style: TextStyle(fontSize: 14),),
            trailing: Text("10:45",style: TextStyle(fontSize: 12)),
          );
        },
          itemCount: names.length,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message,color: Colors.white,),
          backgroundColor: Colors.teal,
          onPressed: () {
            setState(() {
            });
          },
        )
    );
  }
}
