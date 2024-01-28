import 'package:flutter/material.dart';

import 'Calls.dart';
import 'Updates.dart';
import 'community.dart';
import 'Chat.dart';

class CloneWhatsapp extends StatefulWidget {
  const CloneWhatsapp({super.key});

  @override
  State<CloneWhatsapp> createState() => _CloneWhatsappState();
}

class _CloneWhatsappState extends State<CloneWhatsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('WhatsApp',style: TextStyle(color: Colors.white,fontSize: 22),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.camera_alt_outlined,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.more_vert,color: Colors.white,),
            ),
          ],
          bottom: TabBar(
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize:TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.white70,
              labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
              indicatorPadding: EdgeInsets.only(left: 8),

              tabs: [
                Tab(icon: Icon(Icons.people_alt_rounded)
                ),
                Tab(text: 'Chats',),
                Tab(text: 'Updates'),
                Tab(text: 'Calls'),

              ]
          ),
        ),

        body: TabBarView(
            children: [
              CommunityPage(),
              ChatsClone(),
              UpdatesClones(),
              CallsClone(),
            ]
        ),
      ),
    );
  }
}
