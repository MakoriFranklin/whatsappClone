import 'package:flutter/material.dart';
import 'package:whatsppclone/colors.dart';
import 'package:whatsppclone/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, 
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            elevation: 0,
            title: const Text(
              'Whatsapp clone',
              style: TextStyle(
                color: Colors.grey, 
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: (){}, 
               icon: Icon(Icons.search)
              ),

               IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.more_vert_outlined)
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Chats',),
                Tab(text: 'Status',),
                Tab(text: 'Calls',),
              ],
              indicatorColor: Colors.green,
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          body: const ContactList(),
          floatingActionButton: FloatingActionButton(
            onPressed: (){},
            backgroundColor: tabColor,
            child: const Icon(Icons.comment, color: Colors.white,),
          ),
        ),
      );
  }
}