import 'package:flutter/material.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0,left: 16,right: 16),
            child: Container(
              height: 260,
              child: Image.network('https://img.freepik.com/free-vector/business-team-putting-together-jigsaw-puzzle-isolated-flat-vector-illustration-cartoon-partners-working-connection-teamwork-partnership-cooperation-concept_74855-9814.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Stay connected with a community",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8,right: 16,left: 16),
            child: Center(
              child: Text("Communities bring members together in topic-based groups, and make it easy to get admin announcements.Any community you're added to will appear here.",
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,),
            ),
          )
        ],
      ),
    );
  }
}

