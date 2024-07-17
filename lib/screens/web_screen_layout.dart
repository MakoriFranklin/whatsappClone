import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsppclone/colors.dart';
import 'package:whatsppclone/widgets/chat_list.dart';
import 'package:whatsppclone/widgets/contact_list.dart';
import 'package:whatsppclone/widgets/web_chat_appbar.dart';
import 'package:whatsppclone/widgets/web_profile_bar.dart';
import 'package:whatsppclone/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebProfileBar(),
                  WebSearchBar(),
                  ContactList()
                ],
              ),
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width*0.75,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/backgroundImage.png',
                  ),
                  fit: BoxFit.cover
              ),
            ),
            child: Column(
              children: [
                WebChatAppbar(),
                Expanded(child: ChatList()),

                Container(
                  height: MediaQuery.of(context).size.height*0.07,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      )
                    ),
                    color: chatBarMessage,
                    
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                        )
                      ),

                       IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.attach_file,
                        color: Colors.grey,
                        )
                      ),

                      Expanded(
                        child: Padding(padding: EdgeInsets.only(
                          left: 10,
                          right: 15
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: searchBarColor,
                            filled: true,
                            hintText: 'Type a message',
                            border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none
                            )
                          ),
                          contentPadding: const EdgeInsets.only(left: 20)
                          ),
                        ),
                        )
                      ),
                      IconButton(
                        onPressed: (){}, 
                        icon: Icon(Icons.send,
                        color: Colors.grey,
                        )
                      ),
                    ],
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}