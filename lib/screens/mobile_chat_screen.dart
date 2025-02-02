import 'package:flutter/material.dart';
import 'package:whatsppclone/colors.dart';
import 'package:whatsppclone/info.dart';
import 'package:whatsppclone/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.video_call)
          ),

          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.call)
          ),

          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_vert)
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatList()),
          TextField(
            decoration: InputDecoration(
              fillColor: mobileChatBoxColor,
              filled: true,
              prefixIcon: const Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.emoji_emotions_outlined, color: Colors.grey,),

              ),
              suffixIcon: const Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.mic, color: Colors.grey,),
                  Icon(Icons.attach_file, color: Colors.grey,),
                  Icon(Icons.camera, color: Colors.grey,),
                ],
              ),
              ),
              hintText: 'Type a message',
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none
            )
          ),
          contentPadding: EdgeInsets.all(10)
            ),
          )
        ],
      ),
    );
  }
}