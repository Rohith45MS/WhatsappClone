import 'package:flutter/material.dart';

class UpdatesClones extends StatefulWidget {
  const UpdatesClones({super.key});

  @override
  State<UpdatesClones> createState() => _UpdatesCloneState();
}

class _UpdatesCloneState extends State<UpdatesClones> {
  @override
  List name =["Sam","Adam","John","Bosco","Carry"];

  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ListTile(
                title: Text("Status",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.more_vert,color: Colors.grey,),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey,
              ),
              title: Text("My Status"),
              subtitle: Text("Tap to add Updates"),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text("Recent Updates",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 16),),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(itemBuilder: (BuildContext,int index){
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey,
                  ),
                  title: Text(name[index]),

                );
              },
                shrinkWrap: true,
                itemCount: name.length,
                scrollDirection: Axis.vertical,


              ),
            ),



          ],
        )
    );
  }
}
