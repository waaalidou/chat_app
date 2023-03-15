import 'package:flutter/material.dart';


class ChatScreen extends StatelessWidget {
 const  ChatScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "All Chats",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          flexibleSpace: const SizedBox(height: 30),
          actions: const [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          bottom: const TabBar(
            tabs: [
              Text(
                "Messages",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 13),
                child: Text(
                  "Calls",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ),
        body:  const TabBarView(
          children: [
             Center(
              child: Text("No Chats"),
            ),
             Center(
              child: Text("No Calls"),
            ),
          ],
        ),
      ),
    );
  }
}
