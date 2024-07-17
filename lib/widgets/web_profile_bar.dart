import 'package:flutter/material.dart';
import 'package:whatsppclone/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.077,
      // width: MediaQuery.of(context).size.height*0.25,
      padding:const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor
          )
        ),
        color: webAppBarColor
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://www.socialketchup.in/wp-content/uploads/2020/05/fi-vill-JOHN-DOE.jpg'),
          ),
          Row(
            children: [
              IconButton(
                onPressed: (){}, 
                icon: Icon(Icons.comment)
                ),

              IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.more_vert)
            )
            ],
          ),
          
          
        ],
      ),

    );
  }
}