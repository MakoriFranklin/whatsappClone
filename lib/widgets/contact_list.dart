import 'package:flutter/material.dart';
import 'package:whatsppclone/colors.dart';
import 'package:whatsppclone/info.dart';
import 'package:whatsppclone/screens/mobile_chat_screen.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: 
          ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const MobileChatScreen()));
                      },
                      child: ListTile(
                        title: Text(
                          info[index]['name'].toString(),
                           style: const TextStyle(
                              fontSize: 20
                            ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            info[index]['message'].toString(),
                            style: const TextStyle(
                              fontSize: 15
                            ),
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            info[index]['profilePic'].toString()
                          ),
                        ),
                        
                        trailing: Text(
                          info[index]['time'].toString(),
                          style: const TextStyle(
                            fontSize: 15, color: Colors.grey
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      color: dividerColor,
                      indent: 90,
                    )
                  ],
                );
              }
            ),
          
    );
  }
}