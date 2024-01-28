import 'package:flutter/material.dart';

class CallsClone extends StatefulWidget {
  const CallsClone({super.key});

  @override
  State<CallsClone> createState() => _CallsCloneState();
}

class _CallsCloneState extends State<CallsClone> {
  List names =["Sam","Adam","John","Bosco","Carry","Danny","Alex","John","Lee"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(itemBuilder: (BuildContext,int index){
          return
            Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ListTile(

                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 22,
                    child: Icon(Icons.account_circle_rounded,color: Colors.white,),
                  ),
                  title: Text(names[index],style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                  subtitle: Row(
                    children: [
                      Icon(Icons.call_received,size: 18,color: Colors.green,),Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Text("Today, 11:33am",style: TextStyle(fontSize: 14),),),
                    ],
                  ),
                  trailing: Icon(Icons.call,color: Colors.teal,),
                )
            );
        },
          itemCount: names.length,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_call,color: Colors.white,),
          backgroundColor: Colors.teal,
          onPressed: () {
            setState(() {
            });
          },
        )
    );
  }
}
